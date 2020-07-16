---
---

# Balies opzoeken

_Method_
GET

_URL_
{prefix}/uitpas/balie/search

Parameters:

| **Naam** | **Type** | **Omschrijving** | **Verplicht** |
| pointOfSale | Boolean | Zoekt enkel PointOfSale Balies (die kaarten kunnen verkopen) indien deze parameter “true” is |  |
| school | Boolean | Zoekt enkel ‘School’ balies indien deze parameter “true” is |  |
| cardSystemId | List<Long> | Zoekt balies binnen deze kaartsystemen. Deze parameter is verplicht wanneer 'pointOfSale' of 'school' true is. |  |
| groupName | List<String> | Zoekt balies die tot de groep met gegeven naam behoren. Deze parameter kan niet gebruikt worden wanneer 'pointOfSale' of 'school' true is. |  |
| key | String | ConsumerKey van de gezochte balie |  |
| userId | String | UID van de pashouder. Het resultaat zal een lijst van balies zijn met als gemeente de woonplaats van deze pashouder. |  |
| city | String | Gemeente van de POS. (mag niet in combinatie met userId gebruikt worden) |  |
| type | String | Zoekt balies met dit type. |  |
| start | int | start index zoekresultaten |  |
| max | int | maximum aantal zoekresultaten in de lijst |  |
| visible | boolean | Zoek op zichtbare / onzichtbare balies |  |

_Authenticatie_
[Consumer Request]({% link content/authenticatie-autorisatie/latest/authenticatie-XML-apis/authenticatie-via-consumerrequest.md %}) van de Service Consumer die deze actie uitvoert
_of_
[User access token]({% link content/authenticatie-autorisatie/latest/authenticatie-XML-apis/authenticatie-via-useraccesstoken.md %}) van de gebruker (parameter userId) waarvoor de balies opgezocht worden

**Response**

<u>Bij succes</u>
HTTP 200 OK met een response body in XML formaat

<u>Bij fouten</u>
HTTP 400 met een response body in XML formaat:

| code | ErrorCode van de fout:<br>INVALID_PARAMETERS<br>UNKNOWN_PASSHOLDER_UID<br>PARSE_INVALID_CITY_NAME |
| message | Beschrijving van de fout |
| requiredPermission | Indien code = ACCESS_DENIED, dan bevat dit veld de vereiste permissie. |

_Voorbeeld request_

GET {prefix}/uitpas/balie/search?city=Aalst&school=true&cardSystemId=1

_Voorbeeld response_


~~~xml
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response>
    <balies>
        <balie>
            <name>School1</name>
            <id>ffd22a20fefeb12ac1306b49755a2fee</id>
            <type></type>
            <street></street>
            <number></number>
            <box></box>
            <postalCode></postalCode>
            <city>Aalst</city>
            <telephoneNumber></telephoneNumber>
            <contactPerson></contactPerson>
            <email></email>
        </balie>
        <balie>
            <name>School2</name>
            <id>fed22a20fefeb12ac1306b49755a2fef</id>
            <type></type>
            <street></street>
            <number></number>
            <box></box>
            <postalCode></postalCode>
            <city>Aalst</city>
            <telephoneNumber></telephoneNumber>
            <contactPerson></contactPerson>
            <email></email>
        </balie>
    </balies>
    <total>2</total>
</response>
~~~


GET {prefix}/uitpas/balie/search?groupName=Geauthorizeerde registratie balies

_Voorbeeld response_


~~~xml
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response>
    <balies>
        <balie>
            <name>Buurthuis 't Hoekje</name>
            <id>5EC18A61-FD14-97E3-1DA8B070D41DDB2F</id>
            <postalCode>8400</postalCode>
            <city>Oostende</city>
            <visible>true</visible>
            <cardSystems>
                <cardSystem>
                    <id>7</id>
                    <name>UiTPAS Oostende</name>
                    <groups>
                        <group>
                            <id>8</id>
                            <name>Geauthorizeerde registratie balies</name>
                        </group>
                        <group>
                            <id>846</id>
                            <name>Mag pashouders andere gemeentes aanmaken</name>
                        </group>
                    </groups>
                </cardSystem>
            </cardSystems>
        </balie>
        <balie>
            <name>Buurthuis De Drie Gapers</name>
            <id>20D173FC-AA0B-667A-653ED05B208C2EE9</id>
            <postalCode>8400</postalCode>
            <city>Oostende</city>
            <visible>true</visible>
            <cardSystems>
                <cardSystem>
                    <id>7</id>
                    <name>UiTPAS Oostende</name>
                    <groups>
                        <group>
                            <id>8</id>
                            <name>Geauthorizeerde registratie balies</name>
                        </group>
                        <group>
                            <id>846</id>
                            <name>Mag pashouders andere gemeentes aanmaken</name>
                        </group>
                    </groups>
                </cardSystem>
            </cardSystems>
        </balie>
    </balies>
    <total>2</total>
</response>
~~~
