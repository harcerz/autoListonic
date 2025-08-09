// Service Worker do obsługi API Listonic
const LISTONIC_API_BASE = 'https://api.listonic.com/api';

// Generuj UUID v4 dla Device ID
function generateUUID() {
  return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function(c) {
    const r = Math.random() * 16 | 0;
    const v = c === 'x' ? r : (r & 0x3 | 0x8);
    return v.toString(16);
  });
}

// Pobierz lub wygeneruj Device ID
async function getDeviceId() {
  return new Promise((resolve) => {
    chrome.storage.local.get(['deviceId'], (result) => {
      if (result.deviceId) {
        resolve(result.deviceId);
      } else {
        const newDeviceId = generateUUID();
        chrome.storage.local.set({ deviceId: newDeviceId }, () => {
          resolve(newDeviceId);
        });
      }
    });
  });
}

// Pobierz LCode (timestamp)
function getLCode() {
  return Date.now().toString();
}

// Pobierz X-Last-Version
async function getLastVersion() {
  return new Promise((resolve) => {
    chrome.storage.local.get(['lastVersion'], (result) => {
      if (result.lastVersion) {
        resolve(result.lastVersion);
      } else {
        const newVersion = {
          R: {
            I: Date.now(),
            SV: Date.now() - 10000,
            V: Date.now() + 100
          }
        };
        resolve(JSON.stringify(newVersion));
      }
    });
  });
}

// Funkcja do obsługi żądań API
async function makeListonicRequest(endpoint, method = 'GET', body = null) {
  const tokenData = await getStoredTokenData();
  const deviceId = await getDeviceId();
  const lcode = getLCode();
  const lastVersion = await getLastVersion();
  
  if (!tokenData || !tokenData.token) {
    throw new Error('Brak tokena autoryzacji');
  }
  
  const headers = {
    'Accept': 'application/json, text/plain, */*',
    'Authorization': `Bearer ${tokenData.token}`,
    'Content-Type': 'application/json',
    'Culture': 'pl',
    'DeviceId': deviceId,
    'LCode': lcode,
    'X-Last-Version': lastVersion
  };
  
  const options = {
    method: method,
    headers: headers,
    mode: 'cors',
    credentials: 'omit'
  };
  
  if (body) {
    options.body = JSON.stringify(body);
  }
  
  console.log('API Request:', `${LISTONIC_API_BASE}${endpoint}`, options);
  
  try {
    const response = await fetch(`${LISTONIC_API_BASE}${endpoint}`, options);
    
    if (!response.ok) {
      if (response.status === 401) {
        // Token wygasł - wyczyść dane logowania
        await chrome.storage.local.remove(['listonicToken', 'listonicUser']);
        throw new Error('Sesja wygasła. Zaloguj się ponownie.');
      }
      const errorText = await response.text();
      console.error('API Error:', errorText);
      throw new Error(`Błąd API: ${response.status}`);
    }
    
    const responseText = await response.text();
    return responseText ? JSON.parse(responseText) : {};
  } catch (error) {
    console.error('Request failed:', error);
    throw error;
  }
}

// Pobierz zapisane dane tokena
async function getStoredTokenData() {
  return new Promise((resolve) => {
    chrome.storage.local.get(['listonicToken'], (result) => {
      resolve({
        token: result.listonicToken || null
      });
    });
  });
}

// Pobierz zapisany token
async function getStoredToken() {
  return new Promise((resolve) => {
    chrome.storage.local.get(['listonicToken'], (result) => {
      resolve(result.listonicToken || null);
    });
  });
}

// Obsługa wiadomości z popup
chrome.runtime.onMessage.addListener((request, sender, sendResponse) => {
  // Zawsze sprawdź token przed wykonaniem akcji
  if (request.action !== 'login' && request.action !== 'logout') {
    ensureValidToken().then(() => {
      handleMessage(request, sendResponse);
    }).catch(error => {
      sendResponse({ success: false, error: error.message });
    });
    return true; // Asynchroniczna odpowiedź
  } else {
    handleMessage(request, sendResponse);
    return true; // Asynchroniczna odpowiedź
  }
});

