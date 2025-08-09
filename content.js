console.log('🛒 AutoListonic - Content script loaded on:', window.location.hostname);

// Parsery dla różnych stron kulinarnych
const parsers = {
  'kwestiasmaku.com': {
    ingredients: () => {
      const ingredients = [];
      let currentGroup = null;
      
      // Szukaj różnych możliwych kontenerów składników
      const selectors = [
        '.field-name-field-skladniki',
        '.group-skladniki .field',
        '.ingredients',
        '.recipe-ingredients'
      ];
      
      let mainContainer = null;
      for (const selector of selectors) {
        mainContainer = document.querySelector(selector);
        if (mainContainer) break;
      }
      
      if (mainContainer) {
        console.log('✅ Znaleziono kontener składników:', mainContainer);
        // Znajdź wszystkie elementy w kontenerze
        const allElements = mainContainer.querySelectorAll('.wyroznione, li');
        console.log('📋 Znaleziono elementów:', allElements.length);
        
        allElements.forEach(el => {
          if (el.classList.contains('wyroznione')) {
            // To jest nagłówek grupy
            currentGroup = el.textContent.trim();
          } else if (el.tagName === 'LI') {
            // To jest składnik
            const text = el.textContent.trim();
            if (text) {
              // Ulepszone parsowanie ilości - obsługa różnych formatów
              const patterns = [
                // "1,5 szklanki (240 g) mąki pszennej" -> preferuj gramaturę w nawiasie
                /^[\d,\.]+\s*\w+\s*\((\d+(?:[,\.]\d+)?)\s*(g|kg|ml|l|dag|dkg)\)\s+(.+)$/i,
                // "140 g zimnego masła" -> amount: "140", unit: "g", name: "zimnego masła"
                /^(\d+(?:[,\.]\d+)?)\s*(g|kg|ml|l|dag|dkg|sztuk[ai]?|szklank[ai]?|łyżk[ai]?|łyżeczk[ai]?)\s+(.+)$/i,
                // "4 łyżki drobnego cukru" -> amount: "4", unit: "łyżki", name: "drobnego cukru"
                /^(\d+(?:[,\.]\d+)?)\s+(\w+)\s+(.+)$/i
              ];
              
              let matched = false;
              for (const pattern of patterns) {
                const match = text.match(pattern);
                if (match) {
                  const amount = match[1].replace(',', '.');
                  const unit = match[2];
                  const name = match[3] || match[match.length - 1];
                  
                  ingredients.push({
                    name: name.trim(),
                    amount: amount,
                    unit: unit,
                    group: currentGroup,
                    fullText: text
                  });
                  matched = true;
                  break;
                }
              }
              
              if (!matched) {
                // Nie udało się sparsować - dodaj jako jest
                ingredients.push({
                  name: text,
                  amount: null,
                  unit: null,
                  group: currentGroup,
                  fullText: text
                });
              }
            }
          }
        });
      }
      
      // Jeśli nie znaleziono składników, spróbuj bardziej ogólnego selektora
      if (ingredients.length === 0) {
        const fallbackElements = document.querySelectorAll('li');
        fallbackElements.forEach(el => {
          // Sprawdź czy element jest w sekcji składników
          const parent = el.closest('.field-name-field-skladniki, .group-skladniki, .ingredients');
          if (parent) {
            const text = el.textContent.trim();
            if (text && text.length > 2) {
              ingredients.push({
                name: text,
                amount: null,
                unit: null,
                fullText: text
              });
            }
          }
        });
      }
      
      return ingredients;
    },
    title: () => {
      return document.querySelector('h1.page-title, .recipe-title, h1')?.textContent.trim() || 'Przepis';
    }
  },
  
  'aniagotuje.pl': {
    ingredients: () => {
      const ingredients = [];
      
      // Nowa struktura Ania Gotuje z osobnymi polami na nazwę i ilość
      const recipeIngredients = document.querySelectorAll('#recipeIngredients .recipe-ing-list li, .recipe-ing-list li');
      if (recipeIngredients.length > 0) {
        recipeIngredients.forEach(li => {
          // Szukamy span.ingredient dla nazwy składnika
          const ingredientSpan = li.querySelector('span.ingredient');
          const qtySpan = li.querySelector('span.qty');
          
          if (ingredientSpan) {
            let amount = null;
            let unit = null;
            
            if (qtySpan) {
              const qtyText = qtySpan.textContent.trim();
              // Rozdziel ilość i jednostkę (np. "35 g" -> amount: "35", unit: "g")
              const qtyMatch = qtyText.match(/^(\d+(?:[,\.]\d+)?)\s*(.*)$/);
              if (qtyMatch) {
                amount = qtyMatch[1].replace(',', '.');
                unit = qtyMatch[2] || null;
              } else {
                // Jeśli nie pasuje do wzorca, traktuj całość jako ilość
                amount = qtyText;
              }
            }
            
            const ingredientData = {
              name: ingredientSpan.textContent.trim(),
              amount: amount,
              unit: unit,
              fullText: ingredientSpan.textContent.trim() + (qtySpan ? ' - ' + qtySpan.textContent.trim() : '')
            };
            ingredients.push(ingredientData);
          } else {
            // Fallback dla prostego tekstu
            const text = li.textContent.trim();
            if (text) {
              ingredients.push({
                name: text,
                amount: null,
                unit: null,
                fullText: text
              });
            }
          }
        });
      }
      
      // Fallback na starsze struktury
      if (ingredients.length === 0) {
        const selectors = [
          '.recipe-ingredients li',
          '.skladniki li',
          '.ingredients-list li',
          '[itemprop="recipeIngredient"]'
        ];
        
        selectors.forEach(selector => {
          document.querySelectorAll(selector).forEach(el => {
            const text = el.textContent.trim();
            if (text) {
              ingredients.push({
                name: text,
                amount: null,
                unit: null,
                fullText: text
              });
            }
          });
        });
      }
      
      return ingredients;
    },
    title: () => {
      // Ania Gotuje może mieć tytuł w różnych miejscach
      const titleSelectors = [
        'h1.recipe-title',
        'h1.entry-title',
        '.recipe-header h1',
        '.recipe-name',
        'h1[itemprop="name"]',
        'h1'
      ];
      
      for (const selector of titleSelectors) {
        const element = document.querySelector(selector);
        if (element) {
          return element.textContent.trim();
        }
      }
      
      return 'Przepis';
    }
  },
  
  'przyslijprzepis.pl': {
    ingredients: () => {
      const ingredients = [];
      let currentGroup = null;
      
      // Sprawdź główny kontener składników
      const container = document.querySelector('#recpie-ingredient, .recpie-ingredient');
      
      if (container) {
        // Znajdź wszystkie li w kontenerze
        const listItems = container.querySelectorAll('li');
        
        listItems.forEach(li => {
          // Pobierz innerHTML i podziel po <br>
          const html = li.innerHTML;
          const lines = html.split('<br>').map(line => line.trim()).filter(line => line.length > 0);
          
          lines.forEach(line => {
            // Usuń tagi HTML
            const text = line.replace(/<[^>]*>/g, '').trim();
            
            if (!text) return;
            
            // Pomijaj datę (format dd,mm,yyyy)
            if (/^\d{2},\d{2},\d{4}$/.test(text)) return;
            
            // Sprawdź czy to nagłówek grupy (kończy się dwukropkiem i jest CAPS)
            if (text.endsWith(':') && text === text.toUpperCase()) {
              currentGroup = text.slice(0, -1); // Usuń dwukropek
            } else if (text.startsWith('-')) {
              // To jest składnik (zaczyna się od myślnika)
              const ingredientText = text.substring(1).trim();
              
              // Parsuj ilość i jednostkę
              const patterns = [
                // "2 op. Bonitek po 200 g." -> amount: "2", unit: "op.", name: "Bonitek po 200 g."
                /^(\d+(?:[,\.]\d+)?)\s+(op\.|opak\.|szt\.|sztuk[ai]?|kg|g|ml|l)\s+(.+)$/i,
                // "330 ml. śmietanki 30 %" -> amount: "330", unit: "ml", name: "śmietanki 30 %"
                /^(\d+(?:[,\.]\d+)?)\s+(g|kg|ml|l|dag|dkg)\.\s+(.+)$/i,
                // "1 kg. sera z wiaderka" -> amount: "1", unit: "kg", name: "sera z wiaderka"
                /^(\d+(?:[,\.]\d+)?)\s+(\w+\.?)\s+(.+)$/i
              ];
              
              let matched = false;
              for (const pattern of patterns) {
                const match = ingredientText.match(pattern);
                if (match) {
                  ingredients.push({
                    name: match[3].trim(),
                    amount: match[1].replace(',', '.'),
                    unit: match[2].replace('.', ''),
                    group: currentGroup,
                    fullText: ingredientText
                  });
                  matched = true;
                  break;
                }
              }
              
              if (!matched) {
                ingredients.push({
                  name: ingredientText,
                  amount: null,
                  unit: null,
                  group: currentGroup,
                  fullText: ingredientText
                });
              }
            }
          });
        });
      } else {
        // Fallback na starą metodę
        document.querySelectorAll('.recipe-ingredients li, .ingredients li').forEach(el => {
          const text = el.textContent.trim();
          if (text) {
            ingredients.push({
              name: text,
              amount: null,
              unit: null,
              fullText: text
            });
          }
        });
      }
      
      return ingredients;
    },
    title: () => {
      return document.querySelector('h1.recipe-title, h1.title, h1, .recipe-name')?.textContent.trim() || 'Przepis';
    }
  },
  
  'kuchnia-domowa.pl': {
    ingredients: () => {
      const ingredients = [];
      let currentGroup = null;
      
      // Znajdź kontener ze składnikami
      const container = document.querySelector('#recipe-ingredients, .recipe-ingredients, .skladniki');
      
      if (container) {
        // Pobierz wszystkie elementy w kontenerze
        const allElements = container.querySelectorAll('p, ul');
        
        allElements.forEach(el => {
          if (el.tagName === 'P') {
            // Sprawdź czy to nagłówek grupy (zawiera strong)
            const strongEl = el.querySelector('strong');
            if (strongEl) {
              const groupText = strongEl.textContent.trim();
              // Usuń dwukropek z końca jeśli jest
              currentGroup = groupText.endsWith(':') ? groupText.slice(0, -1) : groupText;
            }
          } else if (el.tagName === 'UL') {
            // Przetwórz składniki z listy
            el.querySelectorAll('li').forEach(li => {
              const text = li.textContent.trim();
              if (text) {
                // Parsuj ilość i jednostkę
                const patterns = [
                  // "150 g mąki pszennej" -> amount: "150", unit: "g", name: "mąki pszennej"
                  /^(\d+(?:[,\.]\d+)?)\s+(g|kg|ml|l|dag|dkg)\s+(.+)$/i,
                  // "ok. 400-500 g zielonych szparagów" -> amount: "400-500", unit: "g", name: "zielonych szparagów"
                  /^ok\.\s*(\d+(?:-\d+)?)\s+(g|kg|ml|l)\s+(.+)$/i,
                  // "2 jajka (rozmiar M)" -> amount: "2", unit: null, name: "jajka (rozmiar M)"
                  /^(\d+(?:[,\.]\d+)?)\s+(.+)$/,
                  // "jajko (rozmiar M), zimne" -> name: "jajko (rozmiar M), zimne"
                  /^(.+)$/
                ];
                
                let matched = false;
                for (const pattern of patterns) {
                  const match = text.match(pattern);
                  if (match) {
                    if (match.length === 4) {
                      // Pattern z ilością i jednostką
                      ingredients.push({
                        name: match[3].trim(),
                        amount: match[1].replace(',', '.'),
                        unit: match[2],
                        group: currentGroup,
                        fullText: text
                      });
                    } else if (match.length === 3 && /^\d/.test(match[1])) {
                      // Pattern tylko z ilością
                      const nameMatch = match[2].match(/^(\w+)\s+(.+)$/);
                      if (nameMatch && ['łyżka', 'łyżki', 'łyżeczka', 'łyżeczki', 'szklanka', 'szklanki'].includes(nameMatch[1])) {
                        ingredients.push({
                          name: nameMatch[2].trim(),
                          amount: match[1],
                          unit: nameMatch[1],
                          group: currentGroup,
                          fullText: text
                        });
                      } else {
                        ingredients.push({
                          name: match[2].trim(),
                          amount: match[1],
                          unit: null,
                          group: currentGroup,
                          fullText: text
                        });
                      }
                    } else {
                      // Tylko nazwa
                      ingredients.push({
                        name: text,
                        amount: null,
                        unit: null,
                        group: currentGroup,
                        fullText: text
                      });
                    }
                    matched = true;
                    break;
                  }
                }
                
                if (!matched) {
                  ingredients.push({
                    name: text,
                    amount: null,
                    unit: null,
                    group: currentGroup,
                    fullText: text
                  });
                }
              }
            });
          }
        });
      } else {
        // Fallback - szukaj składników bez grup
        document.querySelectorAll('[itemprop="recipeIngredient"], .skladniki li, .recipe-ingredients li').forEach(el => {
          const text = el.textContent.trim();
          if (text) {
            ingredients.push({
              name: text,
              amount: null,
              unit: null,
              fullText: text
            });
          }
        });
      }
      
      return ingredients;
    },
    title: () => {
      // Specyficzny selektor dla kuchnia-domowa.pl
      const specificTitle = document.querySelector('#sp-component > div > div.article-details > div.article-header > h1');
      if (specificTitle) {
        return specificTitle.textContent.trim();
      }
      // Fallback na inne selektory
      return document.querySelector('h1.title, h1.recipe-title, h1, .entry-title')?.textContent.trim() || 'Przepis';
    }
  },
  
  'mojegotowanie.pl': {
    ingredients: () => {
      const ingredients = [];
      document.querySelectorAll('.ingredients li, .recipe-ingredients li, .skladniki-list li').forEach(el => {
        const text = el.textContent.trim();
        if (text) {
          ingredients.push({
            name: text,
            amount: null,
            unit: null,
            fullText: text
          });
        }
      });
      return ingredients;
    },
    title: () => {
      return document.querySelector('h1.recipe-title, h1.entry-title, h1')?.textContent.trim() || 'Przepis';
    }
  }
};

