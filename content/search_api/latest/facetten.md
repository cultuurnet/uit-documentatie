---
---

# Facetten

De parameter ```facetfield``` maakt het mogelijk om de facetten op te vragen die relevant zijn voor de zoekquery.

Wanneer een ```facetField``` meegegeven wordt aan de search query, dan wordt in de output teruggegeven:

* Een opsomming van de mogelijke waardes van het facet met voor iedere waarde het aantal resultaten
* Het totaal aantal resultaten
* De zoekresultaten

Opmerking: verschillende facetten kunnen met elkaar overlappen, dus een document kan zich in meer dan één facet bevinden. Bijvoorbeeld een resultaat bevindt zowel zich in het facet “today” als in het facet “thisweekend”.

Je kan elk veld uit de UiTdatabank gebruiken als ```facetField``` en er zijn drie speciale facetten:

- datetype
- category
- dimensie

## Veld als facet

**Voorbeeld**

Zoek volgens facet “stad”

```
{{site.search_api_server}}/search?q=Speelgoed&rows=10&facetField=city
```

Bekijk de volledige [lijst van geïndexeerde velden]({% link content/search_api/latest/referentiegids.md %}).

## Facet “datetype”

Datetype is een apart te gebruiken zoekveld en een geldig ```facetField```.

Het facettype “datetype” bevat volgende facetten:
- today
- tomorrow
- thisweekend
- nextweekend
- next7days
- next14days
- next30days
- next3months
- next6months
- next12months
- permanent

```
{{site.search_api_server}}/search?q=Speelgoed&rows=10&facetField=datetype
```


## Facet “category”

Category is geen zoekveld, maar wel een geldig ```facetField```.

Ieder document behoort tot één of meerdere categorieën. Een categorie behoort tot een domein.

```
{{site.search_api_server}}/search/?q=*:*&rows=2&facetField=category
```

Een specifieke toevoeging voor de UiTdatabank maakt het mogelijk om alle documenten te vinden waaraan een categorie is toegekend EN de documenten waaraan een onderliggende categorie is toegekend.

D.m.v. de velden category_id en category_name kan gezocht worden op de categorie. Voor elk document worden ook de category_id en category_name van de parent categorieen geïndexeerd. Zo zal “Bezoek de Bibliotheektoren van Leuven” ook gevonden worden als gezocht wordt op categorie “Bezoeken”.

Deze query geeft geen resultaten:

```
{{site.search_api_server}}/search?q=exact_category_name:Doen
```

Deze query toont wel alle events die in een subcategorie van “Doen” zitten terug (workshops, quizzen, …):

```
{{site.search_api_server}}/search?q=category_name:Doen
```

Een overzicht van alle categorieën en een uitleg over hoe de UiTdatabank categorisatieservice te consulteren vind je [hier]({% link content/categorisatie/latest/start.md %}).

## Facet “categorie dimensie”

Op basis van de verschillende eigenschappen van een document, onderscheiden we verschillende dimensies van categorisatie. Voorbeeld: voor een event kunnen we stellen dat elk event, onder meer, een bepaald type heeft (tentoonstelling, festival, beurs, etc.) en een bepaalde doelgroep (gezinnen, kinderen tussen 12 en 14 jaar, etc.).

Aan elke dimensie (bv. “type”) wordt vervolgens een geheel van categorieën of een categorisatiekorf (bv. “tentoonstelling”, “festival”, etc.) verbonden. De categorieën hebben uitsluitend betrekking op één specifieke dimensie.

Het is nu mogelijk om te zoeken/filteren/facetteren op categorie dimensies. Elke dimensie kan als volgt aangesproken worden: category_{dimensie}name of category{dimensie}_id.

Het overzicht van alle dimensies is hier te vinden: http://taxonomy.uitdatabank.be/api/domain/.

***Voorbeeld***

Alle events in Gent thematisch gefacetteerd

```
{{site.search_api_server}}/search?q=*.*&rows=0&group=event&facetField=category_theme_name&fq=city:Gent
```
