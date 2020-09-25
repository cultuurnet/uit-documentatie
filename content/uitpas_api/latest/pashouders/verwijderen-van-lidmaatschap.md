---
---

# Verwijderen van lidmaatschap

_Method_
POST

_URL_
{prefix}/uitpas/passholder/membership/delete

Parameters:

| **Naam** | **Type** | **Omschrijving** | **Verplicht** |
| --- | --- | --- | --- |
| uid | String | uid van de pashouder | x |
| associationId | Long | identificatie van de vereniging | x |
| balieConsumerKey | String | ConsumerKey van de balie waarop deze request gebeurt. Deze parameter is niet verplicht. Standaard wordt de consumer key uit de oauth request gebruikt. Zie gebruik van andere balies door Service Consumer in punt 2.4 |  |

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

| code | ErrorCode van de fout:<br>ACTION_FAILED<br>UNKNOWN_BALIE_CONSUMERKEY<br>UNKNOWN_PASSHOLDER_UID<br>PARSE_INVALID_LONG<br>UNKNOWN_ASSOCIATION_ID<br>MISSING_REQUIRED_FIELDS<br>INVALID_PARAMETERS<br>PARSE_INVALID_DATE |
| message | Beschrijving van de fout |
| requiredPermission | Indien code = ACCESS_DENIED, dan bevat dit veld de vereiste permissie. |

_Voorbeeld request_
POST {prefix}/uitpas/passholder/membership/delete

uid=1af67b95-6f68-4a82-96af-7539681c28ce&associationId=1

_Voorbeeld response_


~~~xml
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response>
	<code>ACTION_SUCCEEDED</code>
	<message>Lidmaatschap werd succesvol verwijderd.</message>
</response>
~~~
