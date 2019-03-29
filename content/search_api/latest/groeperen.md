---
---

# Groeperen

In de Solr index worden events, actors en productions op dezelfde manier behandeld. Bij een full text search op bv. concert zullen zich in de resultaten dus zowel events, actors als productions bevinden. Zoeken op een enkel type kan door een filter query mee te geven op het type veld.

Voorbeeld alleen events in zoekresultaten

 ```
{{site.search_api_server}}/search?q=*.*&fq=type:event&group=event
```

Een event wordt potentieel op verschillende Solr documenten gemapt. Wanneer je één resultaat per event wil, moet je dus groeperen op het event ID.


```
{{site.search_api_server}}/search?q=*.*&fq=type:event&group=event
```

Het is ook mogelijk om events te groeperen per production.

```
{{site.search_api_server}}/search?q=*.*&group=event_production
```

De events zullen hier niet alleen gegroepeerd worden, maar het event item zal ook vervangen worden door het production item. (Ook al worden enkel events gezocht) Door de denormalistatie van de event data is het mogelijk om te zoeken op events die NU bezig zijn.

```
{{site.search_api_server}}/search?q=*.*&fq=type:event&fq=startdate:[*+TO+NOW]&fq=enddate:[NOW+TO+*]]
```
