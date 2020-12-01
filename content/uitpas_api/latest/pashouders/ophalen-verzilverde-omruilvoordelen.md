---
---

# Ophalen verzilverde omruilvoordelen

_Method_
GET

_URL_
{prefix}/uitpas/passholder/{uitpasNumber}/cashedPointsPromotions

Parameters:

| **Naam** | **Type** | **Omschrijving** | **Verplicht** |
| balieConsumerKey | String | ConsumerKey van de balie waarvoor deze request wordt uitgevoerd. Verplicht indien uitgevoerd door een balie medewerker | - |
| cashingPeriodBegin | W3CDate | startdatum voor verzilverdatum van omruilvoordelen |  |
| cashingPeriodEnd | W3CDate | einddatum voor verzilverdatum van omruilvoordelen. Zoek omruilvoordelen die in de opgegeven periode werden verzilverd. |  |
| sort | String | Sort field. Possible values: TITLE, BALIE, CITY, CASHINGDATE; |  |
| order | String | Sort direction. Possible values: ASC, DESC. Default value: DESC |  |
| max | Integer | Maximum number of results. Default: 20 |  |
| start | Integer | Results offset. Default: 0 |  |

_Authenticatie_
[User access token]({% link content/authenticatie-autorisatie/latest/authenticatie-XML-apis/authenticatie-via-useraccesstoken.md %}) van de Balie medewerker die de actie uitvoert of van de pashouder zelf.

_Required permission_
In geval van balie medewerker: geen extra permissie nodig
In geval van pashouder: Service consumer heeft **PERMISSION_PASSHOLDER - ACTION_READ** nodig

**Response**

<u>Bij succes</u>
HTTP 200 OK met response body in xml formaat

| cashedPromotions | List<CashedPointsPromotion> | lijst van verzilverde verzilver acties |
| total | Integer | Totaal aantal resultaten van de zoekopdracht |

<u>Bij fouten</u>
HTTP 400 met een response body in XML formaat:

| code | ErrorCode van de fout:<br>INVALID_INTERVAL_MIN_HIGHER_THAN_MAX<br>INVALID_INTERVAL_BEGIN_DATE_AFTER_END_DATE<br>INVALID_PARAMETERS<br>UNKNOWN_BALIE_CONSUMERKEY<br>PARSE_INVALID_UITPASNUMBER |
| message | Beschrijving van de fout |
| requiredPermission | Indien code = ACCESS_DENIED, dan bevat dit veld de vereiste permissie. |

_Voorbeeld request_

GET {prefix}/uitpas/passholder/0930012345607/cashedPointsPromotions?balieConsumerKey=testkey31413BDF-DFC7-7A9F-10403618C2816E44

_Voorbeeld response_


~~~xml
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response>
    <cashedPromotions>
        <cashedPromotion>
            <id>18</id>
            <promotion>
                <balies/>
                <cashedIn>true</cashedIn>
                <id>7</id>
                <points>5</points>
                <title>Gratis stickers</title>
            </promotion>
            <cashingDate>2012-02-29T14:18:49+01:00</cashingDate>
            <balie>
                <name>'t Gasthuys - Stedelijk Museum Aalst</name>
                <id>testkey5c9c73d3-e82f-e7b3-44161e6e3802e64f</id>
            </balie>
        </cashedPromotion>
        <cashedPromotion>
            <id>19</id>
            <promotion>
                <balies/>
                <cashedIn>true</cashedIn>
                <id>6</id>
                <points>5</points>
                <title>Gratis drankje</title>
            </promotion>
            <cashingDate>2012-02-29T14:18:49+01:00</cashingDate>
            <balie>
                <name>CC De Werf</name>
                <id>testkey31413BDF-DFC7-7A9F-10403618C2816E44</id>
            </balie>
        </cashedPromotion>
    </cashedPromotions>
    <total>2</total>
</response>
~~~
