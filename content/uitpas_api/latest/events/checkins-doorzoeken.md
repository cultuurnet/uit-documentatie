---
---

# Checkins doorzoeken

_Method_
GET

_URL_
{prefix}/uitpas/cultureevent/searchCheckins

Parameters:

| **Naam** | **Type** | **Omschrijving** | **Verplicht** |
| uid | String | uid van de pashouder |  |
| startDate | W3CDate | begin datum |  |
| endDate | W3CDate | eind datum |  |
| cdbid | String | cdbid van het evenement |  |
| balieConsumerKey | String | ConsumerKey van de balie die de opzoeking **uitvoert**. Deze parameter is niet verplicht. Standaard wordt de consumer key uit de oauth request gebruikt. Zie gebruik van andere balies door Service Consumer in punt 2.4 |  |
| checkinViaBalieConsumerKey | String | consumer key van de balie waarop de checkin plaats gevonden heeft. |  |
| location | String | locatie van het evenement |  |
| organiser | String | inrichter van het evenement |  |
| city | String | gemeente van de pashouder |  |
| organiserCardSystemId | String | identificatie van het kaartsysteem van de inrichter van het event |  |
| basicSearch | boolean | Indien ‘true’, dan wordt de Basic Search API gebruikt ipv de gewone Search API. |  |
| start | int | start zoekresultaten |  |
| max | int | aantal zoekresultaten |  |

_Authenticatie_
[User access token]({% link content/authenticatie-autorisatie/latest/authenticatie-XML-apis/authenticatie-via-useraccesstoken.md %}) van de balie medewerker die de actie uitvoert of van de pashouder zelf.
[Consumer Request]({% link content/authenticatie-autorisatie/latest/authenticatie-XML-apis/authenticatie-via-consumerrequest.md %}) (doorzoekt alle publieke checkins)

_Required permission_
In geval van balie medewerker: **PERMISSION_CHECKIN - ACTION_READ**
In geval van pashouder: deze kan enkel zijn eigen checkins zien

**Response**

<u>Bij succes</u>
HTTP 200 OK met een response body in XML formaat

<u>Bij fouten</u>
HTTP 400 met een response body in XML formaat:

| code | ErrorCode van de fout:<br>UNKNOWN_BALIE_CONSUMERKEY<br>PARSE_INVALID_DATE<br>ACTION_FAILED |
| message | Beschrijving van de fout |
| requiredPermission | Indien code = ACCESS_DENIED, dan bevat dit veld de vereiste permissie. |

_Voorbeeld request_

GET {prefix}/uitpas/cultureevent/searchCheckins?uid=22b69dc0-abf7-40f2-8ae7-c1e69811ed7c

_Voorbeeld response_


~~~xml
<response xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns" xmlns:foaf="http://xmlns.com/foaf/0.1/" xmlns:cdb="http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.1/FINAL" xmlns:geo="http://www.w3.org/2003/01/geo/wgs84_pos#">
    <checkinActivities>
         <checkinActivity>
            <type>12</type>
            <contentType>event</contentType>
            <createdViaId>5C9C73D3-E82F-E7B3-44161E6E3802E64F</createdViaId>
            <createdVia>'t Gasthuys - Stedelijk Museum Aalst</createdVia>
            <creationDate>2015-06-29T11:44Z</creationDate>
            <depiction>//media.uitid.be/fis/rest/download/ce126667652776f0e9e55160f12f5478/uiv/picture-15835.jpg</depiction>
            <id>57b00f28-dfff-4f09-90c4-08a6d313fc5c</id>
            <nick>EllenVan</nick>
            <nodeID>389FA8E8-D766-B566-E24BF8EF8413B7C7</nodeID>
            <nodeTitle>'t Gasthuys - Stedelijk Museum Aalst</nodeTitle>
            <points>1.000</points>
            <private>false</private>
            <userId>22b69dc0-abf7-40f2-8ae7-c1e69811ed7c</userId>
            <eventLocationLat>50.937940</eventLocationLat>
            <eventLocationLon>4.043132</eventLocationLon>
            <firstName>Ellen</firstName>
            <secondName>middlename</secondName>
            <gender>FEMALE</gender>
            <kansenStatuut>false</kansenStatuut>
            <lastName>Vanmaele</lastName>
            <organiser>'t Gasthuys - Stedelijk Museum Aalst</organiser>
            <organiserCardSystems>
                <organiserCardSystem>1</organiserCardSystem>
            </organiserCardSystems>
            <userHomeCity>Brussel</userHomeCity>
            <userHomeLocationLat>50.857746</userHomeLocationLat>
            <userHomeLocationLon>4.3463604</userHomeLocationLon>
            <userPoints>10.550</userPoints>
        </checkinActivity>
        <checkinActivity>
            <type>12</type>
            <contentType>event</contentType>
            <createdViaId>5C9C73D3-E82F-E7B3-44161E6E3802E64F</createdViaId>
            <createdVia>'t Gasthuys - Stedelijk Museum Aalst</createdVia>
            <creationDate>2015-06-24T11:58Z</creationDate>
            <depiction>//media.uitid.be/fis/rest/download/ce126667652776f0e9e55160f12f5478/uiv/picture-15835.jpg</depiction>
            <id>ddca6024-680e-4140-8263-1ee1164d6351</id>
            <nick>EllenVan</nick>
            <nodeID>389FA8E8-D766-B566-E24BF8EF8413B7C7</nodeID>
            <nodeTitle>'t Gasthuys - Stedelijk Museum Aalst</nodeTitle>
            <points>1.000</points>
            <private>false</private>
            <userId>22b69dc0-abf7-40f2-8ae7-c1e69811ed7c</userId>
            <eventLocationLat>50.937940</eventLocationLat>
            <eventLocationLon>4.043132</eventLocationLon>
            <firstName>Ellen</firstName>
            <secondName>middlename</secondName>
            <gender>FEMALE</gender>
            <kansenStatuut>false</kansenStatuut>
            <lastName>Vanmaele</lastName>
            <organiser>'t Gasthuys - Stedelijk Museum Aalst</organiser>
            <organiserCardSystems>
                <organiserCardSystem>1</organiserCardSystem>
            </organiserCardSystems>
            <userHomeCity>Brussel</userHomeCity>
            <userHomeLocationLat>50.857746</userHomeLocationLat>
            <userHomeLocationLon>4.3463604</userHomeLocationLon>
            <userPoints>10.550</userPoints>
        </checkinActivity>
     </checkinActivities>
    <total>2</total>
~~~
