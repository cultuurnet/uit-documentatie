---
---

# Ophalen van groepspas

_Method_
GET

_URL_
{prefix}/uitpas/grouppass/{uitpasNummer}

waarbij {uitpasNummer} de uitpas nummer van de groeppas is

Parameters: Geen

_Authenticatie_
[Consumer Request]({% link content/authenticatie-autorisatie/latest/authenticatie-XML-apis/authenticatie-via-consumerrequest.md %}) van de service consumer die het opvragen uitvoert

_Required permission_
De serviceconsumer heeft **PERMISSION_GROUPPASS - ACTION_READ** nodig

**Response**

<u>Bij succes</u>
HTTP 200 OK met een response body in XML formaat

<u>Bij onbestaand uitpasnummer</u>

HTTP 404 Not found status code, aangevuld met een XML body met extra informatie.

_Voorbeeld response indien uitpasnummer wel bestaat maar geen groepspas is_


~~~xml
<response>
    <code>UNKNOWN_GROUPPASS</code>
    <message>Uitpasnummer is geen groepspas [0930000134716]</message>
</response>
~~~


_Voorbeeld request_

GET {prefix}/uitpas/grouppass/0930000335107

_Voorbeeld response_


~~~xml
<groupPass>
    <name>Test groepspas</name>
    <endDate>2015-05-28T00:00:00+02:00</endDate>
    <ticketsPerYear>50</ticketsPerYear>
    <uuid>70ad2e00-704e-418e-bb97-f88153347072</uuid>
    <availableTickets>50</availableTickets>
    <kansenStatuut>true</kansenStatuut>
    <ticketSaleCoupons>
        <ticketSaleCoupon>Testgroepscultuurbonwillem</ticketSaleCoupon>
    </ticketSaleCoupons>
    <card>
		<cardSystem>
			<id>5</id>
			<name>UiTPAS Gent</name>
		</cardSystem>
		<cardType>CARD</cardType>
		<kansenpas>true</kansenpas>
		<status>ACTIVE</status>
		<uitpasNumber>
			<uitpasNumber>0900000070012</uitpasNumber>
		</uitpasNumber>
	</card>
</groupPass>
~~~
