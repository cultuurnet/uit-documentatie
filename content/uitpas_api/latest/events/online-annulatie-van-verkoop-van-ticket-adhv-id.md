---
---

# Online annulatie van verkoop van ticket adhv id

_Method_
POST

_URL_
{prefix}/uitpas/cultureevent/cancelonline/{ticketSaleId}

waarbij {ticketSaleId} de id van een ticket sale is.

Parameters:

Geen

_Authenticatie_
[Consumer Request]({% link content/authenticatie-autorisatie/latest/authenticatie-XML-apis/authenticatie-via-consumerrequest.md %}) met een consumer met rechten op ticketsales.

**Response**

<u>Bij succes</u>
HTTP 200 OK

<u>Bij fouten</u>
HTTP 400 met een response body in XML formaat:

| code | ErrorCode van de fout:<br>UNKNOWN_TICKET_SALE |
| message | Beschrijving van de fout |
| requiredPermission | Indien code = ACCESS_DENIED, dan bevat dit veld de vereiste permissie. |

_Voorbeeld request_

POST {prefix}/uitpas/cultureevent/cancelonline/17006

_Voorbeeld response_


~~~xml
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response>
    <code>ACTION_SUCCEEDED</code>
    <message>ticket [17006] canceled</message>
</response>
~~~
