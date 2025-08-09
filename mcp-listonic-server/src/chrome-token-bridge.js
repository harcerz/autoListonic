// Chrome Token Bridge
// This script helps extract authentication tokens from the Chrome extension

import { ListonicAPI } from './listonic-api.js';
import fs from 'fs/promises';
import path from 'path';

export class ChromeTokenBridge {
  constructor() {
    this.api = new ListonicAPI();
  }

  // Method to manually set token obtained from Chrome extension
  async setTokenFromChrome(token, refreshToken, expiryTime) {
    this.api.token = token;
    this.api.refreshToken = refreshToken;
    this.api.tokenExpiry = expiryTime || Date.now() + 86400000; // Default 24 hours
    
    // Save tokens to a file for persistence
    const tokenData = {
      token: this.api.token,
      refreshToken: this.api.refreshToken,
      tokenExpiry: this.api.tokenExpiry,
      savedAt: new Date().toISOString()
    };
    
    await fs.writeFile(
      path.join(process.cwd(), '.tokens.json'),
      JSON.stringify(tokenData, null, 2)
    );
    
    return true;
  }

  // Load saved tokens if available
  async loadSavedTokens() {
    try {
      const tokenFile = path.join(process.cwd(), '.tokens.json');
      const data = await fs.readFile(tokenFile, 'utf-8');
      const tokenData = JSON.parse(data);
      
      // Check if token is still valid
      if (tokenData.tokenExpiry && Date.now() < tokenData.tokenExpiry) {
        this.api.token = tokenData.token;
        this.api.refreshToken = tokenData.refreshToken;
        this.api.tokenExpiry = tokenData.tokenExpiry;
        return true;
      } else if (tokenData.refreshToken) {
        // Try to refresh the token
        this.api.refreshToken = tokenData.refreshToken;
        try {
          await this.api.refreshAccessToken();
          await this.saveCurrentTokens();
          return true;
        } catch (error) {
          console.error('Failed to refresh token:', error);
          return false;
        }
      }
    } catch (error) {
      // No saved tokens or error reading file
      return false;
    }
  }

  // Save current tokens
  async saveCurrentTokens() {
    if (this.api.token) {
      const tokenData = {
        token: this.api.token,
        refreshToken: this.api.refreshToken,
        tokenExpiry: this.api.tokenExpiry,
        savedAt: new Date().toISOString()
      };
      
      await fs.writeFile(
        path.join(process.cwd(), '.tokens.json'),
        JSON.stringify(tokenData, null, 2)
      );
    }
  }

  // Get the API instance
  getAPI() {
    return this.api;
  }
}

// Instructions for extracting token from Chrome:
console.log(`
To extract your Listonic token from Chrome:

1. Make sure you're logged into app.listonic.com
2. Open Chrome DevTools (F12)
3. Go to Application tab
4. Under Storage > Local Storage > chrome-extension://[extension-id]
5. Look for 'listonicToken' and 'listonicRefreshToken'
6. Copy these values and use them with this bridge

Alternative method:
1. Open the AutoListonic extension popup
2. Open DevTools for the popup (right-click > Inspect)
3. In Console, type: chrome.storage.local.get(['listonicToken', 'listonicRefreshToken'], console.log)
4. Copy the token values from the output
`);