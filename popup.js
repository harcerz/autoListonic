// Stan aplikacji
let state = {
  isLoggedIn: false,
  user: null,
  ingredients: null,
  lists: [],
  selectedList: null
};

// Elementy DOM
const screens = {
  login: document.getElementById('login-screen'),
  loading: document.getElementById('loading-screen'),
  noIngredients: document.getElementById('no-ingredients-screen'),
  ingredients: document.getElementById('ingredients-screen'),
  success: document.getElementById('success-screen')
};

// Inicjalizacja
document.addEventListener('DOMContentLoaded', async () => {
  // ZAWSZE sprawdź stan logowania przy otwarciu popup
  await checkLoginStatus();
  
  if (state.isLoggedIn) {
    // Użytkownik jest zalogowany - pokaż składniki
    await loadIngredients();
  } else {
    // Użytkownik nie jest zalogowany - pokaż ekran logowania
    showScreen('login');
  }
  
  setupEventListeners();
});

// Sprawdź status logowania
async function checkLoginStatus() {
  return new Promise((resolve) => {
    chrome.storage.local.get(['listonicToken', 'listonicUser', 'listonicTokenExpiry', 'listonicRefreshToken'], async (result) => {
      console.log('Checking login status:', {
        hasToken: !!result.listonicToken,
        hasUser: !!result.listonicUser,
        hasRefreshToken: !!result.listonicRefreshToken,
        tokenExpiry: result.listonicTokenExpiry,
        currentTime: Date.now()
      });
      
      // Sprawdź czy mamy token i dane użytkownika
      if (result.listonicToken && result.listonicUser) {
        // Sprawdź czy token nie wygasł
        if (!result.listonicTokenExpiry || Date.now() < result.listonicTokenExpiry) {
          // Token jest ważny
          state.isLoggedIn = true;
          state.user = result.listonicUser;
          updateUserInfo();
          console.log('User is logged in:', state.user);
        } else if (result.listonicRefreshToken) {
          // Token wygasł, ale mamy refresh token - spróbuj odświeżyć
          console.log('Token expired, attempting to refresh');
          try {
            const refreshResponse = await chrome.runtime.sendMessage({ action: 'refreshToken' });
            if (refreshResponse.success) {
              state.isLoggedIn = true;
              state.user = result.listonicUser;
              updateUserInfo();
              console.log('Token refreshed successfully');
            } else {
              console.log('Token refresh failed:', refreshResponse.error);
              chrome.storage.local.remove(['listonicToken', 'listonicUser', 'listonicTokenExpiry', 'listonicRefreshToken']);
              state.isLoggedIn = false;
            }
          } catch (error) {
            console.error('Error refreshing token:', error);
            state.isLoggedIn = false;
          }
        } else {
          // Token wygasł i nie ma refresh tokena
          console.log('Token expired, no refresh token available');
          chrome.storage.local.remove(['listonicToken', 'listonicUser', 'listonicTokenExpiry']);
          state.isLoggedIn = false;
        }
      } else {
        console.log('No token or user found');
        state.isLoggedIn = false;
      }
      resolve();
    });
  });
}

// Aktualizuj informacje o użytkowniku
function updateUserInfo() {
  const userInfo = document.getElementById('user-info');
  const userEmail = document.getElementById('user-email');
  
  if (state.isLoggedIn && state.user) {
    userEmail.textContent = state.user.email || state.user.Email || 'Zalogowany';
    userInfo.classList.remove('hidden');
  } else {
    userInfo.classList.add('hidden');
  }
}

// Pokaż ekran
function showScreen(screenName) {
  console.log('Showing screen:', screenName);
  Object.keys(screens).forEach(key => {
    screens[key].classList.add('hidden');
  });
  
  if (screens[screenName]) {
    screens[screenName].classList.remove('hidden');
  }
}

// Pokaż ekran braku składników z własną wiadomością
function showNoIngredientsWithMessage(message) {
  showScreen('noIngredients');
  const messageEl = document.querySelector('#no-ingredients-screen .message small');
  if (messageEl) {
    messageEl.textContent = message;
  }
}

