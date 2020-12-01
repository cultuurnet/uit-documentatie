---
---

# Opvragen checkin devices

Geef de checkin devices die aan een balie zijn toegekend.

_Method_
GET

_URL_
{prefix}/uitpas/cid/list

Parameters:

| **Naam** | **Type** | **Omschrijving** | **Verplicht** |
| balieConsumerKey | String | ConsumerKey van de balie waarvoor deze request wordt uitgevoerd. | verplicht |

_Authenticatie_
[User access token]({% link content/authenticatie-autorisatie/latest/authenticatie-XML-apis/authenticatie-via-useraccesstoken.md %}) van de balie medewerker die de actie uitvoert

**Response**

<u>Bij succes</u>
HTTP 200 OK met een response body in XML formaat

<u>Bij fouten</u>
HTTP 400 met een response body in XML formaat:

| code | ErrorCode van de fout:<br>UNKNOWN_BALIE_CONSUMERKEY |
| message | Beschrijving van de fout |
| requiredPermission | Indien code = ACCESS_DENIED, dan bevat dit veld de vereiste permissie. |

_Voorbeeld request_

GET {prefix}/uitpas/cid/list?balieConsumerKey=cad22a20fa67b12ac1306b49755a2f7e

_Voorbeeld response_


~~~xml
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response>
    <cids>
        <cid>
            <name>CID001</name>
            <consumerKey>0b20246b76d9f5815374981d7ee8849d</consumerKey>
            <status>ACTIVE</status>
            <cardSystem>
                <id>1</id>
                <name>UiTPAS Regio Aalst</name>
            </cardSystem>
        </cid>
        <cid>
            <name>CID003</name>
            <consumerKey>2e97a0cbf7fab97799f0521013c52d49</consumerKey>
            <status>ACTIVE</status>
            <cdbid>90d65c45-6ca2-4479-90a3-53f0e2c621cc</cdbid>
            <cardSystem>
                <id>1</id>
                <name>UiTPAS Regio Aalst</name>
            </cardSystem>
        </cid>
        <cid>
            <name>CID004</name>
            <consumerKey>4d178bb2e38743129a272eff4a63a711</consumerKey>
            <status>ACTIVE</status>
            <cdbid>90d65c45-6ca2-4479-90a3-53f0e2c621cc</cdbid>
            <cardSystem>
                <id>1</id>
                <name>UiTPAS Regio Aalst</name>
            </cardSystem>
        </cid>
</response>
~~~
