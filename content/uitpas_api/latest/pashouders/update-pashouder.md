---
---

# Update pashouder

_Method_
POST

_URL_
{prefix}/uitpas/passholder/{uitpasNumber}

Parameters:

| **Naam** | **Type** | **Omschrijving** |
| name | String | Naam van de pashouder |
| firstName | String | Voornaam van de pashouder |
| secondName | String | Tweede van de pashouder |
| inszNumber | String | Nationaal nummer van de pashouder. Dit kan enkel aangepast worden wanneer er nog geen nationaal nummer voor de pashouder gekend is. |
| email | String | Email adres van de pashouder |
| dateOfBirth | W3CDate | Geboortedatum. |
| street | String | Straat |
| <span class="line-through">number</span> <span class="blue">(Deprecated)</span> | String | Huisnummer |
| <span class="line-through">box</span> <span class="blue">(Deprecated)</span> | String | Box |
| postalCode | String | Postcode |
| city | String | gemeente pashouder. indien geldige deelgemeente opgegeven wordt, wordt deze automatisch omgezet naar de hoofdgemeente. de postcode blijft behouden. |
| telephone | String | Telefoonnummer |
| nationality | String | Nationaliteit |
| placeOfBirth | String | Geboorteplaats |
| gender | String | Geslacht. Mogelijke waarden: ‘M’, ‘F’, ‘V’, ‘FEMALE’, ‘MALE’ |
| kansenStatuutEndDate | W3CDate | einddatum kansenstatuut (op kaartsysteem gelinkt aan uitpasnummer). Mag niet na het einde (31/12) van het volgende jaar. |
| emailPreference | String | ‘ALL_MAILS’, ‘NOTIFICATION_MAILS’ or ‘NO_MAILS’ (op kaartsysteem gelinkt aan uitpasnummer) |
| smsPreference | String | ‘ALL_SMS’, ‘NOTIFICATION_SMS’ or ‘NO_SMS’ (op kaartsysteem gelinkt aan uitpasnummer) |
| schoolConsumerKey | String | ConsumerKey van de school van de pashouder |
| gsm | String | GSM nummer |
| moreInfo | String | een vrij tekstveld met informatie over deze pashouder |
| verified | boolean | true indien de e-id werd gebruikt bij update van de pashouder |
| balieConsumerKey | String | ConsumerKey van de balie waarvoor deze request wordt uitgevoerd. Verplicht indien uitgevoerd door een balie medewerker. |  |

_Authenticatie_
[User access token]({% link content/authenticatie-autorisatie/latest/authenticatie-XML-apis/authenticatie-via-useraccesstoken.md %}) van de Balie medewerker die de actie uitvoert of van de eigenaar van de uitpas zelf

_Required permission_
In geval van balie medewerker: **PERMISSION_PASSHOLDER - ACTION_UPDATE** in een kaartsysteem waarvan de pashouder lid is.
In geval van uitpas eigenaar: Enkel data van de culturefeed user die ingelogd is, kan gewijzigd worden. In geval van de uitpas eigenaar kunnen enkel de volgende velden geupdate worden: emailPreference, email telephone, gsm, smsPreference.

**Response**

<u>Bij succes</u>
HTTP 200 OK met response body in xml formaat

<u>Bij fouten</u>
HTTP 400 met een response body in XML formaat:

| code | ErrorCode van de fout:<br>ACTION_NOT_ALLOWED<br>MISSING_REQUIRED_FIELDS<br>UNKNOWN_UITPASNUMBER<br>PARSE_INVALID_INSZ<br>PARSE_INVALID_UITPASNUMBER<br>PARSE_INVALID_BIGDECIMAL<br>PARSE_INVALID_GENDER<br>PARSE_INVALID_DATE<br>PARSE_INVALID_DATE_OF_BIRTH<br>PARSE_INVALID_POSTAL_CODE<br>PARSE_INVALID_CITY_NAME<br>INVALID_DATE_CONSTRAINTS (ongeldige kansenStatuutEndDate)<br>INVALID_EMAIL_ADDRESS (het email adres is niet geldig = bevat geen @ of '.') |
| message | Beschrijving van de fout |
| requiredPermission | Indien code = ACCESS_DENIED, dan bevat dit veld de vereiste permissie. |

_Voorbeeld request_

POST {prefix}/uitpas/passholder/1234567890116

_Voorbeeld response_


~~~xml
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response>
	<code>ACTION_SUCCEEDED</code>
	<message>The passholder has been updated.</message>
</response>
~~~
