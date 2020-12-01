---
---

# Medewerker toevoegen aan balie

Voeg een medewerker toe aan een balie.

_Method_
POST

_URL_
{prefix}/uitpas/balie/member

Parameters:

| **Naam** | **Type** | **Omschrijving** | **Verplicht** |
| balieConsumerKey | String | ConsumerKey van de balie waarvoor deze request wordt uitgevoerd. | verplicht |
| uid | String | UID van de CultureFeed gebruiker. | x |

_Authenticatie_
[User access token]({% link content/authenticatie-autorisatie/latest/authenticatie-XML-apis/authenticatie-via-useraccesstoken.md %}) van de Balie Admin die de actie uitvoert

_Required permission_
De gebruiker die de actie uitvoert moet Admin zijn van de opgegeven balie.

**Response**

<u>Bij succes</u>
HTTP 200 OK met een response body in XML formaat

<u>Bij fouten</u>
HTTP 400 met een response body in XML formaat:

| code | ErrorCode van de fout:<br>UNKNOWN_USER<br>UNKNOWN_BALIE_CONSUMERKEY<br>ACTION_NOT_ALLOWED |
| message | Beschrijving van de fout |
| requiredPermission | Indien code = ACCESS_DENIED, dan bevat dit veld de vereiste permissie. |
