import fetch from 'node-fetch';
import dotenv from 'dotenv';

dotenv.config();

const LISTONIC_API_BASE = 'https://api.listonic.com/api';

async function testVariation(name, options) {
  console.log(`\n=== Testing: ${name} ===`);
  
  try {
    const response = await fetch(options.url, {
      method: 'POST',
      headers: options.headers,
      body: options.body
    });
    
    console.log('Status:', response.status);
    const text = await response.text();
    console.log('Response:', text.substring(0, 200));
    
    if (response.ok) {
      console.log('✓ SUCCESS!');
      const data = JSON.parse(text);
      console.log('Token received:', !!data.access_token);
    }
    
  } catch (error) {
    console.log('✗ Error:', error.message);
  }
}

async function runTests() {
  const email = process.env.LISTONIC_EMAIL;
  const password = process.env.LISTONIC_PASSWORD;
  
  if (!email || !password) {
    console.error('Please set LISTONIC_EMAIL and LISTONIC_PASSWORD in .env');
    return;
  }
  
  // Test 1: Exact copy of Chrome extension
  await testVariation('Chrome Extension Method', {
    url: `${LISTONIC_API_BASE}/loginextended?provider=password&autoMerge=1&autoDestruct=1`,
    headers: {
      'Content-Type': 'application/x-www-form-urlencoded',
      'Accept': 'application/json',
      'clientauthorization': 'Bearer bGlzdG9uaWN2MjpmamRmc29qOTg3NGpkZmhqa2gzNGpraGZmZGZmZg=='
    },
    body: new URLSearchParams({
      'username': email,
      'password': password,
      'client_id': 'listonicv2',
      'redirect_uri': 'https://app.listonic.com/',
      'client_secret': 'fjdfsoj9874jdfhjk'
    })
  });
  
  // Test 2: Without Bearer prefix in clientauthorization
  await testVariation('Without Bearer Prefix', {
    url: `${LISTONIC_API_BASE}/loginextended?provider=password&autoMerge=1&autoDestruct=1`,
    headers: {
      'Content-Type': 'application/x-www-form-urlencoded',
      'Accept': 'application/json',
      'clientauthorization': 'bGlzdG9uaWN2MjpmamRmc29qOTg3NGpkZmhqa2gzNGpraGZmZGZmZg=='
    },
    body: new URLSearchParams({
      'username': email,
      'password': password,
      'client_id': 'listonicv2',
      'redirect_uri': 'https://app.listonic.com/',
      'client_secret': 'fjdfsoj9874jdfhjk'
    })
  });
  
  // Test 3: Different client_secret (decoded base64)
  const decodedAuth = Buffer.from('bGlzdG9uaWN2MjpmamRmc29qOTg3NGpkZmhqa2gzNGpraGZmZGZmZg==', 'base64').toString();
  console.log('\nDecoded clientauthorization:', decodedAuth);
  
  await testVariation('With decoded client_secret', {
    url: `${LISTONIC_API_BASE}/loginextended?provider=password&autoMerge=1&autoDestruct=1`,
    headers: {
      'Content-Type': 'application/x-www-form-urlencoded',
      'Accept': 'application/json',
      'clientauthorization': 'Bearer bGlzdG9uaWN2MjpmamRmc29qOTg3NGpkZmhqa2gzNGpraGZmZGZmZg=='
    },
    body: new URLSearchParams({
      'username': email,
      'password': password,
      'client_id': 'listonicv2',
      'redirect_uri': 'https://app.listonic.com/',
      'client_secret': 'fjdfsoj9874jdfhjkh34jkhffdfff' // from decoded auth
    })
  });
  
  // Test 4: Basic auth header
  await testVariation('Basic Auth Header', {
    url: `${LISTONIC_API_BASE}/loginextended?provider=password&autoMerge=1&autoDestruct=1`,
    headers: {
      'Content-Type': 'application/x-www-form-urlencoded',
      'Accept': 'application/json',
      'Authorization': 'Basic bGlzdG9uaWN2MjpmamRmc29qOTg3NGpkZmhqa2gzNGpraGZmZGZmZg=='
    },
    body: new URLSearchParams({
      'username': email,
      'password': password,
      'client_id': 'listonicv2',
      'redirect_uri': 'https://app.listonic.com/',
      'client_secret': 'fjdfsoj9874jdfhjk'
    })
  });
}

runTests();