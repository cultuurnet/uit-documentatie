---
---

# publiq investeert in een toekomstgerichte werking

publiq wil zijn gebruikers, partners en leveranciers kwalitatieve tools en een toekomstgerichte dienstverlening bieden. Technologieën die verouderen lopen echter tegen de limieten aan van wat mogelijk is qua performantie en functionaliteiten. Dit valt niet te rijmen met de service die publiq wenst te garanderen. publiq investeert daarom enerzijds in de ontwikkeling van futureproof alternatieven, en plant anderzijds de stelselmatige afbouw van verouderde tools.

## Overzicht end-of-life status producten

Welke technologieën wanneer uitgefaseerd worden, vind je terug in onderstaande tabel. Deze toont de timings voor de stopzetting van (ondersteuning op) de producten, en welke de voorziene volwaardige alternatieven zijn. De tabel wordt in de toekomst verder aangevuld voor alle tools die partners en leveranciers gebruiken voor het aanleveren en ophalen van UiTdatabank-activiteitendata.

| Product | Release | Einde support | Einde gebruik | Technisch alternatief |
| --- | --- | --- | --- | --- |
| [Search API 1](#migratiescenarios-voor-de-oudste-versie-van-de-search-api-sapi1) | 2007 | 1/11/2019 | 1/11/2019 |  Widgets v3 of Search API 3 |
| [Search API 2](#migratiescenarios-voor-de-oudste-versie-van-de-search-api-sapi1) | yyyy | dd/mm/yyyy | dd/mm/yyyy | Widgets v3 of Search API 3 |
| [FTP import](#migratiescenarios-voor-de-oudste-versie-van-de-search-api-sapi1) | yyyy | dd/mm/yyyy | dd/mm/yyyy | Entry API v3 of manuele invoer op www.uitdatabank.be |
| [Entry API 2](#migratiescenarios-voor-de-oudste-versie-van-de-search-api-sapi1) | yyyy | dd/mm/yyyy | dd/mm/yyyy | Entry API v3 of manuele invoer op www.uitdatabank.be |

# Hoe je integraties futureproof maken?

Voor de producten waarvan de end-of-life datum vastligt, worden de mogelijke alternatieven hieronder opgelijst.

## Migratiescenario's Search API (v1 en v2)

Om bestaande integraties op basis van de Search API v1 en Search API v2 voor te bereiden op de stopzetting van de service tegen november 2019, zijn er twee scenario's:

### 1. Ontwikkel een implementatie op basis van Search API v3

Je kan opnieuw een integratie op maat ontwikkelen, met de nieuwste versie van de Search API. Deze API op basis van het JSON LD-formaat is performanter en beter doorzoekbaar op basis van Elasticsearch. Het lightweight Linked Data-formaat en de open standaarden van [schema.org](http://schema.org/Event) maken hem bovendien SEO-vriendelijk. Deze API won in 2019 de prijs voor [API van het jaar](https://www.publiq.be/nl/nieuws/de-uitdatabank-wint-de-award-voor-api-van-het-jaar) 

#### Documentatie:
> [Documentatie Search API 3](https://documentatie.uitdatabank.be/content/search_api_3/latest/start.html)
> [Vertaaltabel zoekqueries SAPI 1 naar SAPI 3](https://documentatie.uitdatabank.be/content/migratie-sapi/latest/sapi1.html)
> [Vertaaltabel zoekqueries SAPI 2 naar SAPI 3](https://documentatie.uitdatabank.be/content/migratie-sapi/latest/sapi2.html)

Je krijgt toegang tot onze API door een project aan te maken op [projectaanvraag.uitdatabank.be](https://projectaanvraag.uitdatabank.be). 

### 2. Maak een agenda op basis van gebruiksvriendelijke widgets

Je kan ook gebruik maken van widgets, kant-en-klare HTML-modules waarmee je in enkele klikken een performante en mobile-friendly activiteitenkalender samenstelt. Je hebt geen technische kennis nodig om een widget te configureren. De widgets bieden filter- en zoekmogelijkheden op maat en uitgebreide configuratiemogelijkheden (HTML, CSS, JS) waardoor deze naadloos in een website ingepast kunnen worden.

#### Documentatie:
> [Widgets](https://documentatie.uitdatabank.be/content/widgets/latest/start.html)

Je kan je widget volledig zelf configureren na het aanmaken van een project op [projectaanvraag.uitdatabank.be](https://projectaanvraag.uitdatabank.be). 

## Migratiescenario's FTP-imports en Entry API v2

### 1. Evenementen in UiTdatabank importeren met Entry API 3

Voor een bestaande integratie op basis van SAPI 1 of SAPI 2 kan opnieuw een integratie op maat ontwikkeld worden met de nieuwste versie van de Search API. Deze API op basis van het JSON LD-formaat is performanter en beter doorzoekbaar op basis van Elasticsearch. Het lightweight Linked Data-formaat en de open standaarden van [schema.org](http://schema.org/Event) maken hem bovendien SEO-vriendelijk.

#### Documentatie:
> [Entry API via JSON](https://documentatie.uitdatabank.be/content/entry_api_3/latest/start.html)

### 2. Je evenementen handmatig invoeren op www.uitdatabank.be

Organiseer je minder dan 100 activiteiten per jaar? Dan raden we je aan je evenementen in te voeren via www.uitdatabank.be. Je evenementen worden vervolgens meteen op UiTinVlaanderen en tal van onze andere kanalen gepubliceerd.
