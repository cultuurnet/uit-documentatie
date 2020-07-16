---
---

# Zoeken van welkomstvoordelen

_Method_
GET

_URL_
{prefix}/uitpas/promotion/welcomeAdvantages

Parameters:

| **Naam** | **Type** | **Omschrijving** |
| city | String | zoek welkomstvoordelen die geldig zijn voor de inwoners van de opgegeven gemeenten. kan herhaald worden. |
| balieConsumerKey | String | ConsumerKey van de balie waarvoor welkomstvoordelen gezocht worden die verzilverd kunnen worden. kan herhaald worden |
| title | String | zoek welkomstvoordelen met de opgegeven titel |
| owningCardSystemId | List<Long> | zoek welkomstvoordelen waarvan het opgegeven kaartsysteem eigenaar is |
| orderByOwningCardSystemId | Long | welkomstvoordelen waarvan het opgegeven kaartsysteem eigenaar is worden bovenaan in de zoekresultaten geplaatst |
| applicableCardSystemId | List<Long> | zoek welkomstvoordelen die in het opgegeven kaartsysteem toegekend kunnen worden |
| cashingPeriodBegin | W3CDate | zoek welkomstvoordelen binnen opgegeven verzilverperiode |
| cashingPeriodEnd | W3CDate | zoek welkomstvoordelen binnen opgegeven verzilverperiode. |
| grantingPeriodBegin | W3CDate | zoek welkomstvoordelen binnen de opgegeven toekenningsperiode. |
| grantingPeriodEnd | W3CDate | zoek welkomstvoordelen binnen de opgegeven toekenningsperiode. |
| inSpotlight | Boolean | zoek welkomstvoordelen die in de kijker staan |
| max | int | maximum aantal welkomstvoordelen in het resultaat, default 20 |
| start | int | start index, default 0 |
| sort | SortField | sortering: CREATION_DATE (default), TITLE, CASHING_PERIOD_END |
| order | String | volgorde sortering, ASC (oplopend, default), DESC (aflopend) |

_Authenticatie_
[Consumer Request]({% link content/authenticatie-autorisatie/latest/authenticatie-XML-apis/authenticatie-via-consumerrequest.md %})
_of_
[User access token]({% link content/authenticatie-autorisatie/latest/authenticatie-XML-apis/authenticatie-via-useraccesstoken.md %}) van de eigenaar van de uitpas zelf

_Required permission_
In geval van Consumer request: **PERMISSION_WELCOMEADVANTAGE - ACTION_READ**

**Response**

<u>Bij succes</u>
HTTP 200 OK met een response body in XML formaat:

| promotions | Lijst van welkomstvoordelen |
| total | Totaal aantal gevonden welkomstvoordelen door deze zoekopdracht |

<u>Bij fouten</u>
HTTP 400 met een response body in XML formaat:

| code | ErrorCode van de fout:<br>PARSE_INVALID_DATE<br>UNKNOWN_BALIE_CONSUMERKEY<br>PARSE_INVALID_CITY_NAME<br>INVALID_INTERVAL_BEGIN_DATE_AFTER_END_DATE |
| message | Beschrijving van de fout |
| requiredPermission | Indien code = ACCESS_DENIED, dan bevat dit veld de vereiste permissie. |

_Voorbeeld request_

GET {prefix}/uitpas/promotion/welcomeAdvantages?balieConsumerKey=cad22a20fa67b12ac1306b49755a2f7e&city=Aalst&city=Haaltert&sort=CASHING_PERIOD_END

_Voorbeeld response_


~~~xml
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response>
    <promotions>
        <promotion>
            <applicableCardSystems>
                <cardsystem>
                    <id>1</id>
                    <name>UiTPAS Regio Aalst</name>
                </cardsystem>
            </applicableCardSystems>
            <balies>
                <balie>
                    <name>CC De Werf </name>
                    <id>31413BDF-DFC7-7A9F-10403618C2816E44</id>
                    <visible>false</visible>
                </balie>
            </balies>
            <cashedIn>false</cashedIn>
            <id>5</id>
            <description1/>
            <description2/>
            <points>0</points>
            <pictures/>
            <title>Gratis armbandjes</title>
            <owningCardSystem>
                <id>1</id>
                <name>UiTPAS Regio Aalst</name>
            </owningCardSystem>
            <creationDate>2012-02-23T16:25:55+01:00</creationDate>
            <cashingPeriodBegin>2010-01-01T00:00:00+01:00</cashingPeriodBegin>
            <cashingPeriodEnd>2015-12-31T00:00:00+01:00</cashingPeriodEnd>
            <grantingPeriodBegin>2010-01-01T00:00:00+01:00</grantingPeriodBegin>
            <grantingPeriodEnd>2015-12-31T00:00:00+01:00</grantingPeriodEnd>
            <validForCities>
                <city>Haaltert</city>
            </validForCities>
            <maxAvailableUnits>200</maxAvailableUnits>
            <unitsTaken>1</unitsTaken>
        </promotion>
        <promotion>
            <balies/>
            <cashedIn>false</cashedIn>
            <id>3</id>
            <points>0</points>
            <title>Gratis drankje</title>
            <creationDate>2012-02-23T16:25:55+01:00</creationDate>
            <validForCities>
                <city>Aalst</city>
                <city>Erpe-Mere</city>
            </validForCities>
            <maxAvailableUnits>1000</maxAvailableUnits>
            <unitsTaken>5</unitsTaken>
        </promotion>
    </promotions>
    <total>2</total>
</response>
~~~
