// Exact copy of Chrome extension login code
import fetch from 'node-fetch';
import dotenv from 'dotenv';

dotenv.config();

const LISTONIC_API_BASE = 'https://api.listonic.com/api';

async function login(credentials) {
  try {
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
    
    return { success: true, data };
  } catch (error) {
    console.error('Login error:', error);
    return { success: false, error: error.message };
  }
}

// Test
const credentials = {
  email: process.env.LISTONIC_EMAIL,
  password: process.env.LISTONIC_PASSWORD
};

if (!credentials.email || !credentials.password) {
  console.error('Please set LISTONIC_EMAIL and LISTONIC_PASSWORD in .env');
  process.exit(1);
}

console.log('Testing login with:', credentials.email);
login(credentials).then(result => {
  console.log('Result:', result);
});