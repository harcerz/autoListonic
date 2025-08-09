import fetch from 'node-fetch';

const LISTONIC_API_BASE = 'https://api.listonic.com/api';

export class ListonicAPI {
  constructor() {
    this.token = null;
    this.refreshToken = null;
    this.tokenExpiry = null;
    this.deviceId = this.generateUUID();
  }

  generateUUID() {
    return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function(c) {
      const r = Math.random() * 16 | 0;
      const v = c === 'x' ? r : (r & 0x3 | 0x8);
      return v.toString(16);
    });
  }

  getLCode() {
    return Date.now().toString();
  }

  getHeaders() {
    return {
      'Accept': 'application/json, text/plain, */*',
      'Authorization': `Bearer ${this.token}`,
      'Content-Type': 'application/json',
      'Culture': 'pl',
      'DeviceId': this.deviceId,
      'LCode': this.getLCode(),
      'X-Last-Version': JSON.stringify({
        R: {
          I: Date.now(),
          SV: Date.now() - 10000,
          V: Date.now() + 100
        }
      })
    };
  }

  async login(email, password) {
    console.error('Login attempt for:', email);
    console.error('Password length:', password ? password.length : 0);
    
    const params = new URLSearchParams({
      provider: 'password',
      autoMerge: '1',
      autoDestruct: '1'
    });

    const loginUrl = `${LISTONIC_API_BASE}/loginextended?${params}`;
    const loginBody = new URLSearchParams({
      'username': email,
      'password': password,
      'client_id': 'listonicv2',
      'redirect_uri': 'https://app.listonic.com/',
      'client_secret': 'fjdfsoj9874jdfhjk'
    });

    console.error('Login URL:', loginUrl);
    console.error('Login body:', loginBody.toString());
    console.error('Request headers:', {
      'Content-Type': 'application/x-www-form-urlencoded',
      'Accept': 'application/json',
      'clientauthorization': 'Bearer bGlzdG9uaWN2MjpmamRmc29qOTg3NGpkZmhqa2gzNGpraGZmZGZmZg=='
    });
    
    try {
      const response = await fetch(loginUrl, {
        method: 'POST',
        headers: {
          'Content-Type': 'application/x-www-form-urlencoded',
          'Accept': 'application/json',
          'clientauthorization': 'Bearer bGlzdG9uaWN2MjpmamRmc29qOTg3NGpkZmhqa2gzNGpraGZmZGZmZg==',
          'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36',
          'Origin': 'https://app.listonic.com',
          'Referer': 'https://app.listonic.com/'
        },
        body: loginBody
      });

      console.error('Login response status:', response.status);
      console.error('Response headers:', Object.fromEntries(response.headers.entries()));
      
      if (!response.ok) {
        const errorText = await response.text();
        console.error('Login error response:', errorText);
        throw new Error(`Login failed: ${response.status} - ${errorText}`);
      }

      const data = await response.json();
      console.error('Login successful, response data keys:', Object.keys(data));
      console.error('Token received:', data.access_token ? 'Yes' : 'No');
      
      this.token = data.access_token;
      this.refreshToken = data.refresh_token;
      this.tokenExpiry = Date.now() + (data.expires_in || 86400) * 1000;

      return {
        success: true,
        user: await this.getUserInfo()
      };
    } catch (error) {
      console.error('Login error details:', error);
      throw error;
    }
  }

  async makeRequest(endpoint, method = 'GET', body = null) {
    if (!this.token) {
      throw new Error('Not authenticated. Please login first.');
    }

    // Check if token needs refresh
    if (this.tokenExpiry && Date.now() > this.tokenExpiry) {
      await this.refreshAccessToken();
    }

    const options = {
      method,
      headers: this.getHeaders()
    };

    if (body) {
      options.body = JSON.stringify(body);
    }

    const response = await fetch(`${LISTONIC_API_BASE}${endpoint}`, options);

    if (!response.ok) {
      if (response.status === 401) {
        // Try to refresh token
        await this.refreshAccessToken();
        // Retry request
        return this.makeRequest(endpoint, method, body);
      }
      throw new Error(`API Error: ${response.status}`);
    }

    const text = await response.text();
    return text ? JSON.parse(text) : {};
  }

  async refreshAccessToken() {
    if (!this.refreshToken) {
      throw new Error('No refresh token available');
    }

    const params = new URLSearchParams({
      provider: 'refresh_token',
      autoMerge: '1',
      autoDestruct: '1'
    });

    const response = await fetch(`${LISTONIC_API_BASE}/loginextended?${params}`, {
      method: 'POST',
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded',
        'clientauthorization': 'Bearer bGlzdG9uaWN2MjpmamRmc29qOTg3NGpkZmhqa2gzNGpraGZmZGZmZg==',
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36',
        'Origin': 'https://app.listonic.com',
        'Referer': 'https://app.listonic.com/'
      },
      body: new URLSearchParams({
        'refresh_token': this.refreshToken,
        'client_id': 'listonicv2',
        'client_secret': 'fjdfsoj9874jdfhjk'
      })
    });

    if (!response.ok) {
      throw new Error('Failed to refresh token');
    }

    const data = await response.json();
    this.token = data.access_token;
    this.refreshToken = data.refresh_token;
    this.tokenExpiry = Date.now() + (data.expires_in || 86400) * 1000;
  }

  async getUserInfo() {
    const response = await this.makeRequest('/users/me');
    return {
      username: response.Username,
      email: response.Email,
      fullName: response.FullName,
      language: response.Language
    };
  }

  async getLists(includeItems = false) {
    const params = new URLSearchParams({
      includeShares: 'true',
      archive: 'false',
      includeItems: includeItems.toString()
    });

    const lists = await this.makeRequest(`/lists?${params}`);
    return Array.isArray(lists) ? lists.map(list => ({
      id: list.Id,
      name: list.Name,
      owner: list.Owner,
      itemsCount: list.ItemsCount || 0,
      checkedItemsCount: list.CheckedItemsCount || 0,
      items: list.Items || []
    })) : [];
  }

  async createList(name) {
    const newList = await this.makeRequest('/lists', 'POST', { Name: name });
    return {
      id: newList.Id,
      name: newList.Name
    };
  }

  async addItems(listId, items) {
    const results = await Promise.allSettled(
      items.map(item => {
        const itemData = {
          Name: item.name || item,
          Amount: item.amount || '',
          Unit: item.unit || ''
        };
        return this.makeRequest(`/lists/${listId}/items`, 'POST', itemData);
      })
    );

    const succeeded = results.filter(r => r.status === 'fulfilled').length;
    const failed = results.filter(r => r.status === 'rejected').length;

    return {
      succeeded,
      failed,
      total: items.length
    };
  }

  async updateItem(listId, itemId, updates) {
    return await this.makeRequest(`/lists/${listId}/items/${itemId}`, 'PATCH', updates);
  }

  async deleteItem(listId, itemId) {
    return await this.makeRequest(`/lists/${listId}/items/${itemId}`, 'DELETE');
  }

  async deleteList(listId) {
    return await this.makeRequest(`/lists/${listId}`, 'DELETE');
  }
}