---
---
# Taalinstellingen
Standaard wordt de eventinformatie getoond in het Nederlands. Via de taalinstellingen kan je de taal waarin de eventinformatie getoond wordt aanpassen. 
Naast het Nederlands bieden we drie andere talen aan:
- Frans
- Engels
- Duits

## De taalinstellingen van je widget-pagina aanpassen
De taalinstellingen bevinden zich op pagina-niveau en vind je dus rechts in de dropdown naast elke pagina:

![widgets-taalinstellingen](/img/widgets-taalinstellingen.png "widgets-taalinstellingen")

De taalinstellingen brengen je naar een modal waarin je de taal van je widget kan kiezen:

![widgets-taalinstellingen2](/img/widgets-taalinstellingen2.png "widgets-taalinstellingen")

Wanneer de taalinstellingen op een andere taal dan het Nederlands gezet worden, dan:
- zal je eventinformatie in de geselecteerde taal getoond worden, voor zover het evenement vertaald is. Wanneer bepaalde informatie niet vertaald is, wordt teruggevallen op het Nederlands
- worden alle facetten vertaald: 'tentoonstelling' wordt 'exposition' in het Frans, 'Brugge' wordt 'Bruges'. Regio's, steden of gemeenten die geen vertaling hebben (zoals 'Lanaken') worden in het Nederlands getoond
- worden alle labels in de zoekresultaten in (taalonafhankelijke) iconen weergegeven. Alle andere labels (zoals in de zoekbox) dienen nog zelf vertaald te worden

## De content van je agenda beperken tot evementen in één specifieke taal
### Zoeken naar evenementen die vertaald zijn 
Alle evenementen in UiTdatabank zijn beschikbaar in het Nederlands. Invoerders en andere gebruikers van UiTdatabank kunnen via UiTdatabank hun evenement vertalen in het Frans (FR), Engels (EN) en Duits (DE).
Via de zoekparameters van je widget kan je het aantal evenementen in je agenda beperken tot die evenementen waarvan de titel en de beschrijving beschikbaar zijn in die taal. Hiervoor kan je gebruik maken van de `language`-parameter.

Zoeken naar events waarvan de titel en beschrijving beschikbaar is in het Frans:
```
languages:fr
```

Zoeken naar events waarvan de titel en beschrijving beschikbaar is in het Engels:
```
languages:en
```

### Zoeken naar evenementen waarvan de hoofdtaal een andere taal is dan het Nederlands
Het is mogelijk dat bepaald aanbod in UiTdatabank een andere 'hoofdtaal' heeft dan het Nederlands. Dit kan het geval zijn voor bepaald Brussels aanbod).
Wil je evenementen zoeken waarvan die hoofdtaal verschilt van het Nederlands, dan kan je daarvoor de `mainLanguage`-parameters gebruiken:


Zoeken naar events waarvan hoofdtaal Frans is:
```
mainLanguage:fr
```

Zoeken naar events waarvan de hoofdtaal Duits is:
```
mainLanguage:de
```

Meer informatie over zoeken met language-parameters vind je [hier](https://documentatie.uitdatabank.be/content/search_api_3/latest/searching/offers/languages.html).
