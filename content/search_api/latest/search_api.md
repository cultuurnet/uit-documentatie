---
---

# Search API

De Search API van UiTdatabank is gebouwd op **Apache Solr** versie 4.4. De Search API geeft de zoekresultaten standaard terug in het documentformaat **CdbXML 3.2**.

Om de Search API aan te spreken, moet je gebruik maken van OAuth via een **consumer request** met key en secret. Het verkrijgen van een testkey is gratis en is beschreven in de gids ['Een project aanvragen']({% link content/integratie-op-je-eigen-website/latest/start.md %}).

## Basis syntax

```
{{site.search_api_server}}/search
```

| Parameter	| Beschrijving| Voorbeeld|
| -- | -- | -- |
| q | [Basisquery]({% link content/search_api/latest/basisquery.md %}): vrije tekst of Solr Query formaat. Verplicht veld. | q=concert |
| fq | [Filterquery]({% link content/search_api/latest/filteren.md %}): Solr query die het resultaat filtert zonder de scores van de documenten te beïnvloeden.  | fq=city:gent |
| start | Startpositie (gebruikt bij paginatie). Default: 0  | start=10 |
| rows | Aantal rijen. Maximum: 10000. Default: 50  | rows=10 |
| sort | [Sorteerveld]({% link content/search_api/latest/sorteren.md %}). Default: score desc | sort=city+asc |
| pt | [Geografisch zoeken]({% link content/search_api/latest/geografisch_zoeken.md %}) |  pt=51.036906,3.720739 |
| sfield | [Geografisch zoeken]({% link content/search_api/latest/geografisch_zoeken.md %}) |  sfield=physical_gis |
| d | [Geografisch zoeken]({% link content/search_api/latest/geografisch_zoeken.md %})|  d=5 |
| facetField | [Gefacetteerde classificatie]({% link content/search_api/latest/facetten.md %}) |  facetField=category |
| transform | Standaard worden zoekresultaten als volledige CdbXML 3.2 documenten teruggegeven. Indien slechts een beperkt aantal velden nodig is, typisch voor weergave van zoekresultaten in lijsten, wordt de parameter transform gebruikt. Zie [Output formaat]({% link content/search_api/latest/output_formaten.md %}). |  transform=list |
| past | Standaard worden evenementen uit het verleden uit de zoekresultaten gefilterd. Default: false | past=true |
| datetype | Een extra veld om eenvoudig te filteren op veelgebruikte tijd ranges, en als facetFilter. Volgende mogelijkheden bestaan: today,tomorrow, thisweekend, nextweekend, next7days, next14days, next30days, next3months, next6months, next12months, permanent. |  datetype=today |

## Mapping

UiTdatabank bevat zowel events, actors en productions.

Actors en producties hebben een één-op één mapping met Solr documenten.

Een event kan echter op meer dan één document mappen. Een Solr document komt namelijk overeen met een tijdsgebonden event. Dit wil zeggen dat een event dat op vijf verschillende tijdstippen doorgaat, op vijf verschillende documenten wordt gemapt. Dit maakt het mogelijk om te zoeken op events die “nu” doorgaan.

Bij het searchen moet hiermee wel rekening worden gehouden: als men slechts één resultaat per event wil, dan moet men een “group” gebruiken.

## Meer info

* [Solr reference guide](http://archive.apache.org/dist/lucene/solr/ref-guide/apache-solr-ref-guide-4.4.pdf)
* [Solr wiki](http://wiki.apache.org/solr/)
