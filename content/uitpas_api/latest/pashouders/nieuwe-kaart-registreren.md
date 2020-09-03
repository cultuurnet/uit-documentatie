---
---

# Nieuwe kaart registreren

_Method_
POST

_URL_
{prefix}/uitpas/passholder/newCard

Parameters:

| **Naam** | **Type** | **Omschrijving** | **Verplicht** |
| uid | String | identificatie van de pashouder | x |
| reason | ‘LOSS_THEFT’, ‘DEFECT’, ‘LOSS_KANSENSTATUUT’, ‘OBTAIN_KANSENSTATUUT’, ‘CARD_UPGRADE’ or ‘EXTRA_CARD’ | reden voor registratie van een nieuwe kaart. | x |
| uitpasNumber | String | uitpasnummer van nieuwe kaart | x |
| voucherNumber | String | vouchernummer voor registratie van nieuwe kaart |  |
| balieConsumerKey | String | ConsumerKey van de balie die de nieuwe kaart registreert |  |
| kansenStatuutEndDate | W3CDate | einddatum kansenstatuut, verplicht indien reason ‘OBTAIN_KANSENSTATUUT’. Mag niet na het einde (31/12) van het volgende jaar. |  |

_Authenticatie_
[User access token]({% link content/authenticatie-autorisatie/latest/authenticatie-XML-apis/authenticatie-via-useraccesstoken.md %}) van de Balie medewerker die de actie uitvoert

_Required permission_
In geval van balie medewerker: **PERMISSION_PASSHOLDER - ACTION_CREATE** in het kaartsysteem van de meegegeven uitpasnummer.

**Response**

<u>Bij succes</u>
HTTP 200 OK met een response body in XML formaat

<u>Bij fouten</u>
HTTP 400 met een response body in XML formaat:

| code | ErrorCode van de fout:<br>MISSING_REQUIRED_FIELDS<br>PARSE_INVALID_UITPASNUMBER<br>PARSE_INVALID_VOUCHERNUMBER<br>PARSE_INVALID_DATE<br>INVALID_DATE_CONSTRAINTS (ongeldige kansenStatuutEndDate)<br>UNKNOWN_VOUCHER (geen voucher gevonden met opgegeven nummer)<br>UNKNOWN_PASSHOLDER_UID<br>UNKNOWN_CARD (geen kaart gevonden met opgegeven nummer)<br>INVALID_CARD (Uitpas is niet verdeeld aan balie of Uitpasnummer van een kansenpas verplicht indien pashouder met kansenstatuut of Pashouder met kansenstatuut verplicht indien uitpasnummer van kansenpas)<br>INVALID_CARD_STATUS (kaart was niet in LOCAL_STOCK)<br>INVALID_VOUCHER_STATUS (voucher is reeds verzilverd) |
| message | Beschrijving van de fout |
| requiredPermission | Indien code = ACCESS_DENIED, dan bevat dit veld de vereiste permissie. |

_Voorbeeld request_

POST {prefix}/uitpas/passholder/newCard uitpasNumber=0930000000107 uid=8d80e3b6-80a2-4e2f-8bbb-cd2a72809d77 reason=LOSS_KANSENSTATUUT balieConsumerKey=28808C2F-0DB2-D2CF-F508ECB994D2505F

_Voorbeeld response_


~~~xml
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response>
	<message>8d80e3b6-80a2-4e2f-8bbb-cd2a72809d77</message>
	<resource>/uitpas/passholder/0930000000107</resource>
</response>
~~~
