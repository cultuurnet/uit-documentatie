---
---

# Registreren van een pashouder

_Method_
POST

_URL_
{prefix}/uitpas/passholder/register

Parameters:

| **Naam** | **Type** | **Omschrijving** | **Verplicht** |
| --- | --- | --- | --- |
| name | String | achternaam pashouder | x |
| firstName | String | voornaam pashouder | x |
| secondName | String | tweede naam pashouder |  |
| email | String | email adres pashouder |  |
| inszNumber | String | nationaal nummer van pashouder. Dit moet een geldig Belgisch rijksregisternummer zijn. <br><br>* Verplicht behalve indien:<br>- de balie een geauthoriseerde MIA balie is<br>- indien city=BUITENLAND en de balie rechten heeft om pashouders uit het buitenland te registreren<br>- de balie rechten heeft om pashouders zonder INSZ te registreren| * |
| dateOfBirth | String | geboortedatum van pashouder (in w3c format, YYYY-MM-DD) | x |
| gender | String | Toegelaten waarden:<br>M, MALE: man<br>V: vrouw<br>F, FEMALE: vrouw |  |
| street | String | straat pashouder |  |
| ~~number~~ (Deprecated) | String | huisnummer pashouder |  |
| ~~box~~ (Deprecated) | String | postbus pashouder |  |
| postalCode | String | postcode pashouder | x |
| city | String | gemeente pashouder. indien geldige deelgemeente opgegeven wordt, wordt deze automatisch omgezet naar de hoofdgemeente. de postcode blijft behouden. | x |
| telephone | String | telefoonnummer pashouder |  |
| gsm | String | GSM nummer pashouder |  |
| nationality | String | nationaliteit pashouder |  |
| placeOfBirth | String | geboorteplaats pashouder |  |
| uitpasNumber | String | nummer van de uitpas | x |
| voucherNumber | String | nummer van een voucher |  |
| kansenStatuut | Boolean | true indien pashouder met kansenstatuut, false indien pashouder zonder kansenstatuut |  |
| kansenStatuutEndDate | W3CDate | einddatum kansenstatuut | x |
| verified | boolean | true indien de gegevens van de pashouder werden ingelezen via belgium eid, false otherwise |  |
| moreInfo | String | een vrij tekstveld met informatie over deze pashouder |  |
| schoolConsumerKey | String | consumerKey van de school van deze pashouder |  |
| ~~emailPreference~~ (REMOVED) | String | Dit veld mag niet meer gebruikt worden. Zie Opt-In Voorkeuren aanpassen |  |
| ~~smsPreference~~ (REMOVED)| String | Dit veld mag niet meer gebruikt worden. Zie Opt-In Voorkeuren aanpassen |  |
| optInServiceMails | boolean | true indien de pashouder service mails wil ontvangen, anders false. Let op: deze parameter MOET false zijn indien pashouder jongen dan 16 | *  |
| optInMilestoneMails | boolean | true indien de pashouder milestone mails wil ontvangen, anders false. Let op: deze parameter MOET false zijn indien pashouder jongen dan 16 | *  |
| optInInfoMails | boolean | true indien de pashouder info mails wil ontvangen, anders false. Let op: deze parameter MOET false zijn indien pashouder jongen dan 16 | *  |
| optInSms | boolean | true indien de pashouder sms wil ontvangen, anders false. Let op: deze parameter MOET false zijn indien pashouder jongen dan 16 | *  |
| optInPost | boolean | true indien de pashouder post wil ontvangen, anders false. Let op: deze parameter MOET false zijn indien pashouder jongen dan 16 | *  |
| legalTermsPaper | boolean | true indien de pashouder de gebruikersvoorwaarden op papier heeft ontvangen |  |
| legalTermsDigital | boolean | true indien de pashouder de gebruikersvoorwaarden via e-mail heeft ontvangen |  |
| parentalConsent | boolean | true indien de er toestemming is van een ouder of voogd bij registratie van een minderjarige pashouder |  |
| balieConsumerKey | String | ConsumerKey van de balie waarvoor deze request wordt uitgevoerd. | x |

_Authenticatie_
[User access token]({% link content/authenticatie-autorisatie/latest/authenticatie-XML-apis/authenticatie-via-useraccesstoken.md %}) van de Balie medewerker die de actie uitvoert

_Required permission_
- Balie: **PERMISSION_PASSHOLDER - ACTION_CREATE**
- Kansenstatuut enkel toegelaten voor balies met: **PERMISSION_KANSENSTATUUT - ACTION_CREATE**
- Pashouders uit andere gemeenten enkel toegelaten voor balies met **PERMISSION_PASSHOLDER_OTHER_CITY - ACTION_CREATE**

**Response**

<u>Bij succes</u>
HTTP 200 OK met pashouder uid in response body

<u>Bij fouten</u>

HTTP 400 Bad Request status code, aangevuld met een XML body met extra informatie.

| code | ErrorCode van de fout:<br>ACTION_FAILED<br>MISSING_REQUIRED_FIELDS<br>INSZ_ALREADY_USED<br>EMAIL_ALREADY_USED<br>UNKNOWN_VOUCHER (geen voucher gevonden met opgegeven nummer)<br>UNKNOWN_CARD (geen kaart gevonden met opgegeven nummer)<br>CARD_NOT_ASSIGNED_TO_BALIE (Uitpas is niet verdeeld aan balie)<br>INVALID_CARD (Uitpasnummer van een kansenpas verplicht indien pashouder met kansenstatuut of Pashouder met kansenstatuut verplicht indien uitpasnummer van kansenpas)<br>INVALID_CARD_STATUS (kaart was niet in LOCAL_STOCK)<br>INVALID_VOUCHER_STATUS (voucher is reeds verzilverd)<br>UNKNOWN_SCHOOL<br>PARSE_INVALID_CITY_NAME<br>PARSE_INVALID_POSTAL_CODE<br>PARSE_INVALID_INSZ<br>PARSE_INVALID_UITPASNUMBER<br>PARSE_INVALID_VOUCHERNUMBER<br>PARSE_INVALID_GENDER<br>PARSE_INVALID_DATE<br>PARSE_INVALID_DATE_OF_BIRTH<br>BALIE_NOT_AUTHORIZED<br>ACCESS_DENIED<br>INVALID_EMAIL_ADDRESS (het email adres is niet geldig = bevat geen @ of '.') |
| message | Beschrijving van de fout |
| requiredPermission | Indien code = ACCESS_DENIED, dan bevat dit veld de vereiste permissie. |

_Voorbeeld request_

POST {prefix}/uitpas/passholder/register

dateOfBirth=1993-05-18&placeOfBirth=&street=&city=Haaltert&uitpasNumber=0930056878802&nationality=&postalCode=9450&email=janssen.p%40telenet.be&name=Janssen&inszNumber=93051822361&gender=M&firstName=Pieter&telephone=

_Voorbeeld response_


~~~xml
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response>
	<message>94305b2e-e7ff-4dfc-8d96-ef4d43de9038</message>
	<resource>/uitpas/passholder/0930056878802</resource>
</response>
~~~
