---
---

# UiTPAS-historiek van de gebruiker weergeven

Binnen het UiTPAS-systeem kan een gebruiker:
1. Punten sparen (door een checkin te doen op een UiTPAS event)
2. Voordelen omruilen (tegen punten)
3. Tickets aan kansentarief kopen (enkel voor pashouders met kansenstatuut).

Van de 3 acties afzonderlijk kan een overzicht of historiek opgevraagd worden via de API.

In de frontend kunnen de 3 types van acties eventueel gecombineerd worden in één historiek, geordend op creatie datum.

## Punten historiek

Een pashouder kan punten sparen door een checkin te doen op een UiTPAS event. Iedere checkin geeft recht op een (instelbaar) aantal punten.

![Punten historiek](/img/uitpas_api-mijn-uitpas-historiek-punten.png "Punten historiek")

**Request**

```
GET {prefix}/uitpas/cultureevent/searchCheckins?uid={uid}
```

Voorbeeld

```
{prefix}/uitpas/cultureevent/searchCheckins?uid=22b69dc0-abf7-40f2-8ae7-c1e69811ed7c
```

**Response**

~~~ xml
<checkinActivity>
    <type>12</type>
    <contentType>event</contentType>
    <createdViaId>5C9C73D3-E82F-E7B3-44161E6E3802E64F</createdViaId>
    <createdVia>'t Gasthuys - Stedelijk Museum Aalst</createdVia>
    <creationDate>2015-06-29T11:44Z</creationDate>
    <depiction>//media.uitid.be/fis/rest/../../uiv/picture.jpg</depiction>
    <id>57b00f28-dfff-4f09-90c4-08a6d313fc5c</id>
    <nick>Nickname</nick>
    <nodeID>389FA8E8-D766-B566-E24BF8EF8413B7C7</nodeID>
    <nodeTitle>'t Gasthuys - Stedelijk Museum Aalst</nodeTitle>
    <points>1.000</points>
    <private>false</private>
    <userId>22b69dc0-abf7-40f2-8ae7-c1e69811ed7c</userId>
    <eventLocationLat>50.937940</eventLocationLat>
    <eventLocationLon>4.043132</eventLocationLon>
    <firstName>Firstname</firstName>
    <secondName>middlename</secondName>
    <gender>FEMALE</gender>
    <kansenStatuut>false</kansenStatuut>
    <lastName>Lastname</lastName>
    <organiser>'t Gasthuys - Stedelijk Museum Aalst</organiser>
    <organiserCardSystems>
        <organiserCardSystem>1</organiserCardSystem>
    </organiserCardSystems>
    <userHomeCity>Brussel</userHomeCity>
    <userHomeLocationLat>50.857746</userHomeLocationLat>
    <userHomeLocationLon>4.3463604</userHomeLocationLon>
    <userPoints>10.550</userPoints>
</checkinActivity>
~~~

[Voorbeeld response in XML (volledig)]({% link content/uitpas_api/latest/events/checkins-doorzoeken.md %})


Volgende velden heb je nodig:

| Data | Veld | Opmerking |
| --- | --- | --- |
| Datum | checkinActivity > creationDate | - |
| Event titel | checkinActivity > nodeTitle | - |
| Locatie naam | checkinActivity > createdVia | - |
| Aantal punten | checkinActivity > points | - |

Als er informatie van het event getoond moet worden (buiten de titel), dan kan het event detail opgehaald worden via Search API door een search op ```cdbid``` (vervat in het element ```nodeId```):

Voorbeeld

```
https://www.uitid.be/search/rest/search?q=cdbid:{nodeId}
```

**Referentie UiTPAS API v3.0**

[Checkins doorzoeken]({% link content/uitpas_api/latest/events/checkins-doorzoeken.md %})

## Historiek omgeruilde voordelen weergeven

Gespaarde punten kan een pashouder omruilen tegen ‘omruilvoordelen’.
De omruilvoordelen die door een pashouder omgeruild werden kunnen opgehaald worden o.b.v. UiTPAS-nummer.

**Request**

```
GET {prefix}/uitpas/passholder/{uitpasNumber}/cashedPointsPromotions
```

Voorbeeld

```
{prefix}/uitpas/passholder/0930012345607/cashedPointsPromotions
```

**Response**

