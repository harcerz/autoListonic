# Polityka Prywatności dla rozszerzenia AutoListonic

**Data wejścia w życie:** 9 sierpnia 2025

Dziękujemy za korzystanie z AutoListonic ("Rozszerzenie"). Niniejsza Polityka Prywatności wyjaśnia, jakie informacje zbieramy, jak ich używamy i chronimy.

### 1. Jakie informacje zbieramy?

Aby zapewnić działanie głównych funkcji, Rozszerzenie zbiera i przetwarza następujące dane:

* **Dane uwierzytelniające:** Twój adres e-mail i hasło do konta Listonic. Dane te są używane **wyłącznie** do zalogowania Cię w serwisie Listonic. Hasło nie jest przechowywane przez Rozszerzenie.
* **Tokeny autoryzacyjne:** Po pomyślnym zalogowaniu, Rozszerzenie przechowuje tokeny dostępu (`access_token`, `refresh_token`) dostarczone przez API Listonic. Są one zapisywane lokalnie na Twoim komputerze za pomocą `chrome.storage.local`, aby utrzymać sesję.
* **Informacje o koncie użytkownika:** Rozszerzenie pobiera z API Listonic Twój adres e-mail oraz nazwę użytkownika w celu wyświetlenia ich w interfejsie i potwierdzenia, że jesteś zalogowany.
* **Dane z przeglądanych stron:** Kiedy aktywujesz Rozszerzenie na stronie z przepisem, odczytuje ono jej zawartość (kod HTML) oraz adres URL. Służy to wyłącznie do zidentyfikowania i wyodrębnienia listy składników oraz tytułu przepisu. Rozszerzenie **nie śledzi** Twojej historii przeglądania.
* **Dane wprowadzane przez użytkownika:** Nazwy dla nowo tworzonych list zakupów.

### 2. Jak wykorzystujemy Twoje informacje?

Zebrane dane są wykorzystywane w celu:

* Uwierzytelnienia Twojej sesji w serwisie Listonic.
* Pobierania Twoich istniejących list zakupów.
* Dodawania wybranych składników do wskazanej przez Ciebie listy zakupów w Listonic.
* Tworzenia nowych list zakupów na Twoim koncie Listonic, zgodnie z Twoim żądaniem.
* Zapewnienia wygody użytkowania, np. poprzez zapamiętanie ostatnio używanej listy.

### 3. Udostępnianie danych

**Nie sprzedajemy, nie wymieniamy ani nie udostępniamy Twoich danych osobowych stronom trzecim.**

Jedynym podmiotem zewnętrznym, z którym komunikuje się Rozszerzenie, jest oficjalne API serwisu Listonic (`api.listonic.com`). Komunikacja ta jest niezbędna do świadczenia usługi (logowanie, zarządzanie listami) i odbywa się za pośrednictwem szyfrowanego połączenia HTTPS.

### 4. Bezpieczeństwo i przechowywanie danych

Wszystkie dane (tokeny, informacje o koncie, preferencje) są przechowywane **lokalnie** na Twoim komputerze przy użyciu bezpiecznego mechanizmu `chrome.storage.local` dostarczanego przez przeglądarkę. Dane te nie są wysyłane na żadne inne serwery niż serwery Listonic.

### 5. Twoje prawa

W każdej chwili możesz wylogować się z Rozszerzenia, co spowoduje usunięcie zapisanych tokenów autoryzacyjnych z pamięci lokalnej. Możesz również w dowolnym momencie odinstalować Rozszerzenie, co całkowicie usunie wszystkie jego komponenty i dane z Twojej przeglądarki.

### 6. Zmiany w polityce prywatności

Zastrzegamy sobie prawo do wprowadzania zmian w niniejszej Polityce Prywatności. O wszelkich zmianach poinformujemy poprzez aktualizację tej strony.

### 7. Kontakt

W przypadku pytań dotyczących niniejszej Polityki Prywatności, prosimy o kontakt pod adresem: [**tutaj wstaw swój adres e-mail**]
