---
---

# Registreren, vernieuwen en heractiveren van lidmaatschap

_Method_
POST

_URL_
{prefix}/uitpas/passholder/membership

Parameters:

| **Naam** | **Type** | **Omschrijving** | **Verplicht** |
| --- | --- | --- | --- |
| uid | String | uid van de pashouder | x |
| associationId | Long | identificatie van de vereniging | x |
| endDate | W3CDate | einddatum lidmaatschap organisatie |  |
| balieConsumerKey | String | ConsumerKey van de balie waarvoor deze request wordt uitgevoerd. | x |

_Authenticatie_
[User access token]({% link content/authenticatie-autorisatie/latest/authenticatie-XML-apis/authenticatie-via-useraccesstoken.md %}) van de Balie medewerker die de actie uitvoert

_Required permission_
Balie: **PERMISSION_PASSHOLDER - ACTION_CREATE**
**PERMISSION_ASSOCIATION - ACTION_USE**

**Response**

<u>Bij succes</u>
HTTP 200 OK

<u>Bij fouten</u>

HTTP 400 Bad Request status code, aangevuld met een XML body met extra informatie.

| code | ErrorCode van de fout:<br>ACTION_FAILED<br>UNKNOWN_BALIE_CONSUMERKEY<br>UNKNOWN_PASSHOLDER_UID<br>UNKNOWN_ASSOCIATION_ID<br>MISSING_REQUIRED_FIELDS<br>INVALID_PARAMETERS (bijv. geen einddatum gegeven indien verplicht)<br>PARSE_INVALID_DATE<br>PARSE_INVALID_LONG<br>MEMBERSHIP_NOT_POSSIBLE_AGE_CONSTRAINT<br>ACTION_NOT_ALLOWED (bijv. indien lidmaatschap niet verlengd kan worden) |
| message | Beschrijving van de fout |
| requiredPermission | Indien code = ACCESS_DENIED, dan bevat dit veld de vereiste permissie. |

_Voorbeeld request_
POST {prefix}/uitpas/passholder/membership

uid=1af67b95-6f68-4a82-96af-7539681c28ce&associationId=1&endDate=2012-12-31

_Voorbeeld response_


~~~xml
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response>
	<code>ACTION_SUCCEEDED</code>
	<message>Lidmaatschap werd succesvol aangemaakt.</message>
</response>
~~~
