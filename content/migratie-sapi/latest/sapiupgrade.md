---
---

# Van SAPI 1 & 2 naar SAPI 3 

Dit boek begeleidt je in de overstap van SAPI 1 of SAPI 2 naar SAPI 3.

## Constructie query

Om lijsten te kunnen opvragen met de UiTdatabank Search API moet je drie zaken opgeven:

1. De ```collection``` waarin moet gezocht worden. Deze zijn gewijzigd ten opzichte van API 1. API 3 onderscheidt volgende collections: events, places, organizers. Producties worden niet langer ondersteund.
2. De ```inputparameter(s)```: de parameters waarmee je de geselecteerde collectie wil gaan bevragen. Dit kan een vrije zoekterm zijn, een categorisatiefacet, een definitie van een aantal zoekresultaten, etc. Sommige parameters kunnen worden gebruikt als negatie of worden gecombineerd (zie verder).
3. Een ```API-key```. Deze dien je mee te geven in de header.


**Voorbeelden**
- om een full text query binnen de search method in de events collection te lanceren stuur je volgende request: ```https://search.uitdatabank.be/events/?```
- om items van het type ‘bibliotheek’ binnen de xmlview method in de actors collection op te halen stuur je volgende request:
```https://search.uitdatabank.be/places/?q=terms.label:”Bibliotheek”```

## Input parameters

Onderstaande tabel biedt een mapping van oude inputparameters naar advanced query's binnen SAPI 3.
De volledige lijst van mogelijke nieuwe inputparameters is te vinden op https://documentatie.uitdatabank.be/content/search_api_3/start.html

### Events

#### ZOEKEN OP WIE / WAT

| Parameter SAPI 1 | Parameter SAPI 2 | Parameter SAPI 3 | Beschrijving | Datatype voor input | Voorbeeld |
| -- | -- | -- | -- | -- | -- |
| ```q``` | ```q``` | ```q``` | Een vrije zoekterm. | Text | q=Puppet Shadows q="Last shadow puppets" |
| ```agebetween``` | ```agefrom``` | ```typicalAgeRange``` | Minimum leeftijd tussen deze twee waarden  | Number Number | typicalAgeRange:[0 TO 12] |
| ```isfree``` | ```price:0``` | ```price:0``` | Gratis events | Fixed | price:0 |
| ```permanent``` | ```datetype=permanent``` | ```calendarType:permanent``` | Permanente events (vb. vaste collecties, monumenten, etc.) | Fixed | calendarType:permanent |

#### ZOEKEN OP KRUISVERWIJZINGEN EN KEYWORDS

| Parameter SAPI 1 | Parameter SAPI 2 | Parameter SAPI 3 | Beschrijving | Datatype voor input | Voorbeeld |
| -- | -- | -- | -- | -- | -- |
| ```k``` | ```keywords``` | ```labels``` | labels, keywords of tags | text | labels:UiTPAS* |


#### ZOEKEN OP CATEGORIEËN

| Parameter SAPI 1 | Parameter SAPI 2 | Parameter SAPI 3 | Beschrijving | Datatype voor input | Voorbeeld |
| -- | -- | -- | -- | -- | -- |
| ```eventtype``` of ```thema``` | ```category_eventtype_name``` of ```category_eventtype_id``` |```terms.label``` of ```terms.id``` | bv. concert, pop en rock | Text of identifier |terms.label:"Concert" / terms.id:"0.50.4.0.0" |
| ```locationtype``` | ```location_category_name``` of ```location_category_id``` | ```location.terms.label``` of ```location.terms.id``` | bv. kunstencentrum, bibliotheek  | Text | location.terms.label:"Bibliotheek" / location.terms.id:kI7uAyn2uUu9VV6Z3uWZTA |

#### ZOEKEN OP KALENDERINFORMATIE

| Parameter SAPI 1 | Parameter SAPI 2 | Parameter SAPI 3 | Beschrijving | Datatype voor input | Voorbeeld |
| -- | -- | -- | -- | -- | -- |
| ```daterange``` | ```startdate, enddate```| ```dateRange``` |  Alle evenementen die tussen een bepaalde start- en een bepaalde einddatum plaatsvinden.| dateRange:[2020-01-01T00:00:00+01:00 TO 2020-01-01T23:59:59+01:00] | dateRange:[2020-01-01T00:00:00+01:00 TO 2020-01-01T23:59:59+01:00] | 
| ```date``` | ```startdate, enddate```| ```dateRange``` | Alle evenementen die plaatsvinden op één of meerdere tijdstippen | dateRange:yyyy-mm-ddThh:mm:ss+0h:00 | dateRange:2020-01-01T00:00:00+01:00|

#### ZOEKEN OP GEOGRAFISCHE INFORMATIE

| Parameter SAPI 1 | Parameter SAPI 2 | Parameter SAPI 3 | Beschrijving | Datatype voor input | Voorbeeld |
| -- | -- | -- | -- | -- | -- |
| ```zip``` | ```zipcode``` | ```address.\*.postalCode``` | Postcode van de locatie | Number | address.\*.postalCode:2020 |
| ```city``` | ```city``` |```address.\*.addressLocality``` | Stad van de locatie | Text | address.\*.addressLocality:Antwerpen |