// Obsłuż wiadomość
function handleMessage(request, sendResponse) {
  switch(request.action) {
    case 'login':
      handleLogin(request.credentials)
        .then(sendResponse)
        .catch(error => sendResponse({ success: false, error: error.message }));
      break;
      
    case 'getLists':
      getUserLists()
        .then(sendResponse)
        .catch(error => sendResponse({ success: false, error: error.message }));
      break;
      
    case 'createList':
      createNewList(request.name)
        .then(sendResponse)
        .catch(error => sendResponse({ success: false, error: error.message }));
      break;
      
    case 'addItems':
      addItemsToList(request.listId, request.items)
        .then(sendResponse)
        .catch(error => sendResponse({ success: false, error: error.message }));
      break;
      
    case 'logout':
      chrome.storage.local.remove([
        'listonicToken', 
        'listonicRefreshToken', 
        'listonicUser',
        'listonicTokenExpiry'
      ], () => {
        sendResponse({ success: true });
      });
      break;
      
    case 'refreshToken':
      refreshToken()
        .then(sendResponse)
        .catch(error => sendResponse({ success: false, error: error.message }));
      break;
      
    default:
      sendResponse({ success: false, error: 'Nieznana akcja' });
  }
}

// Logowanie do Listonic - używa loginextended endpoint
async function handleLogin(credentials) {
  try {
    // Listonic używa specjalnego endpointu loginextended
    const params = new URLSearchParams({
      provider: 'password',
      autoMerge: '1',
      autoDestruct: '1'
    });
    
    const response = await fetch(`${LISTONIC_API_BASE}/loginextended?${params}`, {
      method: 'POST',
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded',
        'Accept': 'application/json',
        'clientauthorization': 'Bearer bGlzdG9uaWN2MjpmamRmc29qOTg3NGpkZmhqa2gzNGpraGZmZGZmZg=='
      },
      body: new URLSearchParams({
        'username': credentials.email,
        'password': credentials.password,
        'client_id': 'listonicv2',
        'redirect_uri': 'https://app.listonic.com/',
        'client_secret': 'fjdfsoj9874jdfhjk'
      })
    });
    
    if (!response.ok) {
      const errorData = await response.text();
      console.error('Login error:', errorData);
      throw new Error('Nieprawidłowy email lub hasło');
    }
    
    const data = await response.json();
    console.log('Login response:', data);
    
    // Zapisz token i refresh token
    const token = data.access_token;
    
    if (!token) {
      throw new Error('Brak tokena w odpowiedzi');
    }
    
    // Oblicz czas wygaśnięcia tokena (domyślnie 24 godziny jeśli nie podano)
    const expiresIn = data.expires_in || 86400; // 86400 sekund = 24 godziny
    const tokenExpiry = Date.now() + (expiresIn * 1000);
    
    await chrome.storage.local.set({
      listonicToken: token,
      listonicRefreshToken: data.refresh_token || token, // Użyj tokena jako refresh jeśli nie ma osobnego
      listonicTokenExpiry: tokenExpiry
    });
    
    // Pobierz dane użytkownika
    let userInfo = await getUserInfo();
    
    // Jeśli nie udało się pobrać danych użytkownika, użyj emaila z logowania
    if (!userInfo) {
      userInfo = {
        email: credentials.email,
        username: credentials.email.split('@')[0]
      };
      await chrome.storage.local.set({
        listonicUser: userInfo
      });
    }
    
    return { success: true, user: userInfo };
  } catch (error) {
    console.error('Login error:', error);
    return { success: false, error: error.message };
  }
}

// Pobierz informacje o użytkowniku
async function getUserInfo() {
  try {
    const response = await makeListonicRequest('/users/me');
    
    const userData = {
      username: response.Username || response.username,
      email: response.Email || response.email,
      fullName: response.FullName || response.fullName,
      language: response.Language || response.language || 'pl'
    };
    
    await chrome.storage.local.set({
      listonicUser: userData
    });
    
    return userData;
  } catch (error) {
    console.error('Get user info error:', error);
    // Jeśli nie możemy pobrać danych użytkownika, użyj danych z logowania
    return null;
  }
}

// Pobierz listy użytkownika
async function getUserLists() {
  try {
    const params = new URLSearchParams({
      includeShares: 'true',
      archive: 'false',
      includeItems: 'false' // Nie potrzebujemy produktów przy pobieraniu list
    });
    
    const lists = await makeListonicRequest(`/lists?${params}`);
    console.log('Lists response:', lists);
    
    // Listonic zwraca tablicę list
    const listsArray = Array.isArray(lists) ? lists : [];
    
    return { 
      success: true, 
      lists: listsArray.map(list => ({
        id: list.Id,
        name: list.Name,
        owner: list.Owner,
        itemsCount: list.ItemsCount || 0,
        checkedItemsCount: list.CheckedItemsCount || 0
      }))
    };
  } catch (error) {
    console.error('Get lists error:', error);
    return { success: false, error: error.message };
  }
}

