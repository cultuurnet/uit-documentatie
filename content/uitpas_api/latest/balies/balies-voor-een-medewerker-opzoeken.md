---
---

# Balies voor een medewerker opzoeken

Zoek alle balies voor een medewerker en de rol die de medewerker binnen de balie vervult. (member of admin). Ook de permissies en groepen van elk kaartsysteem waarmee de gekoppeld is balie, worden meegegeven. De mogelijke permissies zijn:

1. _registratie_: indien de balie pashouders mag registreren binnen het kaartsysteem
2. _kansenstatuut toekennen_: indien de balie naast registreren van pashouder, ook kansenstatuut mag toekennen binnen het kaartsysteem. Deze permissie komt steeds samen voor met de permissie “_registratie_”.

De groepen kunnen o.a. Scholen, Geauthorizeerde registratie balies,… zijn.

_Method_
GET

_URL_
{prefix}/uitpas/balie/list

Parameters:

| **Naam** | **Type** | **Omschrijving** | **Verplicht** |
| uid | String | UID van de CultureFeed gebruiker. | x |

_Authenticatie_
[User access token]({% link content/authenticatie-autorisatie/latest/authenticatie-XML-apis/authenticatie-via-useraccesstoken.md %}) van de gebruiker die de actie uitvoert.

_Required permission_
Uid moet gelijk zijn aan de uid van de culturefeed gebruiker die ingelogd is.

**Response**

<u>Bij succes</u>
HTTP 200 OK met een response body in XML formaat

<u>Bij fouten</u>
HTTP 400 met een response body in XML formaat:

| code | ErrorCode van de fout:<br>MISSING_REQUIRED_FIELDS<br>UNKNOWN_USER |
| message | Beschrijving van de fout |
| requiredPermission | Indien code = ACCESS_DENIED, dan bevat dit veld de vereiste permissie. |

_Voorbeeld request_

GET {prefix}/uitpas/balie/list?uid=6b9f81a2-7505-4fdd-b152-dddeaf235cde

_Voorbeeld response_


~~~xml
<response>
    <balies>
        <balie>
            <id>771</id>
            <consumerKey>5C9C73D3-E82F-E7B3-44161E6E3802E64F</consumerKey>
            <name>'t Gasthuys - Stedelijk Museum Aalst</name>
            <role>admin</role>
            <actorId>5C9C73D3-E82F-E7B3-44161E6E3802E64F</actorId>
            <cardSystems>
                <cardSystem>
                    <id>1</id>
                    <name>UiTPAS Regio Aalst</name>
                    <permissions/>
                    <groups>
                        <group>Checkin and Ticket balies</group>
                    </groups>
                </cardSystem>
            </cardSystems>
        </balie>
        <balie>
            <id>1236</id>
            <consumerKey>28808C2F-0DB2-D2CF-F508ECB994D2505F</consumerKey>
            <name>Muntpunt</name>
            <role>admin</role>
            <actorId>28808C2F-0DB2-D2CF-F508ECB994D2505F</actorId>
            <cardSystems>
                <cardSystem>
                    <id>3</id>
                    <name>Paspartoe</name>
                    <permissions>
                        <permission>registratie</permission>
                        <permission>kansenstatuut toekennen</permission>
                    </permissions>
                    <groups>
                        <group>Geauthorizeerde registratie balies</group>
                        <group>Checkin and Ticket balies</group>
                        <group>Mag pashouders andere gemeentes aanmaken</group>
                    </groups>
                </cardSystem>
            </cardSystems>
        </balie>
        <balie>
            <id>744</id>
            <consumerKey>5d7fa9ac-9d17-406f-abbc-0eedb5866d7c</consumerKey>
            <name>Sportdienst Lede</name>
            <role>admin</role>
            <actorId>5d7fa9ac-9d17-406f-abbc-0eedb5866d7c</actorId>
            <cardSystems>
                <cardSystem>
                    <id>1</id>
                    <name>UiTPAS Regio Aalst</name>
                    <permissions>
                        <permission>registratie</permission>
                    </permissions>
                    <groups>
                        <group>Niet-geauthorizeerde registratie balies</group>
                    </groups>
                </cardSystem>
            </cardSystems>
        </balie>
    </balies>
</response>
~~~
