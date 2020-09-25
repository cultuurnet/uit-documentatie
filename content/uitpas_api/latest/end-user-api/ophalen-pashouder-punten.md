---
---

# Ophalen pashouder punten

_Method_
GET

_URL_
{prefix}/uitpas/enduser/{UITPASNUMBER}

Parameters:

geen

_Authenticatie_
[Consumer Request]({% link content/authenticatie-autorisatie/latest/authenticatie-XML-apis/authenticatie-via-consumerrequest.md %})

_Required permission_
De consumer die de actie uitvoert moet "pashouder punten ophalen" rechten hebben.

**Response**

| code | Statuscode van de request:<br>Mogelijke codes:<br>ACTION_SUCCEEDED<br>GROUPPAS_NOT_ALLOWED<br>PARSE_INVALID_UITPASNUMBER<br>UNKNOWN_UITPASNUMBER<br>INVALID_CARD_STATUS_BLOCKED<br>INVALID_CARD_STATUS_DELETED<br>INVALID_CARD_STATUS |
| points | Punten van de pashouder (enkel bij code ACTION_SUCCEEDED) |

_Voorbeeld request_

GET {prefix}/uitpas/enduser/0930056878802

_Voorbeeld response_


~~~xml
{
  "points": 4,
  "code": "ACTION_SUCCEEDED"
}
~~~
