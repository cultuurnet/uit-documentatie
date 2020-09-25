---
---

# Activatie link opvragen op basis van geboortedatum

_Method_
GET

_URL_
{prefix}/uitpas/passholder/{uitpasNumber}/activation

Parameters:

| **Naam** | **Type** | **Omschrijving** | **Verplicht** |
| dob | W3CDate | geboortedatum van de pashouder | x |

_Authenticatie_
[Consumer Request]({% link content/authenticatie-autorisatie/latest/authenticatie-XML-apis/authenticatie-via-consumerrequest.md %}) van de service consumer die deze request uitvoert

_Required permission_
**PERMISSION_PASSHOLDER - ACTION_ACTIVATE**

**Response**

<u>Bij succes</u>
HTTP 200 OK met een response body in XML formaat

| code | ACTION_SUCCEEDED |
| activationLink | link waarmee de gebruiker zijn uitpas kan activeren |

<u>Bij fouten</u>
HTTP 400 met een response body in XML formaat:

| code | ErrorCode van de fout:<br>MISSING_REQUIRED_FIELDS<br>PARSE_INVALID_UITPASNUMBER<br>PARSE_INVALID_DATE<br>UNKNOWN_UITPASNUMBER<br>ACTION_FAILED<br>USER_ALREADY_ACTIVATED<br>INVALID_DOB |
| message | Beschrijving van de fout |
| requiredPermission | Indien code = ACCESS_DENIED, dan bevat dit veld de vereiste permissie. |

_Voorbeeld request_

GET {prefix}/uitpas/passholder/0930000000107/activation?dob=1979-07-15

_Voorbeeld response_


~~~xml
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response>
    <code>ACTION_SUCCEEDED</code>
    <message>activation link generated</message>
    <activationLink>http://uitpas-acc.lodgon.com:8080/uitid/rest/uitpas/activate/0930000000107/98bdd8b3f4e48d4c</activationLink>
</response>
~~~