// Funkcja do wyodrębnienia składników
function extractIngredients() {
  const hostname = window.location.hostname.replace('www.', '');
  console.log('🛒 Extracting ingredients for hostname:', hostname);
  const parser = parsers[hostname];
  
  if (!parser) {
    console.log('❌ Nieobsługiwana strona:', hostname);
    console.log('Dostępne parsery:', Object.keys(parsers));
    return null;
  }
  
  try {
    const rawIngredients = parser.ingredients();
    const title = parser.title();
    
    // Normalizuj dane - upewnij się, że wszystkie składniki mają właściwą strukturę
    const normalizedIngredients = rawIngredients.map(item => {
      // Jeśli to już obiekt z właściwą strukturą, użyj go
      if (typeof item === 'object' && item.name) {
        return item;
      }
      
      // Jeśli to string, przekonwertuj na obiekt
      const text = typeof item === 'string' ? item : item.fullText || '';
      
      // Próbuj wyodrębnić ilość z tekstu
      const quantityMatch = text.match(/^(\d+(?:[,\.]\d+)?)\s*(g|kg|ml|l|dag|dkg|sztuk[ai]?|szklank[ai]?|łyżk[ai]?|łyżeczk[ai]?)?\s+(.+)$/i);
      if (quantityMatch) {
        return {
          name: quantityMatch[3].trim(),
          amount: quantityMatch[1].replace(',', '.'),
          unit: quantityMatch[2] || null,
          fullText: text
        };
      }
      
      return {
        name: text,
        amount: null,
        unit: null,
        fullText: text
      };
    });
    
    // Przetwórz składniki - wyczyść nazwy
    const processedIngredients = normalizedIngredients.map(ingredient => {
      let processedName = ingredient.name;
      
      // Usuń początkowe liczby i jednostki wagowe jeśli jeszcze są
      processedName = processedName
        .replace(/^\d+\s*(g|kg|ml|l|dag|dkg)\s*/gi, '')
        .replace(/^\d+[,.]?\d*\s*/g, '')
        .replace(/^(szklanka|szklanki|łyżka|łyżki|łyżeczka|łyżeczki|sztuka|sztuki|sztuk)\s*/gi, '')
        .replace(/^\s*[-•]\s*/, '')
        .trim();
      
      return {
        name: processedName,
        amount: ingredient.amount,
        unit: ingredient.unit,
        group: ingredient.group || null,
        fullText: ingredient.fullText
      };
    }).filter(item => item.name.length > 0);
    
    // Usuń duplikaty bazując na nazwie
    const uniqueIngredients = [];
    const seenNames = new Set();
    
    processedIngredients.forEach(ingredient => {
      if (!seenNames.has(ingredient.name.toLowerCase())) {
        seenNames.add(ingredient.name.toLowerCase());
        uniqueIngredients.push(ingredient);
      }
    });
    
    return {
      title: title,
      ingredients: uniqueIngredients,
      url: window.location.href
    };
  } catch (error) {
    console.error('Błąd podczas parsowania składników:', error);
    return null;
  }
}

// Nasłuchuj na wiadomości z popup
chrome.runtime.onMessage.addListener((request, sender, sendResponse) => {
  if (request.action === 'getIngredients') {
    const data = extractIngredients();
    sendResponse(data);
  }
});

// Automatycznie sprawdź czy są składniki po załadowaniu strony
window.addEventListener('load', () => {
  setTimeout(() => {
    const data = extractIngredients();
    if (data && data.ingredients.length > 0) {
      console.log(`Znaleziono ${data.ingredients.length} składników w przepisie "${data.title}"`);
      console.log('Składniki:', data.ingredients);
    }
  }, 1000);
});