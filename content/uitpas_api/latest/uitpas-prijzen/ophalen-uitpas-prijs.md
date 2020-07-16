---
---

# Ophalen uitpas prijs

_Method_
GET

_URL_
{prefix}/uitpas/price

Parameters:

| **Naam** | **Type** | **Omschrijving** | **Verplicht** |
| balieConsumerKey | String | ConsumerKey van de balie waarvoor deze request wordt uigevoerd. Deze parameter is niet verplicht. Standaard wordt de consumer key uit de oauth request gebruikt. Zie gebruik van andere balies door Service Consumer in punt 2.4 |  |
| uitpasNumber | String | identificatie van een kaart | x |
| dateOfBirth | W3CDate | Geboortedatum van de pashouder |  |
| postalCode | String | postcode van de pashouder |  |
| voucherNumber | String | identificatie van een voucher |  |
| reason | String | Reden van kaartverkoop. De mogelijke waarden zijn:<br>FIRST_CARD<br>CARD_UPGRADE<br>EXTRA_CARD<br>LOSS_THEFT<br>REMOVAL<br>LOSS_KANSENSTATUUT<br>OBTAIN_KANSENSTATUUT | x |

_Authenticatie_
[User access token]({% link content/authenticatie-autorisatie/latest/authenticatie-XML-apis/authenticatie-via-useraccesstoken.md %}) van de balie medewerker die de actie uitvoert

_Required permission_
De gebruiker die de actie uitvoert moet medewerkter zijn van de opgegeven balie. De opgegeven balie moet pashouders kunnen registereren.

**Response**

<u>Bij succes</u>
HTTP 200 OK met response body in XML formaat.

<u>Bij fouten</u>
HTTP 400 met een response body in XML formaat.

| code | ErrorCode van de fout:<br>UNKNOWN_CARD<br>PARSE_INVALID_UITPASNUMBER<br>UNKNOWN_VOUCHER<br>PARSE_INVALID_VOUCHERNUMBER<br>PARSE_INVALID_UITPAS_STATUS_CHANGE_REASON (ongekende waarde voor parameter reason)<br>BALIE_NOT_AUTHORIZED (kaart is niet toegekend aan de balie)<br>MISSING_REQUIRED_FIELDS<br>INVALID_VOUCHER_STATUS |
| message | Beschrijving van de fout |
| requiredPermission | Indien code = ACCESS_DENIED, dan bevat dit veld de vereiste permissie. |

_Voorbeeld request_

GET {prefix}/uitpas/price

balieConsumerKey=8bd020fb-a55a-4d15-b71c-1a1632cb7f00
uitpasNumber=0934000185108
dateOfBirth=2010-01-01
reason=FIRST_CARD

_Voorbeeld response_


~~~xml
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response>
    <uitpasPrice>
        <id>148</id>
        <reason>FIRST_CARD</reason>
        <cardType>CARD</cardType>
        <ageRange>
            <ageTo>17</ageTo>
        </ageRange>
        <kansenstatuut>false</kansenstatuut>
        <price>2.00</price>
        <cardSystem>
            <id>1</id>
            <name>UiTPAS Regio Aalst</name>
        </cardSystem>
    </uitpasPrice>
</response>
~~~
