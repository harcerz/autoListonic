const fs = require('fs');
const path = require('path');
const archiver = require('archiver');

// Nazwa pliku wyjściowego
const outputName = 'autolistonic-extension.zip';

// Lista plików do uwzględnienia w build
const filesToInclude = [
  'manifest.json',
  'popup.html',
  'popup.js',
  'popup.css',
  'content.js',
  'background.js',
  'logo.png'
];

// Utwórz folder dist jeśli nie istnieje
const distDir = path.join(__dirname, 'dist');
if (!fs.existsSync(distDir)) {
  fs.mkdirSync(distDir);
}

// Ścieżka do pliku ZIP
const outputPath = path.join(distDir, outputName);

// Utwórz strumień zapisu
const output = fs.createWriteStream(outputPath);
const archive = archiver('zip', {
  zlib: { level: 9 } // Maksymalna kompresja
});

// Nasłuchuj na zdarzenia
output.on('close', () => {
  console.log(`✅ Build completed successfully!`);
  console.log(`📦 Extension package: ${outputPath}`);
  console.log(`📏 Size: ${(archive.pointer() / 1024).toFixed(2)} KB`);
  console.log(`\n🚀 Ready to upload to Chrome Web Store!`);
});

archive.on('error', (err) => {
  throw err;
});

// Połącz archiwum ze strumieniem
archive.pipe(output);

// Dodaj pliki do archiwum
filesToInclude.forEach(file => {
  const filePath = path.join(__dirname, file);
  if (fs.existsSync(filePath)) {
    archive.file(filePath, { name: file });
    console.log(`📄 Adding: ${file}`);
  } else {
    console.warn(`⚠️  Warning: ${file} not found!`);
  }
});

// Finalizuj archiwum
archive.finalize();