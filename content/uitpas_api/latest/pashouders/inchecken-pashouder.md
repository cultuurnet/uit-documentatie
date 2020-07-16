---
---

# Inchecken pashouder

_Method_
POST

_URL_
{prefix}/uitpas/passholder/checkin

Parameters:

| **Naam** | **Type** | **Omschrijving** | **Verplicht** |
| cdbid | String | cdbid van event | x |
| uitpasNumber | String | uitpas nummer 13 cijfers (i.e. zonder ISO-code) | x (zie opmerking) |
| chipNumber | String | NFC card chip number | x (zie opmerking) |
| balieConsumerKey | String | ConsumerKey van de balie waarop deze request gebeurt. Deze parameter is niet verplicht. Standaard wordt de consumer key uit de oauth request gebruikt. Zie gebruik van andere balies door Service Consumer in punt 2.4 |  |

_Opmerking_
Het is verplicht om ofwel uitpasNumber of chipNumber mee te geven. Het is niet toegelaten beide mee te geven.

Er kan gezocht worden op checkins via _/uitpas/cultureevent/searchCheckins_

_Authenticatie_
[User access token]({% link content/authenticatie-autorisatie/latest/authenticatie-XML-apis/authenticatie-via-useraccesstoken.md %}) van de Balie medewerker die de actie uitvoert

**Response**

_Voorbeeld request_

POST {prefix}/uitpas/passholder/checkin
cdbid=a89a2707-a35e-48da-aeda-307f857b93c0
uitpasNumber=0987654321113

<u>Bij succes</u>


~~~xml
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response>
    <points>2</points>
</response>
~~~


| points | Integer | Totaal aantal punten van de gebruiker. |

HTTP 200 OK

<u>Bij fouten</u>
HTTP 400 met een response body in XML formaat.


~~~xml
HTTP Status 400
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response>
    <code>MAXIMUM_REACHED</code>
    <message>Punt al gespaard (max. 1 / Week)</message>
    <points>12</points>
</response>
~~~


| code | ErrorCode van de fout:<br>PASSHOLDER_NO_ACTIVE_CARDSYSTEMS<br>UNKNOWN_EVENT_CDBID<br>UNKOWN_UITPASNUMBER<br>UNKOWN_CHIPNUMBER<br>MISSING_REQUIRED_FIELDS<br>INVALID_CARD_STATUS<br>ACTION_NOT_ALLOWED<br>ACTION_FAILED<br>MAXIMUM_REACHED<br>PARSE_INVALID_UITPASNUMBER<br>CHECKIN_CURRENTLY_NOT_ALLOWED |
| message | Beschrijving van de fout |
| points | Totaal aantal punten van de gebruiker. |
| requiredPermission | Indien code = ACCESS_DENIED, dan bevat dit veld de vereiste permissie. |
