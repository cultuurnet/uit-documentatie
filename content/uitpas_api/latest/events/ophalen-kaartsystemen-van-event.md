---
---

# Ophalen van kaartsystemen van een event

_Method_
GET

_URL_
{prefix}/uitpas/cultureevent/{cdbid}/cardsystems

Parameters:

Geen 

_Authenticatie_
Consumer request van de service consumer die het opvragen uitvoert

_Opmerking_
Indien de opzoeking gebeurt door een balie medewerker worden enkel de ticket sales getoond die door de balie werden uitgevoerd, waarvan de balie organisator van het evenement is of waarvan de balie de locatie van het evenement is.

_Required permission_
In geval van consumer request:  **PERMISSION_EVENT - ACTION_READ**

**Response**

<u>Bij succes</u>
HTTP 200 OK met een response body in XML formaat met daarin een code en een lijst van cardSystems, met daarin eventueel een lijst van distributionsKeys (bij manuele verdeelsleutels)

<u>Bij fouten</u>
HTTP 400 met een response body in XML formaat:

| code | ErrorCode van de fout:<br>UNKNOWN_EVENT_CDBID<br>ACTION_NOT_ALLOWED |
| message | Beschrijving van de fout |

_Voorbeeld request_

GET {prefix}/uitpas/cultureevent/01a1fc4b-0ca0-44dc-a701-ba48e26f140d/cardsystems

_Voorbeeld response_


~~~xml
<response>
    <code>ACTION_SUCCEEDED</code>
    <cardSystems>
        <cardSystem>
            <id>1</id>
            <name>UiTPAS Dender</name>
            <distributionKeys>
                <distributionKey>
                    <id>27</id>
                    <name>Speelplein HA</name>
                    <conditions>
                        <condition>
                            <definition>KANSARM</definition>
                            <operator>IN</operator>
                            <value>MY_CARDSYSTEM</value>
                        </condition>
                    </conditions>
                    <tariff>3.0</tariff>
                    <priceClasses>
                        <priceClass>
                            <name>Basistarief</name>
                            <price>10.0</price>
                            <tariff>3.0</tariff>
                        </priceClass>
                    </priceClasses>
                    <automatic>false</automatic>
                </distributionKey>
            </distributionKeys>
        </cardSystem>
    </cardSystems>
</response>

~~~
