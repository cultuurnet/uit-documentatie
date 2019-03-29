---
---

# Filterqueries

Het is mogelijk om een resultaatset van documenten te filteren met een filterquery.

De termen die de filterquery gebruikt hebben geen invloed op de score van een resultaat. Bij het uitvoeren van een filter query wordt het ranking algoritme dus niet uitgevoerd, wat een filter query performanter maakt.

Het is dan ook aan te raden om de search termen die de ranking van de documenten niet moeten beïnvloeden, in de filter query te stoppen.

**Voorbeeld**

Alle documenten die de term “concert” bevatten met locatie Gent

```
{{site.search_api_server}}/search?q=concert&fq=city:Gent
```

Er kan meer dan één filter query doorgegeven worden. Het resultaat bevat alleen documenten die zich in de doorsnede van alle filter queries bevinden.

```
{{site.search_api_server}}/search?q=concert%20&fq=city:Gent&fq=agefrom:18
```