// Załaduj składniki ze strony
async function loadIngredients() {
  showScreen('loading');
  
  try {
    const [tab] = await chrome.tabs.query({ active: true, currentWindow: true });
    console.log('Current tab:', tab.url, 'Tab ID:', tab.id);
    
    // Sprawdź czy URL jest obsługiwany
    const supportedDomains = [
      'kwestiasmaku.com',
      'aniagotuje.pl',
      'przyslijprzepis.pl',
      'kuchnia-domowa.pl',
      'mojegotowanie.pl'
    ];
    
    const url = new URL(tab.url);
    const hostname = url.hostname.replace('www.', '');
    
    if (!supportedDomains.includes(hostname)) {
      console.error('Unsupported domain:', hostname);
      showNoIngredientsWithMessage(`Strona ${hostname} nie jest obsługiwana`);
      return;
    }
    
    const handleIngredientsResponse = async (response) => {
      console.log('Ingredients response:', response);
      
      if (chrome.runtime.lastError) {
        console.error('Error getting ingredients:', chrome.runtime.lastError.message || chrome.runtime.lastError);
        console.error('Tab URL:', tab ? tab.url : 'unknown');
        
        // Sprawdź czy to błąd braku content scriptu
        if (chrome.runtime.lastError.message.includes('Receiving end does not exist')) {
          console.log('Content script not found, attempting to inject...');
          
          // Najpierw sprawdź czy możemy wstrzyknąć skrypt na tej stronie
          chrome.permissions.contains({
            origins: [tab.url]
          }, (hasPermission) => {
            console.log('Has permission for URL:', hasPermission);
            
            if (!hasPermission) {
              showNoIngredientsWithMessage('Brak uprawnień dla tej strony. Odśwież stronę.');
              return;
            }
            
            // Spróbuj wstrzyknąć content script
            chrome.scripting.executeScript({
              target: { tabId: tab.id },
              files: ['content.js']
            }, (result) => {
              if (chrome.runtime.lastError) {
                console.error('Failed to inject content script:', chrome.runtime.lastError);
                showNoIngredientsWithMessage('Nie można załadować skryptu. Odśwież stronę i spróbuj ponownie.');
              } else {
                console.log('Content script injected successfully:', result);
                // Spróbuj ponownie po wstrzyknięciu
                setTimeout(() => {
                  chrome.tabs.sendMessage(tab.id, { action: 'getIngredients' }, handleIngredientsResponse);
                }, 200);
              }
            });
          });
          return;
        }
        
        showScreen('noIngredients');
        return;
      }
      
      if (!response || !response.ingredients || response.ingredients.length === 0) {
        showScreen('noIngredients');
        return;
      }
      
      state.ingredients = response;
      await displayIngredients(response);
      await loadUserLists();
      showScreen('ingredients');
    };
    
    chrome.tabs.sendMessage(tab.id, { action: 'getIngredients' }, handleIngredientsResponse);
  } catch (error) {
    console.error('Błąd:', error);
    showScreen('noIngredients');
  }
}

// Wyświetl składniki
async function displayIngredients(data) {
  const recipeName = document.getElementById('recipe-name');
  const ingredientsCheckboxes = document.getElementById('ingredients-checkboxes');
  
  recipeName.textContent = data.title;
  ingredientsCheckboxes.innerHTML = '';
  
  data.ingredients.forEach((ingredient, index) => {
    const div = document.createElement('div');
    div.className = 'ingredient-item';
    
    const checkbox = document.createElement('input');
    checkbox.type = 'checkbox';
    checkbox.id = `ingredient-${index}`;
    checkbox.checked = true;
    checkbox.addEventListener('change', updateSelectedCount);
    
    const label = document.createElement('label');
    label.htmlFor = `ingredient-${index}`;
    
    // Obsługa nowej struktury danych z ilościami
    if (typeof ingredient === 'object' && ingredient.name) {
      // Wyświetl nazwę składnika
      const nameSpan = document.createElement('span');
      nameSpan.className = 'ingredient-name';
      nameSpan.textContent = ingredient.name;
      label.appendChild(nameSpan);
      
      // Jeśli jest ilość, wyświetl ją
      if (ingredient.amount) {
        const quantitySpan = document.createElement('span');
        quantitySpan.className = 'ingredient-quantity';
        const quantityText = ingredient.unit ? `${ingredient.amount} ${ingredient.unit}` : ingredient.amount;
        quantitySpan.textContent = ` (${quantityText})`;
        label.appendChild(quantitySpan);
      }
      
      // Zapisz pełne dane w atrybucie
      div.setAttribute('data-ingredient', JSON.stringify(ingredient));
    } else {
      // Fallback dla prostego tekstu
      label.textContent = ingredient;
      div.setAttribute('data-ingredient', JSON.stringify({ name: ingredient, amount: null, unit: null }));
    }
    
    div.appendChild(checkbox);
    div.appendChild(label);
    ingredientsCheckboxes.appendChild(div);
  });
  
  updateSelectedCount();
}

