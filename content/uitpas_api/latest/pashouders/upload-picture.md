---
---

# Upload picture

_Method_
POST

_Consumes_
multipart/form-data

_URL_
{prefix}/uitpas/passholder/{uid}/uploadPicture

waarbij {uid} de uid van de pashouder

Parameters:

| **Naam** | **Type** | **Omschrijving** | **Verplicht** |
| --- | --- | --- | --- |
| picture | bytes | de bytes van de afbeelding | x |
| balieConsumerKey | String | ConsumerKey van de balie waarvoor deze request wordt uitgevoerd. | x |

_Multipart data_
Deze request verwacht ruwe multipart data, wat wil zeggen dat de request header _Content-Type_ op _multipart/form-data_ gezet moet worden.

_Authenticatie_
[User access token]({% link content/authenticatie-autorisatie/latest/authenticatie-XML-apis/authenticatie-via-useraccesstoken.md %}) van de Balie medewerker die de actie uitvoert

_Required permission_
**PERMISSION_PASSHOLDER - ACTION_UPDATE** in een kaartsysteem waarvan de pashouder lid is.

**Response**

<u>Bij succes</u>
HTTP 200 OK met response body in xml formaat

<u>Bij fouten</u>
HTTP 400 met een response body in XML formaat:

| code | ErrorCode van de fout:<br>ACTION_FAILED<br>UNKNOWN_PASSHOLDER_UID |
| message | Beschrijving van de fout |
| requiredPermission | Indien code = ACCESS_DENIED, dan bevat dit veld de vereiste permissie. |

_Voorbeeld request_

POST {prefix}/uitpas/passholder/0279cf39-6b91-467a-a5fa-acdc03ad0111/uploadPicture
