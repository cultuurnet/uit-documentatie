---
---

# Stijlgids

Voor het stijlen van je widget maak je gebruik van CSS. Een CSS-regel bestaat steeds uit twee onderdelen:
* **Een selector:** het element dat je wil stijlen (vb. ```a```). 
Elementen die bij elkaar horen bevatten dezelfde klassenaam (vb. ```.cnw_card_title```)
* **Een of meerdere stijldefinities** bestaande uit een eigenschap (vb. ```font-size```) en een waarde (vb. ```2em```). Elke definitie sluit je af met een puntkomma.

Voorbeeld:
```
.cnw_card-title a {
font-size: 2em;
font-weight: 700;
color: red;
}
```

Alle eventtiels van de widget worden groter, vet en in het rood gestijld.
Let er op dat je steeds de juiste widget-klasse meegeeft in de stijling. Wanneer de klasse ontbreekt wordt de meegegeven stijling ook toegepast op andere elementen van de pagina.


## Selectors

Om je op weg te helpen met het stijlen geven we hieronder per widgetblok een overzicht van de meest voorkomende selectors (en hun bijhorende klasse).

### Zoekbox

| Onderdeel | Selector | Klasse |
| -- | -- | -- | 
| Zoekbox (geheel) | div | .cnw_search_form |
| UiT-logo | img | .logo-uiv |
| Tekst bij UiT-logo | h2 | nvt |
| Label van een tekstbox of uitschuiflijst | label | nvt |
| Label van extra groepfilters | span | .cnw_form-check--label |
| Keuzemogelijkheden (checkbox) | label | .form-check-label |
| Zoekknop | div | .cnw_btn-search |

<a id="zoekresultaten"></a>
<h3>Zoekresultaten</h3>

| Onderdeel | Selector | Klasse |
| -- | -- | -- | 
| Zoekresultaten (geheel) | div | .cnw_searchresult__results |
| Aantal gevonden resultaten | div | .cnw_searchresult__counter |
| Verbergfilters | label | .cnw_form-check-label |
| Blok eventtitel | h2 | .cnw_card-title |
| Eventtype | span | .cnw_badge |
| Eventtitel | h2 a | .cnw_block-title |
| Beschrijving | p | .cnw_card-description |
| Afbeelding (links)| img | .cnw_img_responsive left |
| Afbeelding (rechts)| img | .cnw_img_responsive right |
| UiTPASicoon | span | .cnw_sticker-uitpas |
| Vliegicoon | span | .cnw_sticker--vlieg |
| Lijstelementen (label) | dt | .cnw_col-3 |
| Lijstelementen (info) | dd | .cnw_col-9 |
| Labels | div | .cnw_card-labels |
| Lees meer | a | .cnw_btn__card-readmore |
| Pager | li | .cnw_page-item |
| Pager (eerste, volgende, laatste) | li | .cnw_page-link |

### Zoekverfijningen

| Onderdeel | Selector | Klasse |
| -- | -- | -- | 
| Zoekverfijningen (geheel) | div | .cnw_facets |
| Verberg verfijningen | a | .cnw_facets_toggle |
| Titel set van verfijningen | h3 | .cnw_block-title |
| Lijst van verfijningen | ul | .cnw_facet-search |
| Lijstitems | li | .cnw_facet-label  |
| Logo UIV | img | .cultuurnet-logo-uiv  |

### HTML

Het HTML-blok is standaard een paragraaf (selector = p), maar door zelf HTML in het block te schrijven kan je hier van afwijken.

### Tips

| Onderdeel | Selector | Klasse |
| -- | -- | -- | 
| Tipsblok (geheel) | div | .cnw_tips |

De overige selectors voor het tipsblok zijn identiek aan die van de [zoekresultaten](#zoekresultaten).

### Detailpagina

| Onderdeel | Selector | Klasse |
| -- | -- | -- | 
| Detailpagina (geheel) | div | .cnw_searchresult-detail | 
| Eventitel | h1 | .cnw-page-title | 
| Beschrijving (kort) | div | .cnw_detail-short-summary | 
| Beschrijving (volledig) | div | .cnw_detail-full-description |
| Lees meer-knop | a | .cnw_detail-summary-toggle | 
| Afbeelding (links)| img | .cnw_img_responsive left |
| Afbeelding (rechts)| img | .cnw_img_responsive right |
| Info | p | .cnw_searchresult-detail-block-title | 
| Lijstelementen (label) | dt | .cnw_searchresult-detail-label |
| Lijstelementen (info) | dd |  | 
| Terug-knop | p | .cnw_searchresult-detail-back-button |

### Overige

| Onderdeel | Selector | Klasse |
| -- | -- | -- | 
| Laadelement (geheel) | div | .widget-loader--block | 
| Laadelement (tekst) | div | .widget-loader--text | 

## Definities

Voor een overzicht van de verschillende eigenschappen en hun waarden verwijzen we naar [W3Schools](https://www.w3schools.com/css/default.asp).
