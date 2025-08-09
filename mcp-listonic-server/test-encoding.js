import dotenv from 'dotenv';

dotenv.config();

const password = process.env.LISTONIC_PASSWORD;

console.log('Password:', password);
console.log('Password length:', password.length);
console.log('URL encoded:', encodeURIComponent(password));
console.log('URLSearchParams encoded:', new URLSearchParams({password}).toString());

// Check each character
console.log('\nCharacter analysis:');
for (let i = 0; i < password.length; i++) {
  const char = password[i];
  console.log(`  ${i}: '${char}' (code: ${char.charCodeAt(0)})`);
}