// Załaduj listy użytkownika
async function loadUserLists() {
  const listSelect = document.getElementById('list-select');
  listSelect.innerHTML = 'Ładowanie list...';
  
  chrome.runtime.sendMessage({ action: 'getLists' }, (response) => {
    console.log('Lists response:', response);
    
    if (response.success) {
      state.lists = response.lists;
      
      listSelect.innerHTML = 'Wybierz listę...';
      response.lists.forEach(list => {
        const option = document.createElement('option');
        option.value = list.id;
        option.textContent = list.name;
        listSelect.appendChild(option);
      });
      
      // Wybierz domyślną listę jeśli istnieje
      if (response.lists.length > 0) {
        // Sprawdź czy mamy zapisaną ostatnio używaną listę
        chrome.storage.local.get(['lastUsedListId'], (result) => {
          if (result.lastUsedListId) {
            const listExists = response.lists.find(l => l.id === result.lastUsedListId);
            if (listExists) {
              listSelect.value = result.lastUsedListId;
              state.selectedList = result.lastUsedListId;
              return;
            }
          }
          // Jeśli nie, wybierz pierwszą listę
          listSelect.value = response.lists[0].id;
          state.selectedList = response.lists[0].id;
        });
      }
    } else {
      console.error('Failed to load lists:', response.error);
      listSelect.innerHTML = 'Błąd ładowania list';
      
      // Jeśli błąd to 401, wyloguj użytkownika
      if (response.error && response.error.includes('401')) {
        console.log('Authentication error, logging out');
        state.isLoggedIn = false;
        chrome.storage.local.remove(['listonicToken', 'listonicUser', 'listonicTokenExpiry']);
        showScreen('login');
      }
    }
  });
}

// Aktualizuj licznik wybranych
function updateSelectedCount() {
  const checkboxes = document.querySelectorAll('#ingredients-checkboxes input[type="checkbox"]');
  const checkedCount = Array.from(checkboxes).filter(cb => cb.checked).length;
  document.getElementById('selected-count').textContent = `${checkedCount} wybranych`;
}

