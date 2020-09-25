---
---

# Ophalen van gegevens van checkin device

_Method_
GET

_URL_
{prefix}/uitpas/cid/{cidConsumerKey}

Parameters:

| **Naam** | **Type** | **Omschrijving** | **Verplicht** |
| balieConsumerKey | String | ConsumerKey van de balie waarvoor deze request wordt uigevoerd. Deze parameter is niet verplicht. Standaard wordt de consumer key uit de oauth request gebruikt. Zie gebruik van andere balies door Service Consumer in punt 2.4 |  |

_Authenticatie_
[User access token]({% link content/authenticatie-autorisatie/latest/authenticatie-XML-apis/authenticatie-via-useraccesstoken.md %}) van de balie medewerker die de actie uitvoert

Enkel een medewerker van een balie waaraan de checkin device is toegekend kan de gegevens opvragen.

**Response**

<u>Bij succes</u>
HTTP 200 OK met een response body in XML formaat

<u>Bij fouten</u>
HTTP 400 met een response body in XML formaat:

| code | ErrorCode van de fout:@@UNKNOWN_BALIE_CONSUMERKEY@@UNKNOWN_CID_CONSUMERKEY@@ACTION_NOT_ALLOWED |
| message | Beschrijving van de fout |
| requiredPermission | Indien code = ACCESS_DENIED, dan bevat dit veld de vereiste permissie. |

_Voorbeeld request_

GET {prefix}/uitpas/cid/516a0d124281f1275e41f7755b82243f

_Voorbeeld response_


~~~xml
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response>
    <balies>
        <balie>
            <name>CC De Werf</name>
            <id>testkey57588868-EA2A-3A56-0AC173415A6D1BE7</id>
        </balie>
    </balies>
    <cdbid>e0a98c05-d0b1-47b8-a13e-0b5db55369d8</cdbid>
    <consumerKey>516a0d124281f1275e41f7755b82243f</consumerKey>
    <name>cid1</name>
    <status>ACTIVE</status>
</response>
~~~
