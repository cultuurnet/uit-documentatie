---
---

# Wat zijn groepfilters?

Aan een zoekbox, zoekresultatenblok en verfijningenblok kan je groepfilters definiëren.

Een groepfilter is een verzameling van één of meerdere SAPI3-queries die je een logische naam geeft. Je kan de verschillende opties binnen een groep op verschillende manieren aan een surfer tonen (via een uitschuiflijst of via aankruisvakjes).

De groepfilters stellen je in staat filters te maken op maat je doelgroep.

## Voorbeeld: kampzoeker
Op [Kampzoeker.be](https://www.kampzoeker.be) bevat de zoekbox bovenaan een uitschuiflijst met daarin keuzemogelijkheden tussen de verschillende vakantieperiodes.
Deze periodes zijn samengesteld op basis van groepfilters.

## Zelf aan de slag gaan
Om een eigen groepfilter samen te stellen geef je je filtergroep een passende naam (vb. Vakantieperiodes).
Vervolgens definieer je één of meerdere filters, die je voorziet van
* een logische naam (vb. Paasvakantie 2018)
* een query (vb. ```dateRange:[2018-04-02T00:00:00+01:00 TO 2018-04-15T23:59:59+01:00]``` )

Voor het definiëren van je query maak je gebruik van [SAPI 3-syntax]({% link content/search_api_3/latest/getting-started.md %})

![Kampzoeker](/img/kampzoeker.png "Kampzoeker")

