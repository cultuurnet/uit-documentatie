---
---

# Constructie query

Om lijsten te kunnen opvragen met de UiTdatabank Search API moet je drie zaken opgeven:

1) De 'collection' waarin moet gezocht worden. Deze zijn gewijzigd tegenover vroeger: voortaan zijn het events, places of organizers. Producties worden niet langer ondersteund.

2) De 'inputparameter(s)': de parameters waarmee je de geselecteerde collectie wil gaan bevragen. Dit kan een vrije zoekterm zijn, een categorisatiefacet, een definitie van een aantal zoekresultaten, etc. Sommige parameters kunnen worden gebruikt als negatie of worden gecombineerd (zie verder).

3) Een API-key. Deze dien je mee te geven in de header. 

Dus: om zoekopdrachten te lanceren selecteer je een outputtype (method) en stuur je één of meerdere vragen (input parameters) naar de verzameling 'events', 'actors' of 'productions' (collection). Je moet deze definiëren in de URL build.uitdatabank.be/api/collection/method?.

Bijvoorbeeld:

- om een full text query binnen de search method in de events collection te lanceren stuur je volgende request:
[https://search.uitdatabank.be/events/?](https://search.uitdatabank.be/events/?)

- om items van het type 'bibliotheek' binnen de xmlview method in de actors collection op te halen stuur je volgende request
[https://search.uitdatabank.be/places/?q=terms.label:"Bibliotheek"](https://search.uitdatabank.be/places/?q=terms.label:"Bibliotheek")

## Input parameters

Onderstaande tabel biedt een mapping van oude inputparameters naar de nieuwe SAPI.
De volledige lijst van mogelijke nieuwe inputparameters is te vinden op https://documentatie.uitdatabank.be/content/search_api_3/start.html

## Events

### ZOEKEN OP WIE / WAT

| Oude naam parameter | Nieuwe naam parameter | Beschrijving | Datatype voor input | Voobeeld |
| q | q | Een vrije zoekterm.  | Text | q=Puppet Shadows, q="Last shadow puppets" |
| agebetween | minAge=..&maxAge=.. | Minimum leeftijd tussen deze twee waarden  | Number Number | minAge=12&maxAge=16 |
| age | minAge | Minimum leeftijd | Number | minAge=18 |
| isfree | maxPrice=0 | Gratis events | Fixed | maxPrice=0 |
| permanent | calendarType:permanent | Permanente events (vb. vaste collecties, monumenten, etc.) | Fixed | calendarType:permanent |

### ZOEKEN OP KRUISVERWIJZINGEN EN KEYWORDS

| Oude naam parameter | Nieuwe naam parameter | Beschrijving |
| k | labels:uitpas | Keywords en tags


### ZOEKEN OP CATEGORIEËN

| Oude naam parameter | Nieuwe naam parameter | Beschrijving | Datatype voor input | Voorbeeld |
| eventtype of thema | terms.label / terms.id | bijv. concert, film, tentoonstelling | terms.label:"Concert" / terms.id:"0.50.4.0.0" |
| locationtype | location.terms.label | bijv. kunstencentrum, bibliotheek,...  | Text | location.terms.label:"Bibliotheek" |

### ZOEKEN OP KALENDERINFORMATIE

| Oude naam parameter | Nieuwe naam parameter | Beschrijving | Datatype voor input | Voorbeeld |
| daterange | Alle evenementen die tussen een bepaalde start- en een bepaalde einddatum plaatsvinden. | Date..Date (yyyy-m-d..yyyy-m-dTH.m) | daterange=2010-04-21..2010-04-28 |
| date | Alle evenementen die plaatsvinden op één of meerdere tijdstippen | Date (yyyy-m-d; yyyy-m-dTH.m) | date=2008-09-19;2008-09-20;2008-09-21 |
| datetype | (d.i. de snelste methode) alle evenementen die tijdens een vastgestelde periode plaatsvinden. | Text (today, tomorrow, thisweek, nextweekend, thismonth, next30days, next3months, next6months, next12months) | datetype=today |

### ZOEKEN OP GEOGRAFISCHE INFORMATIE

| Naam parameter | Beschrijving | Datatype voor input | Voorbeeld |
| zip | Postcode van de locatie | Number | zip=2020 |
| city | Stad van de locatie | Text | city=Antwerpen |
| cityid | CityID van de stad van locatie | Text (0000_CITY) | cityid=2520_RANST |
| regio | ID of naam van een regio | Text or Number | regio=32
regio=Provincie Limburg |
| latlng | GIS-coördinaten van een item. Je kan alle evenementen opvragen die plaatsvinden in een radius rond de vastgestelde coördinaten door een "!" te plaatsen voor de radius. | Decimal;Decimal!Number | latlng=51.022350;4.547600!5km |

### ZOEKEN OP METADATA

| Naam parameter | Beschrijving | Datatype voor input | Voorbeeld |
| createdby | UiTdatabank usernaam die het item heeft aangemaakt | Text | createdby=syximport |
| changedsince | Alle evenementen versturen die sinds een bepaald tijdstip aangemaakt of aangepast waren.
Noteer de datum/tijd notatie (":" is gereserveerd in http URI notation). | Date (yyyy-m-d; yyyy-m-dTH.m) | changedsince=2010-01-19T20.00 |
| hasimage | Alle evenementen met één of meerdere afbeeldingen. | Boolean | hasimage=true |

## Actors

### ZOEKEN OP WIE / WAT

| Naam parameter | Beschrijving | Datatype voor input | Voobeeld |
| q | Een vrije zoekterm. De UiTdatabank full-text index bevat volgende attributen: titel, korte beschrijving, organisatietype, ID. Standaard - indien geen operator wordt meegegeven - worden meerdere woorden gecombineerd met de "AND" operator. Volgende operatoren zijn beschikbaar: OR en dubbele aanhalingstekens voor exacte zoekopdrachten
| Text | q=Kunstencentrum Vooruit, q="Kunstencentrum Vooruit", q=Kunstencentrum OR Vooruit |

### ZOEKEN OP KRUISVERWIJZINGEN EN KEYWORDS

| Naam parameter | Beschrijving | Datatype voor input | Voorbeeld |
| k | Keywords toegevoegd aan de actorfiche van de locatie. | Text | k=UiTinVlaanderen filmlocatie |

### ZOEKEN OP CATEGORIEËN

| Naam parameter | Beschrijving | Datatype voor input | Voorbeeld |
| type | bijv. kunstencentrum, bibliotheek,... Om een bepaald locatietype uit te sluiten, voeg je een "!" toe. Je kan zowel de ID van een categorie gebruiken als het label. | Text (x.x.x.x.x) | locationtype=8.6.0.0.0 |

### ZOEKEN OP GEOGRAFISCHE INFORMATIE

| Naam parameter | Beschrijving | Datatype voor input | Voorbeeld |
| zip | Postcode van de locatie | Number | zip=2020 |
| city | Stad van de locatie | Text | city=Antwerpen |
| cityid | CityID van de stad van locatie | Text (0000_CITY) | cityid=2520_RANST |
| regio | ID of naam van een regio | Text or Number | regio=32
regio=Provincie Limburg |
| latlng | GIS-coördinaten van een item. Je kan alle locaties opvragen die zich in een radius situeren rond de vastgestelde coördinaten door een "!" te plaatsen voor de radius. | Decimal;Decimal!Number | latlng=51.022350;4.547600!5km |

### ZOEKEN OP METADATA

| Naam parameter | Beschrijving | Datatype voor input | Voorbeeld |
| changedsince | Alle evenementen versturen die sinds een bepaald tijdstip aangemaakt of aangepast waren.
Noteer de datum/tijd notatie (":" is gereserveerd in http URI notation). | Date (yyyy-m-d; yyyy-m-dTH.m) | changedsince=2010-01-19T20.00 |
| hasimage | Alle evenementen met één of meerdere afbeeldingen. | Boolean | hasimage=true |

