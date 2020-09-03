---
---

# Activatie e-mail opnieuw versturen

_Method_
POST

_URL_
{prefix}/uitpas/passholder/{uitpasNumber}/resend_activation_mail

Parameters:

| **Naam** | **Type** | **Omschrijving** | **Verplicht** |
| --- | --- | --- | --- |
| balieConsumerKey | String | ConsumerKey van de balie waarop deze request gebeurt. Deze parameter is niet verplicht. Standaard wordt de consumer key uit de oauth request gebruikt. Zie gebruik van andere balies door Service Consumer in punt 2.4 |  |

_Authenticatie_
[User access token]({% link content/authenticatie-autorisatie/latest/authenticatie-XML-apis/authenticatie-via-useraccesstoken.md %}) van de Balie medewerker die de actie uitvoert of van de uitpas eigenaar zelf.

**Response**

<u>Bij succes</u>
HTTP 200 OK

| code | ACTION_SUCCEEDED |
| message | Informatie over deze actie |
| requiredPermission | Indien code = ACCESS_DENIED, dan bevat dit veld de vereiste permissie. |

<u>Bij fouten</u>

HTTP 400 Bad Request status code, aangevuld met een XML body met extra informatie.

| code | ErrorCode van de fout:<br>UNKNOWN_UITPASNUMBER<br>PARSE_INVALID_UITPASNUMBER |
| message | Beschrijving van de fout |

_Voorbeeld request_
POST {prefix}/uitid/rest/uitpas/passholder/0930012345607/resend_activation_mail

_Voorbeeld response_


~~~xml
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response>
    <code>ACTION_SUCCEEDED</code>
    <message>mail resent to an.wouters@mailinator.com</message>
</response>
~~~
