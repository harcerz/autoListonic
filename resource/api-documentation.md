## Dokumentacja API Listonic

Poniżej znajduje się dokumentacja dla głównych punktów końcowych API Listonic, zidentyfikowanych na podstawie dostarczonego pliku HAR.

---

### 1. Uwierzytelnianie i uzyskiwanie tokena

Ten endpoint służy do logowania użytkownika i uzyskiwania tokena dostępowego `access_token`, który jest wymagany do autoryzacji w kolejnych zapytaniach.

* **Metoda:** `POST`
* **Endpoint:** `/api/loginextended`
* **Pełny URL:** `https://api.listonic.com/api/loginextended?provider=password&autoMerge=1&autoDestruct=1`

**Ciało zapytania (`application/x-www-form-urlencoded`):**

| Parametr | Opis | Przykładowa wartość |
| :--- | :--- | :--- |
| `username` | Adres e-mail użytkownika. | `twoj@email.com` |
| `password` | Hasło użytkownika. | `twojehaslo` |
| `client_id` | Identyfikator klienta aplikacji. | `listonicv2` |
| `redirect_uri`| Adres do przekierowania. | `https://app.listonic.com/` |
| `client_secret`| Klucz klienta. | `fjdfsoj9874jdfhjk` |

**Nagłówki (Headers):**

| Nagłówek | Wartość |
| :--- | :--- |
| `clientauthorization` | `Bearer bGlzdG9uaWN2MjpmamRmc29qOTg3NGpkZmhqa2gzNGpraGZmZGZmZg==` |

**Przykładowa odpowiedź (`200 OK`):**

```json
{
  "access_token": "unikalny_token_dostepowy",
  "token_type": "Bearer",
  "expires_in": 86400,
  "refresh_token": "unikalny_token_odswiezajacy"
}
```

---

### 2. Pobieranie informacji o użytkowniku

Po zalogowaniu, ten endpoint pozwala pobrać szczegóły na temat aktualnie uwierzytelnionego użytkownika.

* **Metoda:** `GET`
* **Endpoint:** `/api/users/me`
* **Wymaga uwierzytelnienia.**

**Nagłówki (Headers):**

| Nagłówek | Wartość |
| :--- | :--- |
| `Authorization` | `Bearer {access_token}` |

**Przykładowa odpowiedź (`200 OK`):**

```json
{
    "Username": "google_qw34wgc5dx",
    "Email": "twoj@email.com",
    "FullName": "Imię Nazwisko",
    "ImageUrl": "url_do_zdjecia.jpg",
    "Language": "pl-PL",
    "Location": "PL"
}
```

---

### 3. Zarządzanie listami zakupów

#### 3.1. Pobieranie wszystkich list

Służy do pobierania wszystkich aktywnych list zakupów użytkownika.

* **Metoda:** `GET`
* **Endpoint:** `/api/lists`
* **Pełny URL:** `https://api.listonic.com/api/lists?includeShares=true&archive=false&includeItems=true`
* **Wymaga uwierzytelnienia.**

**Nagłówki (Headers):**

| Nagłówek | Wartość |
| :--- | :--- |
| `Authorization` | `Bearer {access_token}` |
| `LCode` | Aktualny timestamp (np. `1754648926884`) |

**Przykładowa odpowiedź (`200 OK`):**
Odpowiedź to tablica obiektów, gdzie każdy obiekt to jedna lista.

```json
[
  {
    "Id": "41712492",
    "Name": "Moja lista zakupów",
    "Owner": "google_qw34wgc5dx",
    "ItemsCount": 5,
    "CheckedItemsCount": 1,
    "Items": [
      {
        "Id": "778320375",
        "Name": "Mleko",
        "Checked": 0
      }
    ]
  }
]
```

#### 3.2. Aktualizacja listy

Pozwala na zmianę nazwy lub innych właściwości listy.

* **Metoda:** `PUT`
* **Endpoint:** `/api/lists/{listId}`
* **Wymaga uwierzytelnienia.**

**Ciało zapytania (`application/json`):**

```json
{
  "Name": "Nowa nazwa listy"
}
```

---

### 4. Zarządzanie produktami na liście

#### 4.1. Dodawanie produktu do listy

* **Metoda:** `POST`
* **Endpoint:** `/api/lists/{listId}/items`
* **Wymaga uwierzytelnienia.**

**Ciało zapytania (`application/json`):**

```json
{
  "Name": "Chleb",
  "Amount": "1 szt."
}
```

#### 4.2. Aktualizacja produktu na liście

Używane najczęściej do oznaczania produktu jako "kupiony" (`Checked: 1`).

* **Metoda:** `PUT`
* **Endpoint:** `/api/lists/{listId}/items/{itemId}`
* **Wymaga uwierzytelnienia.**

**Ciało zapytania (`application/json`):**

```json
{
  "Checked": 1
}
```

#### 4.3. Usuwanie produktu z listy

* **Metoda:** `DELETE`
* **Endpoint:** `/api/lists/{listId}/items/{itemId}`
* **Wymaga uwierzytelnienia.**
* Nie wymaga ciała zapytania. Odpowiedź `204 No Content` oznacza sukces.
