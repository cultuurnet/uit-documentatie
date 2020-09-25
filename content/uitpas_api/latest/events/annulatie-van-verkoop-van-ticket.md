---
---

# Annulatie van verkoop van ticket

_Method_
POST

_URL_
{prefix}/uitpas/cultureevent/{eventCdbid}/cancel/{uitpasNumber}

waarbij {eventCdbid} de cdbid van een event is
{uitpasNumber} de uitpas nummer van een pashouder of een groepspas.

Parameters:

| **Parameter** | **Type** | **Beschrijving** |
| balieConsumerKey | String | ConsumerKey van de balie waarop deze request gebeurt. Deze parameter is niet verplicht. Standaard wordt de consumer key uit de oauth request gebruikt. Zie gebruik van andere balies door Service Consumer in punt 2.4 |

_Authenticatie_
[User access token]({% link content/authenticatie-autorisatie/latest/authenticatie-XML-apis/authenticatie-via-useraccesstoken.md %}) van de balie medewerker die de actie uitvoert.

**Response**

<u>Bij succes</u>
HTTP 200 OK

<u>Bij fouten</u>
HTTP 400 met een response body in XML formaat:

| code | ErrorCode van de fout:<br>UNKNOWN_EVENT_CDBID<br>PARSE_INVALID_UITPASNUMBER<br>UNKNOWN_TICKET_SALE<br>UNKNOWN_UITPASNUMBER |
| message | Beschrijving van de fout |
| requiredPermission | Indien code = ACCESS_DENIED, dan bevat dit veld de vereiste permissie. |

_Voorbeeld request_

POST {prefix}/uitpas/cultureevent/283e8449-4ce8-44f9-aa87-c7e9395be025/cancel/1234567890113

_Voorbeeld response_


~~~xml
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response>
    <code>ACTION_SUCCEEDED</code>
    <message>1 ticket canceled for 0930000150316 for event 0b5e01aa-3dd3-486f-a19a-faa73a6e8a19</message>
</response>
~~~
