---
---

# Ophalen prijzen uitpas

Geeft uitpasprijzen terug voor de kaartsystemen waar de balie registratierechten heeft.

_Method_
GET

_URL_
{prefix}/uitpas/passholder/uitpasPrice

Parameters:

| **Naam** | **Type** | **Omschrijving** | **Verplicht** |
| --- | --- | --- | --- |
| balieConsumerKey | String | ConsumerKey van de balie waarvoor deze request wordt uitgevoerd. | verplicht |

_Authenticatie_
[User access token]({% link content/authenticatie-autorisatie/latest/authenticatie-XML-apis/authenticatie-via-useraccesstoken.md %}) van de Balie medewerker die de actie uitvoert

**Response**

<u>Bij succes</u>
HTTP 200 OK met de prijs in response body

_Voorbeeld request_

GET {prefix}/uitpas/passholder/uitpasPrice

_Voorbeeld response_


~~~xml
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response>
  <uitpasPrices>
    <uitpasPrice>
            <id>1</id>
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
        <uitpasPrice>
            <id>1</id>
            <reason>FIRST_CARD</reason>
            <cardType>CARD</cardType>
            <ageRange>
                <ageTo>17</ageTo>
            </ageRange>
            <kansenstatuut>true</kansenstatuut>
            <price>0.00</price>
            <cardSystem>
                <id>1</id>
                <name>UiTPAS Regio Aalst</name>
            </cardSystem>
        </uitpasPrice>
        <uitpasPrice>
            <id>10</id>
            <reason>FIRST_CARD</reason>
            <cardType>CARD</cardType>
            <voucherType>
                <name>uitgegeven door CultuurNet Vlaanderen</name>
                <prefix>100</prefix>
            </voucherType>
            <ageRange>
                <ageTo>17</ageTo>
            </ageRange>
            <kansenstatuut>false</kansenstatuut>
            <price>0.00</price>
            <cardSystem>
                <id>1</id>
                <name>UiTPAS Regio Aalst</name>
            </cardSystem>
        </uitpasPrice>
        <uitpasPrice>
            <id>10</id>
            <reason>FIRST_CARD</reason>
            <cardType>CARD</cardType>
            <voucherType>
                <name>uitgegeven door CultuurNet Vlaanderen</name>
                <prefix>100</prefix>
            </voucherType>
            <ageRange>
                <ageTo>17</ageTo>
            </ageRange>
            <kansenstatuut>true</kansenstatuut>
            <price>0.00</price>
            <cardSystem>
                <id>1</id>
                <name>UiTPAS Regio Aalst</name>
            </cardSystem>
        </uitpasPrice>
        ...
    </uitpasPrices>
</response>
~~~
