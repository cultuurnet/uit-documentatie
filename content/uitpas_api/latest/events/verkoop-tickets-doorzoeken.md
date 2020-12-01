---
---

# Verkoop tickets doorzoeken

_Method_
GET

_URL_
{prefix}/uitpas/cultureevent/searchTicketsales

Parameters:

| **Naam** | **Type** | **Omschrijving** | **Verplicht** |
| uid | String | uid van de pashouder |  |
| startDate | W3CDate | begin datum |  |
| endDate | W3CDate | eind datum |  |
| cdbid | String | cdbid van het evenement |  |
| balieConsumerKey | String | ConsumerKey van de balie waarvoor deze request wordt uitgevoerd. | verplicht |
| organiser | String | inrichter van het evenement |  |
| city | String | gemeente van de pashouder |  |
| start | int | start zoekresultaten |  |
| max | int | aantal zoekresultaten. Default 20 |  |

_Authenticatie_
[User access token]({% link content/authenticatie-autorisatie/latest/authenticatie-XML-apis/authenticatie-via-useraccesstoken.md %}) van de balie medewerker die de actie uitvoert of van de pashouder zelf.

_Opmerking_
Indien de opzoeking gebeurt door een balie medewerker worden enkel de ticket sales getoond die door de balie werden uitgevoerd, waarvan de balie organisator van het evenement is of waarvan de balie de locatie van het evenement is.

_Required permission_
In geval van balie medewerker: geen extra permissie nodig
In geval van pashouder: deze kan enkel zijn eigen aankopen zien. Service consumer heeft **PERMISSION_PASSHOLDER - ACTION_READ** nodig

**Response**

<u>Bij succes</u>
HTTP 200 OK met een response body in XML formaat van alle gevonden ticketSales en ook het aantal gevonden ticketSales (total)

<u>Bij fouten</u>
HTTP 400 met een response body in XML formaat:

| code | ErrorCode van de fout:<br>UNKNOWN_BALIE_CONSUMERKEY<br>PARSE_INVALID_DATE<br>ACTION_FAILED |
| message | Beschrijving van de fout |
| requiredPermission | Indien code = ACCESS_DENIED, dan bevat dit veld de vereiste permissie. |

_Voorbeeld request_

GET {prefix}/uitpas/cultureevent/searchTicketsales?uid=17aeba35-d926-4d60-8cf6-532353dc8ff3

_Voorbeeld response_


~~~xml
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response>
    <ticketSales>
        <ticketSale>
            <createdVia>Flagey</createdVia>
            <creationDate>2015-06-19T11:31:09+02:00</creationDate>
            <id>17005</id>
            <nodeId>2364619f-6984-4f0d-a28d-5b0edd6de121</nodeId>
            <nodeTitle>Animazaterdag: Minuscule, La vallée des fourmis perdues</nodeTitle>
            <price>5.0</price>
            <tariff>0.0</tariff>
            <firstName>test</firstName>
            <lastName>ellen</lastName>
            <dateOfBirth>1982-08-23T02:00:00+02:00</dateOfBirth>
            <status>ACTIVE</status>
            <location>Flagey</location>
            <userId>1b567cc7-26f8-44e9-ab5b-990e92e34bfa</userId>
            <organiser>Flagey</organiser>
            <userHomeCity>Brussel</userHomeCity>
            <ticketSaleCoupon>
                <buyConstraint>
                    <periodType>ABSOLUTE</periodType>
                    <periodVolume>1</periodVolume>
                </buyConstraint>
                <exchangeConstraint>
                    <periodType>YEAR</periodType>
                    <periodVolume>1</periodVolume>
                </exchangeConstraint>
                <id>27</id>
                <name>Cultuurbonnnnn</name>
            </ticketSaleCoupon>
            <groupPass>false</groupPass>
        </ticketSale>
        <ticketSale>
            <createdVia>Flagey</createdVia>
            <creationDate>2015-06-26T11:42:01+02:00</creationDate>
            <id>17006</id>
            <nodeId>2364619f-6984-4f0d-a28d-5b0edd6de121</nodeId>
            <nodeTitle>Animazaterdag: Minuscule, La vallée des fourmis perdues</nodeTitle>
            <price>5.0</price>
            <tariff>2.0</tariff>
            <firstName>Abdoulaye</firstName>
            <lastName>(Decl.:)Balima</lastName>
            <dateOfBirth>1978-11-12T01:00:00+01:00</dateOfBirth>
            <status>ACTIVE</status>
            <location>Flagey</location>
            <userId>afa289c2-dea9-4ba9-992f-83efed11b0e3</userId>
            <organiser>Flagey</organiser>
            <userHomeCity>Schaarbeek (Brussel)</userHomeCity>
            <ticketSaleCoupon>
                <buyConstraint>
                    <periodType>ABSOLUTE</periodType>
                    <periodVolume>1</periodVolume>
                </buyConstraint>
                <exchangeConstraint>
                    <periodType>ABSOLUTE</periodType>
                    <periodVolume>1</periodVolume>
                </exchangeConstraint>
                <id>32</id>
                <name>Condities coupon</name>
            </ticketSaleCoupon>
            <groupPass>false</groupPass>
        </ticketSale>
    </ticketSales>
    <total>2</total>
</response>
~~~
