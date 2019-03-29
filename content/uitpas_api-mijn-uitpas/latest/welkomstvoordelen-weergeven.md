---
---

# Welkomstvoordelen van een gebruiker weergeven
Welkomstvoordelen zijn voordelen die de gebruiker krijgt bij aansluiting op een kaartsysteem (bij aankoop van een UiTPAS, of bij upgrade van de UiTPAS met een ander kaartsysteem).

O.b.v. het UiTPAS-nummer kunnen we de beschikbare welkomstvoordelen voor een gebruiker ophalen.

**Request**

```
GET {prefix}/uitpas/passholder/{uitpasNumber}/welcomeadvantages
```

Voorbeeld

```
{prefix}/uitpas/passholder/0987654321113/welcomeadvantages
```

**Response**

~~~ xml
<promotion>
    <applicableCardSystems>
        <cardsystem>
            <id>1</id>
            <name>UiTPAS Regio Aalst</name>
        </cardsystem>
    </applicableCardSystems>
    <balies>
        <balie>
            <name>Stedelijk Zwembad Aalst</name>
            <id>A56CEC7E-F377-A942-296E3BCDF4884E07</id>
            <visible>false</visible>
        </balie>
    </balies>
    <cashedIn>false</cashedIn>
    <id>4</id>
    <inSpotlight>false</inSpotlight>
    <owningCardSystem>
        <id>1</id>
        <name>UiTPAS Regio Aalst</name>
    </owningCardSystem>
    <points>0</points>
    <title>1 € voor zwembeurt in zwembad Aalst</title>
</promotion>
~~~

[Voorbeeld response in XML (volledig)]({% link content/uitpas_api/latest/pashouders/ophalen-welkomstvoordelen-voor-pashouder.md %})

Volgende velden heb je nodig:

| Data | Veld | Opmerking |
| --- | --- | --- |
| Naam welkomstvoordeel | promotion > title | - |
| Balies waar je het voordeel kan opnemen | promotion > balies | Lijst van balies waar je het voordeel kan opnemen. |
| Kaartsyste(e)m(en) | promotion > applicableCardSystems | Lijst van de kaartsystemen waar het voordeel toepasbaar is. |
| Status omruil | promotion > cashedIn | Geeft aan op het voordeel werd opgenomen of niet. true of false. |

[Overzicht van alle velden van de entiteit ‘welcomeadvantages’]({% link content/uitpas_api/latest/entiteiten/welcomeadvantage-entiteit.md %})

**Referentie UiTPAS API v3.0**

[Ophalen welkomstvoordelen van een pashouder]({% link content/uitpas_api/latest/pashouders/ophalen-welkomstvoordelen-voor-pashouder.md %})