~~~ xml
<cashedPromotion>
    <id>18</id>
    <promotion>
        <balies/>
        <cashedIn>true</cashedIn>
        <id>7</id>
        <points>5</points>
        <title>Gratis stickers</title>
    </promotion>
    <cashingDate>2012-02-29T14:18:49+01:00</cashingDate>
    <balie>
        <name>'t Gasthuys - Stedelijk Museum Aalst</name>
        <id>testkey5c9c73d3-e82f-e7b3-44161e6e3802e64f</id>
    </balie>
</cashedPromotion>
~~~

[Voorbeeld reponse in XML (volledig)]({% link content/uitpas_api/latest/pashouders/ophalen-verzilverde-omruilvoordelen.md %})

Volgende velden heb je nodig:

| Data | Veld | Opmerking |
| --- | --- | --- |
| Datum | cashedPromotion > cashingDate | - |
| Voordeel titel | cashedPromotion > promotion > title | - |
| Locatie naam | cashedPromotion > balie > name | Naam van de balie waar het voordeel werd omgeruild. |
| Aantal punten | cashedPromotion > promotion > points | - |

**Referentie UiTPAS v3.0**

[Ophalen van verzilverder omruilvoordelen]({% link content/uitpas_api/latest/pashouders/ophalen-verzilverde-omruilvoordelen.md %})

## Historiek gekochte kansentarieven weergeven

Pashouders met kansenstatuut kunnen tickets tegen kansentarief aankopen in het systeem.

Een pashouder met kansenstatuut heeft in het pashouder profiel, een waarde ```true``` op het veld currentCard > kansenpas.  Voor pashouders met waarde ```false``` zal geen ticket historiek gegeven kunnen worden.

De ticket historiek kunnen we ophalen o.b.v. UiTPAS-nummer.

**Request**

```
GET {prefix}/uitpas/cultureevent/searchTicketsales?uid={uid}
```

Voorbeeld

```
{prefix}/uitpas/cultureevent/searchTicketsales?uid=17aeba35-d926-4d60-8cf6-532353dc8ff3
```

**Response**

~~~ xml
<ticketSale>
    <createdVia>Flagey</createdVia>
    <creationDate>2015-06-19T11:31:09+02:00</creationDate>
    <id>17005</id>
    <nodeId>2364619f-6984-4f0d-a28d-5b0edd6de121</nodeId>
    <nodeTitle>Animazaterdag: Minuscule, La vallée fourmis perdues</nodeTitle>
    <price>5.0</price>
    <tariff>0.0</tariff>
    <firstName>Firstname</firstName>
    <lastName>Lastname</lastName>
    <dateOfBirth>1982-08-23T02:00:00+02:00</dateOfBirth>
    <status>ACTIVE</status>
    <location>Flagey</location>
    <userId>1b567cc7-26f8-44e9-ab5b-990e92e34bfa</userId>
    <organiser>Flagey</organiser>
    <userHomeCity>Brussel</userHomeCity>
        <ticketSaleCoupon>
            <buyConstraint>
                <periodType>ABSOLUTE</periodType>
                 <periodVolume>1</periodVolume>
            </buyConstraint>
             <exchangeConstraint>
                <periodType>YEAR</periodType>
                <periodVolume>1</periodVolume>
            </exchangeConstraint>
            <id>27</id>
            <name>Cultuurbonnnnn</name>
        </ticketSaleCoupon>
    <groupPass>false</groupPass>
</ticketSale>
~~~

[Voorbeeld response in XML (volledig)]({% link content/uitpas_api/latest/events/verkoop-tickets-doorzoeken.md %})

Volgende velden heb je nodig:

| Data | Veld | Opmerking |
| --- | --- | --- |
| Datum | ticketSale > creationDate | - |
| Event titel | ticketSale > nodeTitle | Naam van het event waarvoor een ticket werd gekocht. |
| Event organiser | ticketSale > organiser | Organisator van het event. |

[Overzicht beschikbare velden entiteit 'ticketsale']({% link content/uitpas_api/latest/entiteiten/ticketsale-entiteit-bij-zoekopdracht.md %})

**Referentie UiTPAS API v3.0**

[Verkoop tickets doorzoeken]({% link content/uitpas_api/latest/events/verkoop-tickets-doorzoeken.md %})


