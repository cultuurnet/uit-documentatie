---
---

# Suggesties

Het kan handig zijn om zoektermen voor te stellen op basis van (incomplete) user input. Hiertoe kan men de Solr suggester gebruiken.

## Suggesties tijdens user input

### Suggesties van zoektermen

Het is mogelijk een lijst van overeenkomende zoektermen te suggereren. De bron is in dit geval een eerder gelanceerde zoekopdracht.

```
{{site.search_api_server}}/search/suggest
```

| Parameter	| Beschrijving |
|--|--|
|q|	Zoekopdracht (minstens drie karakters)|
|type|	Indien niet opgegeven wordt in alle document types gezocht. Mogelijkheden: event, actor, production
|max	| Maximum aantal suggesties dat teruggegeven wordt

Response: lijst van overeenkomende zoektermen

**Voorbeeld**

```
{{site.search_api_server}}/search/suggest?q=con
```

### Suggesties van items

Het is mogelijk om zoekresultaten voor te stellen op basis van incomplete user input. De bron is in dit geval de documenten opgeslagen in de index.

```
{{site.search_api_server}}/search/suggest/item Parameters:
```

| Parameter	| Beschrijving |
|--|--|
|title	| Zoekopdracht (minstens drie karakters)
|type |	Indien niet opgegeven wordt in alle document types gezocht. Mogelijkheden: event, actor, production
|max|	Maximum aantal suggesties dat teruggegeven wordt
|fq	| Filter Query|

Response: lijst van overeenkomende items

**Voorbeeld**

```
{{site.search_api_server}}/search/suggest/item?title=Speel&fq=asset:true
```

## Suggesties i.v.m. spellingcontrole

De spellingcontrole is een uitbreiding op de gewone search request, die kan aangesproken worden via de spellcheck parameter.

Response: extra lijst van mogelijk verbeterde zoektermen.

Voorbeeld: Kamaguka geeft suggesties kamagurka, kamasutra en kiwanuka


```
{{site.search_api_server}}/search?q=kamaguka&spellcheck=true
```
