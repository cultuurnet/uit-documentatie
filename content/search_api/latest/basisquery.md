---
---

# Basisquery

Met de q parameter kan je zowel doorheen alle tekstvelden als op een specifiek veld zoeken. Je kan zoeken op een bereik, via wildcards en op exacte zoektermen. Met booleaanse operatoren maak je combinaties van zoekparameters.

## Vrij zoeken (full text search)

Voeg het vrij tekstveld toe aan de q parameter.

```
{{site.search_api_server}}/search?q=concert
```

## Search op specifiek veld

Voorzie de naam van het veld en de zoekwaarde, gescheiden met een dubbelpunt. Hier vind je een overzicht van alle [geïndexeerde velden]({% link content/search_api/latest/referentiegids.md %}).

```
{{site.search_api_server}}/search?q=city:Gent
```

## Zoeken op bereik (range)

Gebruik vierkante haken ```[ ]``` om te zoeken binnen een tijdsbereik of een getallenbereik.

```
{{site.search_api_server}}/search?q=availablefrom:[NOW+TO+*]
```

```
{{site.search_api_server}}/search?q=agefrom:[*+TO+16]
```

```
{{site.search_api_server}}/search?q=city:[*+TO+Gent]
```

## Jokertekens (wildcards)

De Search API ondersteunt wildcards bij het zoeken binnen één bepaald veld. Wildcards niet ondersteund bij een full text search.

Beschikbare wildcards:

* Een vraagteken ```?``` zoekt op één karakter
* Een asterisk ```*``` zoekt op 0 tot n karakters

Beide wildcards kan je zowel in het begin, in het midden als op het einde van een zoekterm gebruiken.

Om het event met ID 85bf1975-ec66-4c8f-87f5-4f73774d80d5 te zoeken, zijn dus volgende queries geldig :

```
q=cdbid:*bf1975-ec66-4c8f-87f5-4f73774d80d5
```

```
q=cdbid:?5bf1975-ec66-4c8f-87f5-4f73774d80d5
```

```
q=cdbid:85bf1975-ec*7f5-4f73774d80d5
```

```
q=cdbid:85bf1975-ec66-4c8f-87f5-*
```

## Booleaanse operatoren

Combineer zoektermen met de booleaanse operatoren ```AND```, ```OR``` en ```NOT```.

```
{{site.search_api_server}}/search?q=cultuurcentrum AND berchem
{{site.search_api_server}}/search?q=keywords:cultuurcentrum AND A-kaart AND city:Berchem
```

## Exacte zoektermen

Zoek op exacte overeenkomsten met aanhalingstekens ```" "```.

```
{{site.search_api_server}}/search?q=location_label:”cultuurcentrum berchem”
```
