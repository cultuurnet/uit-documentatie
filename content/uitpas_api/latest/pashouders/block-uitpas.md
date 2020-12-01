---
---

# Block uitpas

_Method_
POST

_URL_
{prefix}/uitpas/passholder/block/{uitpasNumber}

Parameters:

| **Naam** | **Type** | **Omschrijving** |
| balieConsumerKey | String | ConsumerKey van de balie waarvoor deze request wordt uitgevoerd. Verplicht indien uitgevoerd door een balie medewerker. | - |

_Authenticatie_
[User access token]({% link content/authenticatie-autorisatie/latest/authenticatie-XML-apis/authenticatie-via-useraccesstoken.md %}) van de Balie medewerker die de actie uitvoert of van de eigenaar van de uitpas zelf

_Required permission_
In geval van balie medewerker: **PERMISSION_PASSHOLDER - ACTION_BLOCK** in een kaartsysteem waarvan de pashouder lid is.
In geval van uitpas eigenaar: Enkel data van de UiTid user die ingelogd is, kan gewijzigd worden.

**Response**

<u>Bij succes</u>
HTTP 200 OK met response body in xml formaat

<u>Bij fouten</u>
HTTP 400 met een response body in XML formaat:

| code | ErrorCode van de fout:<br>UNKNOWN_UITPASNUMBER<br>PARSE_INVALID_UITPASNUMBER<br>INVALID_CARD_STATUS (bijv. de kaart was reeds geblokkeerd) |
| message | Beschrijving van de fout |

_Voorbeeld request_

POST {prefix}/uitpas/passholder/block/1234567890116

_Voorbeeld response_


~~~xml
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response>
	<code>ACTION_SUCCEEDED</code>
	<message>The uitpas has been blocked.</message>
</response>
~~~
