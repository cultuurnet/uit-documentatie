---
---

# Search API 1.0

Onderstaande documentatie dient enkel ter referentie voor bestaande projecten. Search API v1 is end-of-life en zal binnen afzienbare tijd niet meer beschikbaar zijn. Voor nieuwe projecten verwijzen we naar de documentatie van UiTdatabank Search API v2.

De UiTdatabank Search API kan je op twee verschillende manieren gebruiken. Afhankelijk van het type systeem dat je wil gaan bouwen kan je ervoor kiezen te werken met live data of databasesynchronisatie

## Live data

Via deze methode kan je voor iedere uitgevoerde zoekopdracht of opgevraagde detailpagina de Search API aanroepen. Je kan op deze manier:

- Resultatenlijsten opvragen aan de hand van tal van parameters
- Detailpagina’s opvragen

## Databanksynchronisatie

Als er binnen een toepassing nog bewerkingen moeten gedaan worden op de agenda-informatie voor publicatie, is live werken met de API niet altijd mogelijk. Je kan daarom ook de API aanroepen om de volledige gegevensset te kopiëren naar een eigen databank. Nadelen van deze manier van werken zijn: snelle responsetijden worden niet gegarandeerd en je moet opnieuw een zoekmachnine gaan bouwen terwijl er al een performante machine beschikbaar is.

## Keys

Om de UiTdatabank Search API te kunnen aanspreken heb je een zgn. key nodig, een sleutel die je toegang geeft tot de voor jou relevante informatie. Deze key wordt geprogrammeerd volgens de behoeftes van het project. Om een key te bekomen moet je een project aanvragen op tools.uitdatabank.be. Zodra je project wordt goedgekeurd door CultuurNet ontvang je de key en kan je aan de slag.
