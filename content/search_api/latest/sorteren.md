---
---

# Sorteren

Solr maakt bij een query een ranking aan van documenten. Ieder document / resultaat krijgt een bepaalde score die de relevantie aangeeft in het kader van de betreffende search. Deze score, een pseudo-veld kan je ook opvragen. Wanneer je geen sorteervolgorde opgeeft,

Voor deze ranking maakt Lucene gebruik van het [tf.idf model](http://en.wikipedia.org/wiki/Tf–idf).

Je kan sorteren op ieder niet-multivalued veld dat geïndexeerd is (zie [Geïndexeerde velden]({% link content/search_api/latest/referentiegids.md %})). Bovendien kan je ook sorteren door middel van een functie (zie [Geografisch zoeken]({% link content/search_api/latest/geografisch_zoeken.md %})).

## Sorteren op titel

Er is een extra veld ```title_sort``` voorzien waarmee je op titel sorteert.

```
{{site.search_api_server}}/search?q=*.*&sort=title_sort+asc
```

Als men binnen de sortering gebruik wil maken van de standaard-ranking van de documenten, dan geef je ```score desc``` mee aan de sort parameter.

```
{{site.search_api_server}}/search?q=*.*&sort=title_sort+asc,score+desc
```
