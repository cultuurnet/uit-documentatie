---
---

# Uitpas aanbod doorzoeken

_Method_
GET

_URL_
{prefix}/uitpas/cultureevent/search

Parameters

| **Naam** | **Type** | **Omschrijving** | **Verplicht** |
| startDate | W3CDate | begin datum |  |
| endDate | W3CDate | eind datum |  |
| balieConsumerKey | String | Consumer Key van de balie waarvoor evenementen gezocht worden waarbij de balie inrichter of locatie is. kan herhaald worden. |  |
| locatieId | String | zoek evenementen met de opgegeven locatieId |  |
| inrichterId | String | zoek evenementen met de opgegeven inrichterId |  |
| city | String | zoek evenementen voor de opgegeven gemeente |  |
| cdbid | String | cdbid van het te zoeken evenement |  |
| q | String | Een vrije zoekterm. (zie uitdatabank search api) |  |
| fq | List<String> | Filter voor zoekresultaten (zie uitdatabank search api) |  |
| sort | String | Sorteer veld (zie UitDatabank Search API v2) |  |
| start | int | start zoekresultaten |  |
| max | int | aantal zoekresultaten |  |
| uitpasNumber | String | toont het tarief voor de pashouder |  |
| private | String | gebruik dit veld om events op te zoeken die private of public zijn: |  |
| datetype | String | mogelijke waarden: today, tomorrow, thisweekend, nextweekend, next7days, next14days, next30days, next3months, next6months, next12months |  |

_Authenticatie_
[Consumer Request]({% link content/authenticatie-autorisatie/latest/authenticatie-XML-apis/authenticatie-via-consumerrequest.md %}) van de service consumer die het opvragen uitvoert

_Required permission_
In geval van consumer request: **PERMISSION_EVENT - ACTION_READ**

<u>Bij succes</u>
HTTP 200 OK met een response body van het entiteit CultureEvents in XML formaat.

<u>Bij fouten</u>
HTTP 400 met een response body in XML formaat:

| code | ErrorCode van de fout:<br>PARSE_INVALID_UITPASNUMBER<br>UNKNOWN_UITPASNUMBER<br>INVALID_DATE_CONSTRAINTS<br>BALIE_NOT_ACTOR |
| message | Beschrijving van de fout |
| requiredPermission | Indien code = ACCESS_DENIED, dan bevat dit veld de vereiste permissie. |

_Voorbeeld request_

GET {prefix}/uitpas/cultureevent/search?q=**:**&uitpasNumber=0930000000107&balieConsumerKey=31413BDF-DFC7-7A9F-10403618C2816E44&max=2

_Voorbeeld response_


~~~xml
<cultureEvents xmlns:ns2="http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.2/FINAL">
    <total>1398</total>
    <event>
        <title>Tristan</title>
        <cdbid>37f8d66d-6e75-4c98-a3bc-2c289d4b8037</cdbid>
        <locationId>daeaaf17-c648-4859-af54-e524c0bd64f4</locationId>
        <locationName>Grand cafe rue de la gare</locationName>
        <price>0.0</price>
        <tariff>0.0</tariff>
        <ticketSales>
            <ticketSale type="DEFAULT">
                <priceClasses>
                    <priceClass>
                        <name>Default prijsklasse</name>
                        <price>0.0</price>
                    </priceClass>
                </priceClasses>
            </ticketSale>
        </ticketSales>
        <checkinConstraint>
            <periodType>DAY</periodType>
            <periodVolume>1</periodVolume>
        </checkinConstraint>
        <checkinAllowed>false</checkinAllowed>
        <checkinConstraintReason>INVALID_DATE_TIME</checkinConstraintReason>
        <ns2:calendar>
            <ns2:timestamps>
                <ns2:timestamp/>
            </ns2:timestamps>
        </ns2:calendar>
        <calendarsummary>za 28/06/14 van 23:00 tot 02:00 </calendarsummary>
        <numberOfPoints>1</numberOfPoints>
        <organiserId>bb78ce15-1f84-498d-beff-5b6acf16a170</organiserId>
        <organiserName>Emmen</organiserName>
        <gracePeriodMonths>0</gracePeriodMonths>
    </event>
    <event>
        <title>Concert door Symfonische Kring "Door Eendracht Groot"</title>
        <cdbid>8fa5a1ff-4442-4153-a24f-f54dab494cda</cdbid>
        <locationId>FA39848A-B7D8-0867-424221F4EC4E44FE</locationId>
        <locationName>CC De Werf </locationName>
        <city>Aalst</city>
        <price>10.5</price>
        <tariff>10.5</tariff>
        <ticketSales>
            <ticketSale type="COUPON">
                <ticketSaleCoupon>
                    <buyConstraint>
                        <periodType>ABSOLUTE</periodType>
                        <periodVolume>1</periodVolume>
                    </buyConstraint>
                    <exchangeConstraint>
                        <periodType>ABSOLUTE</periodType>
                        <periodVolume>1</periodVolume>
                    </exchangeConstraint>
                    <id>18</id>
                    <name>TEST-UITPAS1579</name>
                </ticketSaleCoupon>
                <remainingForEvent>
                    <periodType>ABSOLUTE</periodType>
                    <periodVolume>1</periodVolume>
                </remainingForEvent>
                <remainingTotal>
                    <periodType>ABSOLUTE</periodType>
                    <periodVolume>1</periodVolume>
                </remainingTotal>
                <priceClasses>
                    <priceClass>
                        <name>Default prijsklasse</name>
                        <price>10.5</price>
                        <tariff>10.0</tariff>
                    </priceClass>
                </priceClasses>
            </ticketSale>
            <ticketSale type="DEFAULT">
                <buyConstraintReason>MAXIMUM_REACHED</buyConstraintReason>
            </ticketSale>
        </ticketSales>
        <buyConstraintReason>MAXIMUM_REACHED</buyConstraintReason>
        <checkinConstraint>
            <periodType>DAY</periodType>
            <periodVolume>1</periodVolume>
        </checkinConstraint>
        <checkinAllowed>false</checkinAllowed>
        <checkinConstraintReason>INVALID_DATE_TIME</checkinConstraintReason>
        <ns2:calendar>
            <ns2:timestamps>
                <ns2:timestamp/>
            </ns2:timestamps>
        </ns2:calendar>
        <numberOfPoints>1</numberOfPoints>
        <organiserId>FA39848A-B7D8-0867-424221F4EC4E44FE</organiserId>
        <organiserName>Koninklijke Symfonische Kring - Door Eendracht Groot - Aalst</organiserName>
        <gracePeriodMonths>0</gracePeriodMonths>
    </event>
</cultureEvents>
~~~
