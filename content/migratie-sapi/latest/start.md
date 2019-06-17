---
---

# publiq investeert in een toekomstgerichte werking

publiq wil zijn gebruikers, partners en leveranciers kwalitatieve tools en een toekomstgerichte dienstverlening bieden. Technologieën die verouderen lopen echter tegen de limieten aan van wat mogelijk is qua performantie en functionaliteiten. Dit valt niet te rijmen met de service die publiq wenst te garanderen. publiq investeert daarom enerzijds in de ontwikkeling van futureproof alternatieven, en plant anderzijds de stelselmatige afbouw van verouderde tools.

## Overzicht end-of-life status producten

Welke technologieën wanneer uitgefaseerd worden, vind je terug in onderstaande tabel. Deze toont de timings wat betreft de stopzetting van (ondersteuning op) de producten, en welke de voorziene futureproof alternatieven zijn. De tabel wordt in de toekomst verder aangevuld voor alle tools die partners en leveranciers gebruiken voor het aanleveren en ophalen van UiTdatabank-activiteitendata.

| Product | Release | Einde support | Einde gebruik | Technisch alternatief |
| --- | --- | --- | --- | --- |
| [Oudste versie Search API (SAPI1)](#sapi1---migratiescenarios-voor-de-oudste-versie-van-de-search-api-sapi1) | 2007 | 1/11/2019 | 1/11/2019 | widgets & nieuwe Search API (SAPI3) |

# Hoe je integraties futureproof maken?

publiq voorziet ter omkadering van haar partners en leveranciers de nodige documentatie en migratiescenario's om verouderde integraties futureproof te maken. Voor de producten waarvan de end-of-life datum vastligt, worden de mogelijke alternatieven hieronder opgelijst.

  ## Migratiescenario's voor de oudste versie van de Search API (SAPI1)

Om bestaande integraties op basis van de oudste versie van de Search API (SAPI1) voor te bereiden op de stopzetting van de service tegen november 2019, zijn er twee scenario's:

### 1. Ontwikkel een implementatie op basis van de nieuwe JSON LD-API

Voor een bestaande integratie op basis van SAPI1 kan opnieuw een integratie op maat ontwikkeld worden met de nieuwste versie van de Search API. Deze API op basis van het JSON LD-formaat is performanter en beter doorzoekbaar op basis van Elasticsearch. Het lightweight Linked Data-formaat en de open standaarden van [schema.org](http://schema.org/Event) maken hem bovendien SEO-vriendelijk.

De documentatie over de nieuwe Search API vind je onder [UiTdatabank doorzoeken met Search API 3 (JSON)]({% link content/search_api_3/latest/start.md %}).
Om te helpen bij het vertalen van oude SAPI1-zoekqueries naar het nieuwe formaat, werd ook [een handleiding]({% link content/migratie-sapi/latest/sapi1.md %}) voorzien.

Voor het aanvragen van test-en productiecredentials voor de nieuwe API, kan je terecht op [projectaanvraag.uitdatabank.be](https://projectaanvraag.uitdatabank.be). 

   ### 2. Maak een agenda op basis van gebruiksvriendelijke widgets

Voor een bestaande SAPI1-integratie bestaat ook de mogelijkheid om over te schakelen naar agenda-widgets. Op basis van de JSON LD-API werden nieuwe kant-en-klare html-modules ontwikkeld voor makkelijke integratie van een mobile-friendly activiteitenkalender. De widgets bieden filter- en zoekmogelijkheden op maat en uitgebreide configuratiemogelijkheden (HTML, CSS, JS) waardoor deze naadloos in een website ingepast kunnen worden.

De documentatie over de widgets vind je onder ['Aan de slag met widgets']({% link content/widgets/latest/start.md %}).

Om een widget-implementatie op te starten, kan je terecht op [projectaanvraag.uitdatabank.be](https://projectaanvraag.uitdatabank.be). 
