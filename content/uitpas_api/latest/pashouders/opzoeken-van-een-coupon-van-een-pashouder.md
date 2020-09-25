---
---

# Opzoeken van een coupon van een pashouder

_Method_
GET

_URL_
{prefix}/uitpas/passholder/{uitpasNumber}/coupons/{couponId}

met uitpasNumber een geldig uitpasnummer van een pashouder en couponId een unieke identificatie van een ticketsalecoupon.

Parameters:

| **Naam** | **Type** | **Omschrijving** | **Verplicht** |
| balieConsumerKey | String | ConsumerKey van de balie waarop deze request gebeurt. Deze parameter is niet verplicht. Standaard wordt de consumer key uit de oauth request gebruikt. Zie gebruik van andere balies door Service Consumer in punt 2.4 |  |

_Authenticatie_
[User access token]({% link content/authenticatie-autorisatie/latest/authenticatie-XML-apis/authenticatie-via-useraccesstoken.md %}) van een balie medewerker of de eigenaar van de uitpas

**Response**

<u>Bij succes</u>
HTTP 200 OK met een response body in XML formaat

<u>Bij fouten</u>
HTTP 400 met een response body in XML formaat:

| code | ErrorCode van de fout:<br>UNKNOWN_UITPASNUMBER<br>UNKNOWN_TICKET_SALE_COUPON<br>PASSHOLDER_NO_ACTIVE_CARDSYSTEMS<br>KANSENSTATUUT_EXPIRED |
| message | Beschrijving van de fout |
| requiredPermission | Indien code = ACCESS_DENIED, dan bevat dit veld de vereiste permissie. |

_Voorbeeld request_

GET /uitpas/passholder/1000000061811/coupons/35

_Voorbeeld response_


~~~xml
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<ticketSaleCoupon>
    <buyConstraint>
        <periodType>ABSOLUTE</periodType>
        <periodVolume>1</periodVolume>
    </buyConstraint>
    <description>Voor korting in de dierentuin</description>
    <exchangeConstraint>
        <periodType>ABSOLUTE</periodType>
        <periodVolume>4</periodVolume>
    </exchangeConstraint>
    <id>35</id>
    <name>Coupon dierentuin</name>
    <remainingTotal>
        <periodType>ABSOLUTE</periodType>
        <periodVolume>2</periodVolume>
    </remainingTotal>
    <validFrom>2015-11-19T00:00:00+01:00</validFrom>
    <validTo>2016-01-01T00:00:00+01:00</validTo>
    <filterQuery>q=*:*&fq=type:event&fq=keyword:prettiggeleerd&fq=price:{15.5 TO *}&group=true</filterQuery>
</ticketSaleCoupon>
~~~
