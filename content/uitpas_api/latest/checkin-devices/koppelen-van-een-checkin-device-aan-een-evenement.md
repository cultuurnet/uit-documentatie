---
---

# Koppelen van een checkin device aan een evenement

Koppel een checkin device aan een evenement.

_Method_
POST

_URL_
{prefix}/uitpas/cid/connect

Parameters:

| **Naam** | **Type** | **Omschrijving** | **Verplicht** |
| --- | --- | --- | --- |
| balieConsumerKey | String | ConsumerKey van de balie waarvoor deze request wordt uitgevoerd. | verplicht |
| cdbid | String | identificatie van het evenement. Wanneer een lege waarde wordt meegegeven is er geen evenement meer gekoppeld aan het checkin device. |  |
| cidConsumerKey | String | identificatie van het checkin device | x |

_Authenticatie_
[User access token]({% link content/authenticatie-autorisatie/latest/authenticatie-XML-apis/authenticatie-via-useraccesstoken.md %}) van de balie medewerker die de actie uitvoert

**Response**

<u>Bij succes</u>
HTTP 200 OK met ACTION_SUCCEEDED in response body in XML formaat

<u>Bij fouten</u>
HTTP 400 met een response body in XML formaat:

| code | ErrorCode van de fout:<br>UNKNOWN_BALIE_CONSUMERKEY<br>UNKNOWN_CID_CONSUMERKEY<br>BALIE_NOT_AUTHORIZED<br>UNKNOWN_EVENT_CDBID |
| message | Beschrijving van de fout |
| requiredPermission | Indien code = ACCESS_DENIED, dan bevat dit veld de vereiste permissie. |

_Voorbeeld request_

POST {prefix}/uitpas/cid/connect
balieConsumerKey=57588868-EA2A-3A56-0AC173415A6D1BE7&cdbid=bb28db97-bb1c-48fb-89bf-34a4a91058b6&cidConsumerKey=36c1d88f88f97e44f744c5f59c23f8c6


~~~xml
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response>
    <balies>
        <balie>
            <name>CC De Werf</name>
            <id>57588868-EA2A-3A56-0AC173415A6D1BE7</id>
        </balie>
    </balies>
    <cdbid>bb28db97-bb1c-48fb-89bf-34a4a91058b6</cdbid>
    <consumerKey>36c1d88f88f97e44f744c5f59c23f8c6</consumerKey>
    <name>CiD1</name>
    <status>ACTIVE</status>
</response>
~~~
