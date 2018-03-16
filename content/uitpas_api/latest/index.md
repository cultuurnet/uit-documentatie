---
---

# UiTPAS API 3.0 : referentie
Deze referentie geeft een overzicht van de beschikbare UiTPAS API-endpoints en entiteiten.

## Conventie i.v.m. URLs
Alle URLs hebben de volgende opbouw:
```
{server}/uitid/rest/{endpoint}
```

Voorbeeld: ```https://acc.uitid.be/uitid/rest/uitpas/distributionkey/organiser/{id}```

De URL ```{server}/uitid/rest``` noemen we verder ```{prefix}```.

## Authenticatie
De mogelijkheden om te authenticeren op de API worden beschreven in het onderdeel [Authenticatie en autorisatie](http://documentatie.uitdatabank.be/content/authenticatie-autorisatie/latest/index.html)