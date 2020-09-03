---
---

# Alle medewerkers van een balie opzoeken

Zoek alle medewerkers voor een balie en de rol die de medewerker binnen de balie vervult (member of admin).

_Method_
GET

_URL_
{prefix}/uitpas/balie/listEmployees

Parameters:

| **Naam** | **Type** | **Omschrijving** | **Verplicht** |
| balieConsumerKey | String | ConsumerKey van de balie waarvoor deze request wordt uigevoerd. Deze parameter is niet verplicht. Standaard wordt de consumer key uit de oauth request gebruikt. Zie gebruik van andere balies door Service Consumer in punt 2.4 |  |

_Authenticatie_
[User access token]({% link content/authenticatie-autorisatie/latest/authenticatie-XML-apis/authenticatie-via-useraccesstoken.md %}) van de Balie Medewerker die de actie uitvoert

**Response**

<u>Bij succes</u>
HTTP 200 OK met een response body in XML formaat

<u>Bij fouten</u>
HTTP 400 met een response body in XML formaat:

| code | ErrorCode van de fout:<br>UNKNOWN_BALIE_CONSUMERKEY |
| message | Beschrijving van de fout |
| requiredPermission | Indien code = ACCESS_DENIED, dan bevat dit veld de vereiste permissie. |

_Voorbeeld request_

GET {prefix}/uitpas/balie/listEmployees?balieConsumerKey=cad22a20fa67b12ac1306b49755a2f7e

_Voorbeeld response_


~~~xml
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response xmlns:ns2="http://www.w3.org/1999/02/22-rdf-syntax-ns" xmlns:ns3="http://xmlns.com/foaf/0.1/">
    <admins>
    	<admin>
        	<ns2:id>3ed0832b-bdba-4646-8f57-2a45ea57fb9c</ns2:id>
        	<ns3:nick>anwouters</ns3:nick>
    	</admin>
    </admins>
    <members>
    	<member>
        	<ns2:id>971ca557-8e4f-4520-91c8-cc2594e4ab9f</ns2:id>
        	<ns3:nick>liesledenaar</ns3:nick>
    	</member>
    </members>
</response>
~~~
