---
---

# Registratie van verkoop van ticket

_Method_
POST

_URL_
{prefix}/uitpas/cultureevent/{eventCdbid}/buy/{uitpasNumber}

waarbij {eventCdbid} de cdbid van een event is {uitpasNumber} de uitpas nummer van een pashouder of een groepspas.

Parameters:

| balieConsumerKey | String | ConsumerKey van de balie waarop deze request gebeurt. Deze parameter is niet verplicht. Standaard wordt de consumer key uit de oauth request gebruikt. Zie gebruik van andere balies door Service Consumer in punt 2.4 |
| ticketSaleCouponId | Long | Ticket sale coupon Id die gebruikt moet worden bij de ticketsale |
| amountOfTickets | Integer | Aantal tickets. Deze parameter is verplicht voor een groepspas, maar mag niet gebruikt worden bij pashouders |
| priceClass | String | prijs klasse gebruikt bij de ticketsale |

_Authenticatie_
UserAccessToken van de balie medewerker die de actie uitvoert.

**Response**

<u>Bij succes</u>
HTTP 200 OK met een response body in XML formaat

<u>Bij fouten</u>
HTTP 400 met een response body in XML formaat:

| code | ErrorCode van de fout:<br>MISSING_REQUIRED_FIELDS<br>INVALID_PARAMETERS<br>UNKNOWN_EVENT_CDBID<br>PARSE_INVALID_UITPASNUMBER<br>PARSE_INVALID_LONG<br>ACTION_NOT_ALLOWED<br>MAXIMUM_REACHED<br>UNKNOWN_UITPASNUMBER<br>INVALID_CARD_STATUS<br>TICKETSALE_NOT_ALLOWED_FREE_EVENT<br>NO_VALID_DISTRIBUTION_KEY<br>UNKNOWN_PRICE_CLASS |
| message | Beschrijving van de fout |
| requiredPermission | Indien code = ACCESS_DENIED, dan bevat dit veld de vereiste permissie. |

_Voorbeeld request_

POST {prefix}/uitpas/cultureevent/283e8449-4ce8-44f9-aa87-c7e9395be025/buy/1234567890113

_Voorbeeld response_


~~~xml
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<ticketSale>
            <createdVia>Flagey</createdVia>
            <creationDate>2015-06-19T11:31:09+02:00</creationDate>
            <id>17005</id>
            <nodeId>283e8449-4ce8-44f9-aa87-c7e9395be025</nodeId>
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
~~~