// Utwórz nową listę
async function createNewList(name) {
  try {
    const newList = await makeListonicRequest('/lists', 'POST', {
      Name: name
    });
    
    console.log('New list created:', newList);
    
    return { 
      success: true, 
      list: {
        id: newList.Id,
        name: newList.Name || name
      }
    };
  } catch (error) {
    console.error('Create list error:', error);
    return { success: false, error: error.message };
  }
}

// Dodaj produkty do listy
async function addItemsToList(listId, items) {
  try {
    console.log('Adding items to list:', listId, items);
    
    // Dodaj produkty pojedynczo zgodnie z API
    const requests = items.map(item => {
      // Format zgodny z dokumentacją API
      let itemData;
      
      if (typeof item === 'object' && item.name) {
        // Nowa struktura z ilościami
        itemData = {
          Name: item.name
        };
        
        // Dodaj ilość jeśli jest dostępna
        if (item.amount) {
          itemData.Amount = item.amount;
        }
        
        // Dodaj jednostkę jeśli jest dostępna
        if (item.unit) {
          itemData.Unit = item.unit;
        }
      } else {
        // Fallback dla prostego tekstu
        itemData = {
          Name: item
        };
      }
      
      return makeListonicRequest(`/lists/${listId}/items`, 'POST', itemData);
    });
    
    const results = await Promise.allSettled(requests);
    
    // Sprawdź wyniki
    const succeeded = results.filter(r => r.status === 'fulfilled').length;
    const failed = results.filter(r => r.status === 'rejected').length;
    
    if (failed > 0) {
      console.error('Some items failed:', results.filter(r => r.status === 'rejected'));
      if (succeeded === 0) {
        throw new Error('Nie udało się dodać żadnego produktu');
      }
    }
    
    return { 
      success: true, 
      added: succeeded,
      failed: failed,
      message: failed > 0 ? 
        `Dodano ${succeeded} z ${items.length} produktów` : 
        `Dodano wszystkie ${succeeded} produkty`
    };
  } catch (error) {
    console.error('Add items error:', error);
    return { success: false, error: error.message };
  }
}

// Sprawdź czy token jest ważny
async function isTokenValid() {
  return new Promise((resolve) => {
    chrome.storage.local.get(['listonicTokenExpiry'], (result) => {
      if (!result.listonicTokenExpiry) {
        resolve(false);
        return;
      }
      
      // Sprawdź czy token nie wygasł
      const isValid = Date.now() < result.listonicTokenExpiry;
      resolve(isValid);
    });
  });
}

// Odśwież token jeśli potrzeba
async function ensureValidToken() {
  const isValid = await isTokenValid();
  
  if (!isValid) {
    const refreshResult = await refreshToken();
    if (!refreshResult.success) {
      throw new Error('Sesja wygasła. Zaloguj się ponownie.');
    }
  }
}

// Odśwież token
async function refreshToken() {
  return new Promise((resolve) => {
    chrome.storage.local.get(['listonicRefreshToken'], async (result) => {
      if (!result.listonicRefreshToken) {
        resolve({ success: false, error: 'Brak refresh token' });
        return;
      }
      
      try {
        const params = new URLSearchParams({
          provider: 'refresh_token',
          autoMerge: '1',
          autoDestruct: '1'
        });
        
        const response = await fetch(`${LISTONIC_API_BASE}/loginextended?${params}`, {
          method: 'POST',
          headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
            'clientauthorization': 'Bearer bGlzdG9uaWN2MjpmamRmc29qOTg3NGpkZmhqa2gzNGpraGZmZGZmZg=='
          },
          body: new URLSearchParams({
            'refresh_token': result.listonicRefreshToken,
            'client_id': 'listonicv2',
            'client_secret': 'fjdfsoj9874jdfhjk'
          })
        });
        
        if (!response.ok) {
          throw new Error('Nie udało się odświeżyć tokena');
        }
        
        const data = await response.json();
        
        // Oblicz czas wygaśnięcia tokena (domyślnie 24 godziny jeśli nie podano)
        const expiresIn = data.expires_in || 86400; // 86400 sekund = 24 godziny
        const tokenExpiry = Date.now() + (expiresIn * 1000);
        
        await chrome.storage.local.set({
          listonicToken: data.access_token,
          listonicRefreshToken: data.refresh_token || data.access_token,
          listonicTokenExpiry: tokenExpiry
        });
        
        resolve({ success: true });
      } catch (error) {
        resolve({ success: false, error: error.message });
      }
    });
  });
}