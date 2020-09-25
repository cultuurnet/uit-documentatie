---
---

# Gebruiksvoorwaarden balie medewerker ophalen en goedkeuren

Haal de status van de gebruiksvoorwaarden (goedgekeurd of niet) op voor een baliemedewerker (GET) en keur ze goed (POST)

_Method_
GET

_URL_
{prefix}/uitpas/balie/terms

Parameters:

| **Naam** | **Type** | **Omschrijving** | **Verplicht** |
| uid | String | UID van de CultureFeed gebruiker (baliemedewerker). | x |

_Authenticatie_
User access token van de gebruiker (baliemedewerker) die de actie uitvoert.

_Required permission_
Uid moet gelijk zijn aan de uid van de culturefeed gebruiker die ingelogd is.

**Response**

<u>Bij succes</u>
HTTP 200 OK met een response body in XML formaat

<u>Bij fouten</u>
HTTP 400 met een response body in XML formaat:

| code | ErrorCode van de fout:<br>MISSING_REQUIRED_FIELDS<br>UNKNOWN_USER<br>USER_IS_NOT_A_BALIE_EMPLOYEE |
| message | Beschrijving van de fout |
| requiredPermission | Indien code = ACCESS_DENIED, dan bevat dit veld de vereiste permissie. |

_Voorbeeld request_

GET {prefix}/uitpas/balie/terms?uid=6b9f81a2-7505-4fdd-b152-dddeaf235cde

_Voorbeeld response_


~~~xml
<response>
  <termsAccepted>false</termsAccepted>
</response>
~~~




_Method_
POST

_URL_
{prefix}/uitpas/balie/terms

Parameters:

| **Naam** | **Type** | **Omschrijving** | **Verplicht** |
| uid | String | UID van de CultureFeed gebruiker (baliemedewerker). | x |

_Authenticatie_
User access token van de gebruiker (baliemedewerker) die de actie uitvoert.

_Required permission_
Uid moet gelijk zijn aan de uid van de culturefeed gebruiker die ingelogd is.

**Response**

<u>Bij succes</u>
HTTP 200 OK met een response body in XML formaat

<u>Bij fouten</u>
HTTP 400 met een response body in XML formaat:

| code | ErrorCode van de fout:<br>MISSING_REQUIRED_FIELDS<br>UNKNOWN_USER<br>USER_IS_NOT_A_BALIE_EMPLOYEE<br>ERROR_ACCEPTING_TERMS<br>TERMS_ALREADY_ACCEPTED |
| message | Beschrijving van de fout |
| requiredPermission | Indien code = ACCESS_DENIED, dan bevat dit veld de vereiste permissie. |

_Voorbeeld request_

GET {prefix}/uitpas/balie/terms?uid=6b9f81a2-7505-4fdd-b152-dddeaf235cde

_Voorbeeld response_


~~~xml
<response>
  <termsAccepted>true</termsAccepted>
</response>
~~~



