---
---

# Opvragen voorraadtellers uitpassen

Geef de voorraadtellers voor uitpassen die aan een balie zijn toegekend, gerangschikt per kaartsysteem.

_Method_
GET

_URL_
{prefix}/uitpas/balie/countCards

Parameters:

| **Naam** | **Type** | **Omschrijving** | **Verplicht** |
| balieConsumerKey | String | ConsumerKey van de balie waarvoor deze request wordt uitgevoerd. | verplicht |

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

GET {prefix}/uitpas/balie/countCards?balieConsumerKey=cad22a20fa67b12ac1306b49755a2f7e

_Voorbeeld response_


~~~xml
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response>
	<counters>
    	<counter>
        	<status>SENT_TO_BALIE</status>
        	<kansenstatuut>false</kansenstatuut>
        	<count>0</count>
			<cardSystem>
				<id>1</id>
				<name>HELA</name>
			</cardSystem>
    	</counter>
    	<counter>
        	<status>SENT_TO_BALIE</status>
        	<kansenstatuut>true</kansenstatuut>
        	<count>0</count>
			<cardSystem>
				<id>1</id>
				<name>HELA</name>
			</cardSystem>
    	</counter>
    	<counter>
        	<status>LOCAL_STOCK</status>
        	<kansenstatuut>false</kansenstatuut>
        	<count>3</count>
			<cardSystem>
				<id>1</id>
				<name>HELA</name>
			</cardSystem>
    	</counter>
    	<counter>
        	<status>LOCAL_STOCK</status>
        	<kansenstatuut>true</kansenstatuut>
        	<count>4</count>
			<cardSystem>
				<id>1</id>
				<name>HELA</name>
			</cardSystem>
    	</counter>
	</counters>
</response>
~~~
