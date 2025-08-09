import { ListonicAPI } from './src/listonic-api.js';
import dotenv from 'dotenv';

dotenv.config();

async function testLogin() {
  console.log('=== Testing Listonic Login ===');
  console.log('Environment check:', {
    hasEmail: !!process.env.LISTONIC_EMAIL,
    hasPassword: !!process.env.LISTONIC_PASSWORD,
    email: process.env.LISTONIC_EMAIL || 'not set'
  });

  if (!process.env.LISTONIC_EMAIL || !process.env.LISTONIC_PASSWORD) {
    console.error('Please set LISTONIC_EMAIL and LISTONIC_PASSWORD in .env file');
    return;
  }

  const api = new ListonicAPI();
  
  try {
    console.log('\nAttempting login...');
    const result = await api.login(process.env.LISTONIC_EMAIL, process.env.LISTONIC_PASSWORD);
    console.log('\n✓ Login successful!');
    console.log('User info:', result.user);
    
    // Test getting lists
    console.log('\nTesting get lists...');
    const lists = await api.getLists();
    console.log(`✓ Found ${lists.length} lists`);
    lists.forEach(list => {
      console.log(`  - ${list.name} (${list.itemsCount} items)`);
    });
    
  } catch (error) {
    console.error('\n✗ Login failed:', error.message);
    console.error('Full error:', error);
  }
}

testLogin();