---
---

# Points of Sale opzoeken

Points of sale zijn balies met specifieke rechten om pashouders te registeren.

_Method_
GET

_URL_
{prefix}/uitpas/balie/pos

Parameters:

| **Naam** | **Type** | **Omschrijving** | **Verplicht** |
| city | String | Gemeente van de POS. (mag niet in combinatie met userId gebruikt worden) | x |
| userId | String | UID van de pashouder. Het resultaat zal een lijst van POS zijn met als gemeente de woonplaats van deze pashouder. |  |
| type | String | Zoekt POS met dit type. |  |
| start | int | start index zoekresultaten |  |
| max | int | maximum aantal zoekresultaten in de lijst |  |
| visible | boolean | Filter op zichtbare / onzichtbare balies |  |
| cardSystemId | long | zoek enkel balies die gekoppeld zijn aan dit kaartsysteem | x |

_Authenticatie_
[Consumer Request]({% link content/authenticatie-autorisatie/latest/authenticatie-XML-apis/authenticatie-via-consumerrequest.md %}) van de Service Consumer die deze actie uitvoert
_of_
[User access token]({% link content/authenticatie-autorisatie/latest/authenticatie-XML-apis/authenticatie-via-useraccesstoken.md %}) van de gebruker (parameter userId) waarvoor de POS opgezocht worden

**Response**

<u>Bij succes</u>
HTTP 200 OK met een response body in XML formaat

<u>Bij fouten</u>
HTTP 400 met een response body in XML formaat:

| code | ErrorCode van de fout:<br>INVALID_PARAMETERS<br>PARSE_INVALID_CITY_NAME<br>UNKNOWN_PASSHOLDER_UID |
| message | Beschrijving van de fout |
| requiredPermission | Indien code = ACCESS_DENIED, dan bevat dit veld de vereiste permissie. |

_Voorbeeld request_

GET {prefix}/uitpas/balie/pos?city=Aalst&cardSystemId=1

_Voorbeeld response_


~~~xml
<response>
	<balies>
		<balie>
            <name>CC De Werf </name>
            <id>31413BDF-DFC7-7A9F-10403618C2816E44</id>
            <type/>
            <street/>
            <number/>
            <box/>
            <postalCode>9300</postalCode>
            <city>Aalst</city>
            <telephoneNumber/>
            <contactPerson/>
            <email/>
            <visible>true</visible>
        </balie>
	</balies>
<total>1</total>
</response>
~~~
