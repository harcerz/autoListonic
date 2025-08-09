# AutoListonic 🛒

Rozszerzenie Chrome, które automatycznie wyciąga składniki z przepisów kulinarnych i dodaje je do Twojej listy zakupów w Listonic.

## Funkcje

- 🔍 Automatyczne rozpoznawanie składników na stronach z przepisami
- 📝 Parsowanie ilości i jednostek (np. "500 g mąki" → ilość: 500, jednostka: g)
- 👥 Obsługa grup składników (np. "Ciasto", "Nadzienie")
- ✅ Wybór składników do dodania
- 📋 Tworzenie nowych list lub dodawanie do istniejących
- 🔐 Bezpieczne logowanie do Listonic

## Obsługiwane strony

- Kwestia Smaku (kwestiasmaku.com)
- Ania Gotuje (aniagotuje.pl)
- Przyślij Przepis (przyslijprzepis.pl)
- Kuchnia Domowa (kuchnia-domowa.pl)
- Moje Gotowanie (mojegotowanie.pl)

## Instalacja

### Ze sklepu Chrome (wkrótce)
Rozszerzenie będzie dostępne w Chrome Web Store.

### Instalacja deweloperska
1. Sklonuj repozytorium lub pobierz pliki
2. Otwórz Chrome i przejdź do `chrome://extensions/`
3. Włącz "Tryb deweloperski" w prawym górnym rogu
4. Kliknij "Załaduj rozpakowane"
5. Wybierz folder z rozszerzeniem

### Budowanie wersji produkcyjnej
```bash
npm install
npm run build
```

Plik ZIP gotowy do wysłania do Chrome Web Store znajdziesz w folderze `dist/`.

## Użycie

1. **Zaloguj się do Listonic**
   - Kliknij ikonę rozszerzenia
   - Wprowadź email i hasło do konta Listonic
   - Kliknij "Zaloguj się"

2. **Dodaj składniki z przepisu**
   - Wejdź na stronę z przepisem (np. kwestiasmaku.com)
   - Kliknij ikonę rozszerzenia
   - Wybierz składniki które chcesz dodać
   - Wybierz listę lub utwórz nową
   - Kliknij "Dodaj do Listonic"

## Struktura projektu

```
listonic/
├── manifest.json          # Konfiguracja rozszerzenia Chrome
├── popup.html            # Interfejs użytkownika
├── popup.js              # Logika interfejsu
├── popup.css             # Style interfejsu
├── content.js            # Skrypt parsujący strony z przepisami
├── background.js         # Service worker do komunikacji z API Listonic
├── icon.ico              # Ikona rozszerzenia
└── resource/             # Przykłady struktur HTML różnych stron
```

## Jak działa parsowanie składników

### Kwestia Smaku
- Rozpoznaje grupy składników (elementy z klasą `.wyroznione`)
- Parsuje ilości w różnych formatach:
  - "1,5 szklanki (240 g) mąki" → preferuje gramaturę
  - "140 g masła" → ilość: 140, jednostka: g
  - "4 łyżki cukru" → ilość: 4, jednostka: łyżki

### Ania Gotuje
- Używa struktury z `span.ingredient` i `span.qty`
- Automatycznie rozdziela nazwę i ilość

## API Listonic

Rozszerzenie używa oficjalnego API Listonic:
- Endpoint: `https://api.listonic.com/api`
- Autentykacja: Bearer token
- Obsługiwane operacje:
  - Logowanie (`/loginextended`)
  - Pobieranie list (`/lists`)
  - Tworzenie list (`POST /lists`)
  - Dodawanie produktów (`POST /lists/{id}/items`)

## Rozwiązywanie problemów

### "Nie znaleziono składników na tej stronie"
1. Upewnij się, że jesteś na stronie z przepisem (nie na stronie głównej)
2. Przeładuj rozszerzenie w `chrome://extensions/`
3. Odśwież stronę z przepisem
4. Sprawdź konsolę (F12) czy content script się załadował

### Problemy z logowaniem
1. Sprawdź czy podajesz prawidłowe dane
2. Upewnij się, że masz aktywne konto Listonic
3. Token jest przechowywany lokalnie i odświeżany automatycznie

### Debugowanie
- Konsola strony (F12): komunikaty z content.js
- Konsola popup (prawy klik na ikonie → "Zbadaj popup"): komunikaty z popup.js
- Konsola background (chrome://extensions/ → "Service worker"): komunikaty z API

## Rozwój

### Dodawanie nowej strony
1. Dodaj domenę do `manifest.json` w `host_permissions` i `content_scripts`
2. Dodaj parser w `content.js`:
```javascript
'example.com': {
  ingredients: () => {
    // Twoja logika parsowania
  },
  title: () => {
    // Pobierz tytuł przepisu
  }
}
```

### Testowanie
1. Włącz tryb deweloperski w Chrome
2. Używaj `console.log()` do debugowania
3. Sprawdzaj Network tab dla requestów API

## Licencja

MIT

## Autor

Rozszerzenie stworzone dla miłośników gotowania, którzy chcą szybko tworzyć listy zakupów z ulubionych przepisów.