// Setup event listeners
function setupEventListeners() {
  // Logowanie
  document.getElementById('login-form').addEventListener('submit', async (e) => {
    e.preventDefault();
    
    const email = document.getElementById('email').value;
    const password = document.getElementById('password').value;
    const errorDiv = document.getElementById('login-error');
    const submitButton = e.target.querySelector('button[type="submit"]');
    
    errorDiv.classList.add('hidden');
    submitButton.disabled = true;
    submitButton.textContent = 'Logowanie...';
    
    chrome.runtime.sendMessage({
      action: 'login',
      credentials: { email, password }
    }, async (response) => {
      submitButton.disabled = false;
      submitButton.textContent = 'Zaloguj się';
      
      console.log('Login response:', response);
      
      if (response.success) {
        state.isLoggedIn = true;
        state.user = response.user;
        updateUserInfo();
        await loadIngredients();
      } else {
        errorDiv.textContent = response.error || 'Błąd logowania';
        errorDiv.classList.remove('hidden');
      }
    });
  });
  
  // Wylogowanie
  document.getElementById('logout-btn').addEventListener('click', () => {
    if (confirm('Czy na pewno chcesz się wylogować?')) {
      chrome.runtime.sendMessage({ action: 'logout' }, () => {
        state.isLoggedIn = false;
        state.user = null;
        updateUserInfo();
        showScreen('login');
        // Wyczyść formularz logowania
        document.getElementById('email').value = '';
        document.getElementById('password').value = '';
      });
    }
  });
  
  // Zaznacz wszystkie
  document.getElementById('select-all').addEventListener('click', () => {
    const checkboxes = document.querySelectorAll('#ingredients-checkboxes input[type="checkbox"]');
    const allChecked = Array.from(checkboxes).every(cb => cb.checked);
    
    checkboxes.forEach(cb => cb.checked = !allChecked);
    document.getElementById('select-all').textContent = allChecked ? 'Zaznacz wszystkie' : 'Odznacz wszystkie';
    updateSelectedCount();
  });
  
  // Wybór listy
  document.getElementById('list-select').addEventListener('change', (e) => {
    state.selectedList = e.target.value;
    // Zapisz ostatnio używaną listę
    if (state.selectedList) {
      chrome.storage.local.set({ lastUsedListId: state.selectedList });
    }
  });
  
  // Nowa lista
  document.getElementById('new-list-btn').addEventListener('click', () => {
    document.getElementById('new-list-form').classList.remove('hidden');
    const newListInput = document.getElementById('new-list-name');
    
    // Ustaw nazwę przepisu jako domyślną nazwę listy
    if (state.ingredients && state.ingredients.title) {
      newListInput.value = state.ingredients.title;
    }
    
    newListInput.focus();
    // Zaznacz cały tekst dla łatwej edycji
    newListInput.select();
  });
  
  // Anuluj nową listę
  document.getElementById('cancel-new-list').addEventListener('click', () => {
    document.getElementById('new-list-form').classList.add('hidden');
    document.getElementById('new-list-name').value = '';
  });
  
  // Utwórz nową listę
  document.getElementById('create-list-btn').addEventListener('click', () => {
    const listName = document.getElementById('new-list-name').value.trim();
    
    if (!listName) {
      alert('Podaj nazwę listy');
      return;
    }
    
    const createBtn = document.getElementById('create-list-btn');
    createBtn.disabled = true;
    createBtn.textContent = 'Tworzenie...';
    
    chrome.runtime.sendMessage({
      action: 'createList',
      name: listName
    }, async (response) => {
      createBtn.disabled = false;
      createBtn.textContent = 'Utwórz';
      
      if (response.success) {
        state.lists.push(response.list);
        state.selectedList = response.list.id;
        
        // Zapisz jako ostatnio używaną
        chrome.storage.local.set({ lastUsedListId: response.list.id });
        
        // Odśwież listę
        const listSelect = document.getElementById('list-select');
        const option = document.createElement('option');
        option.value = response.list.id;
        option.textContent = response.list.name;
        listSelect.appendChild(option);
        listSelect.value = response.list.id;
        
        // Ukryj formularz
        document.getElementById('new-list-form').classList.add('hidden');
        document.getElementById('new-list-name').value = '';
      } else {
        alert('Błąd tworzenia listy: ' + response.error);
      }
    });
  });
  
  // Dodaj do Listonic
  document.getElementById('add-to-listonic').addEventListener('click', async () => {
    if (!state.selectedList) {
      alert('Wybierz listę!');
      return;
    }
    
    const checkboxes = document.querySelectorAll('#ingredients-checkboxes input[type="checkbox"]:checked');
    const selectedIngredients = Array.from(checkboxes).map(cb => {
      const ingredientDiv = cb.parentElement;
      const ingredientData = ingredientDiv.getAttribute('data-ingredient');
      
      if (ingredientData) {
        try {
          return JSON.parse(ingredientData);
        } catch (e) {
          // Fallback na tekst z labela
          const label = cb.parentElement.querySelector('label');
          return { name: label.textContent, amount: null, unit: null };
        }
      } else {
        // Fallback na tekst z labela
        const label = cb.parentElement.querySelector('label');
        return { name: label.textContent, amount: null, unit: null };
      }
    });
    
    if (selectedIngredients.length === 0) {
      alert('Wybierz co najmniej jeden składnik!');
      return;
    }
    
    // Zmień tekst przycisku na ładowanie
    const addButton = document.getElementById('add-to-listonic');
    const originalText = addButton.textContent;
    addButton.textContent = 'Dodawanie...';
    addButton.disabled = true;
    
    chrome.runtime.sendMessage({
      action: 'addItems',
      listId: state.selectedList,
      items: selectedIngredients
    }, (response) => {
      addButton.textContent = originalText;
      addButton.disabled = false;
      
      if (response.success) {
        const selectedListName = state.lists.find(l => l.id === state.selectedList)?.name || 'wybranej listy';
        document.getElementById('success-details').textContent = 
          response.message || `Dodano ${selectedIngredients.length} składników do listy "${selectedListName}"`;
        showScreen('success');
      } else {
        alert('Błąd dodawania składników: ' + response.error);
      }
    });
  });
  
  // Otwórz Listonic
  document.getElementById('open-listonic').addEventListener('click', () => {
    chrome.tabs.create({ url: 'https://app.listonic.com' });
  });
  
  // Dodaj więcej
  document.getElementById('add-more').addEventListener('click', async () => {
    await loadIngredients();
  });
  
  // Zamknij okno
  document.getElementById('close-window').addEventListener('click', () => {
    window.close();
  });
}