---
---

# Output formaten

Standaard worden de zoekresultaten als CdbXML 3.2 documenten teruggegeven.

Voorbeeld standaard weergave:

 ```
{{site.search_api_server}}/search?q=*:*
 ```


## Output als json

Om de zoekresultaten in json formaat terug te geven, moet in de header van de http request “Accept: application/json” toegevoegd worden.

## Detailweergave

Om de detailweergave van een document te bekomen, maakt men gebruik van

 ```
{{site.search_api_server}}/detail/{type}/{cdbid}
 ```

Voorbeeld detailweergave

 ```
{{site.search_api_server}}/detail/event/197ae1c0-cf5b-49de-9373-eddaecd3b4cc
 ```
