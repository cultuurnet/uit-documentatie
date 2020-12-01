---
---

# Opzoeken van uitpasnummer

_Method_
GET

_URL_
{prefix}/uitpas/card

Parameters:

| **Naam** | **Type** | **Omschrijving** |
| chipNumber | String | chip nummer waarvoor de uitpas nummer gezocht zal worden |
| x ofwel chipnumber ofwel uitpasNumber) | uitpasNumber | String |
| uitpasnummer van de kaart | x (ofwel chipnumber ofwel uitpasNumber) | 
| balieConsumerKey | String | ConsumerKey van de balie waarvoor deze request wordt uitgevoerd. Verplicht. |

_Authenticatie_
[User access token]({% link content/authenticatie-autorisatie/latest/authenticatie-XML-apis/authenticatie-via-useraccesstoken.md %}) van de Balie medewerker die de actie uitvoert

**Response**

<u>Bij succes</u>
HTTP 200 OK met een response body in XML formaat met Card entiteit

<u>Bij fouten</u>
HTTP 400 met een response body in XML formaat:

| code | ErrorCode van de fout:<br>MISSING_REQUIRED_FIELDS<br>UNKNOWN_CHIPNUMBER |
| message | Beschrijving van de fout |
| requiredPermission | Indien code = ACCESS_DENIED, dan bevat dit veld de vereiste permissie. |

_Voorbeeld request_

GET {prefix}/uitpas/card?chipNumber=111299

_Voorbeeld response_


~~~xml
<response>
    <cardSystem>
        <id>1</id>
        <name>UiTPAS Regio Aalst</name>
    </cardSystem>
    <cardType>CARD</cardType>
    <kansenpas>true</kansenpas>
    <status>ACTIVE</status>
    <uitpasNumber>0930000001410</uitpasNumber>
</response>
~~~
