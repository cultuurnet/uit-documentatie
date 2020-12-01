---
---

# Ophalen van pashouder dmv uitpasnummer, chipnummer, INSZ of INSZ barcode

_Method_
GET

_URL_
{prefix}/uitpas/retrieve

Parameters:

| **Naam** | **Type** | **Omschrijving** |
| identification | String | Uitpasnummer, chipnummer, INSZ of INSZ barcode van de pashouder die gezocht wordt. De server detecteert zelf om welk soort ID het gaat. |
| balieConsumerKey | String | ConsumerKey van de balie waarvoor deze request wordt uitgevoerd. Verplicht indien uitgevoerd door een balie medewerker |

_Authenticatie_
[User access token]({% link content/authenticatie-autorisatie/latest/authenticatie-XML-apis/authenticatie-via-useraccesstoken.md %}) van de Balie medewerker die de actie uitvoert of een consumer request met een consumer met rechten op 'identificatie van pashouders'

In geval van balie medewerker: geen extra permissie nodig.
De lidmaatschappen waarvoor de balie lees- en/of registratierechten worden getoond.

**Response**

<u>Bij succes</u>
HTTP 200 OK met een response body in XML formaat

| Response veld | Beschrijving |
| code | enkel aanwezig in geval van error, mogelijkheden:<br>INVALID_CARD_STATUS_BLOCKED<br>KANSENSTATUUT_EXPIRED |
| passHolder | passHolder object indien gevonden |
| card | gevonden kaart (Indien een passHolder met kaarten wordt gevonden, zal de meest matchende gegeven worden) |
| groupPass | Groeppass indien gevonden |
| uitpasNumberOriginalRequest | uitpasnummer waarmee eventuele volgende requests uitgevoerd kunnen worden. Dit zal de best overeenkomende kaartnummer van de pashouder zijn afhankelijk van de request. |

<u>Bij fouten</u>

HTTP 400 Bad Request status code, aangevuld met een XML body met extra informatie.

| code | ErrorCode van de fout:<br>UNKNOWN_IDENTIFICATION<br>MISSING_REQUIRED_FIELDS |
| message | Beschrijving van de fout |
| requiredPermission | Indien code = ACCESS_DENIED, dan bevat dit veld de vereiste permissie. |

_Voorbeeld request_

GET {prefix}/uitpas/retrieve?identification=0930000000107&balieConsumerKey=31413BDF-DFC7-7A9F-10403618C2816E44

_Voorbeeld response_


~~~xml
<response xmlns:cdb="http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.1/FINAL" xmlns:foaf="http://xmlns.com/foaf/0.1/" xmlns:geo="http://www.w3.org/2003/01/geo/wgs84_pos#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns">
    <passHolder>
        <name>Vanmaele</name>
        <firstName>Ellen</firstName>
        <inszNumber>70010105277</inszNumber>
        <email>ellen.vanmaele@gmail.com</email>
        <dateOfBirth>1970-01-01T01:00:00+01:00</dateOfBirth>
        <street>Industrieweg</street>
        <number>3</number>
        <postalCode>3001</postalCode>
        <city>Leuven</city>
        <telephone/>
        <nationality>Belg</nationality>
        <placeOfBirth>Hasselt</placeOfBirth>
        <gender>FEMALE</gender>
        <uitIdUser>
            <rdf:id>22b69dc0-abf7-40f2-8ae7-c1e69811ed7c</rdf:id>
            <foaf:nick>EllenVan</foaf:nick>
            <foaf:depiction>//media.uitid.be/fis/rest/download/ce126667652776f0e9e55160f12f5478/uiv/picture-15835.jpg</foaf:depiction>
            <optInPreferences>
                <optInServiceMails>false</optInServiceMails>
                <optInMilestoneMails>true</optInMilestoneMails>
                <optInInfoMails>false</optInInfoMails>
                <optInSms>false</optInSms>
                <optInPost>true</optInPost>
            </optInPreferences>
        </uitIdUser>
        <registrationBalieConsumerKey>47B6FA21-ACB1-EA8F-2C231182C7DD0A19</registrationBalieConsumerKey>
        <numberOfCheckins>93</numberOfCheckins>
        <verified>true</verified>
        <gsm>0477961429</gsm>
        <moreInfo/>
        <picture>fefereNf/2Q==</picture>
        <points>23.550</points>
        <cardSystemSpecific>
            <cardSystem>
                <id>1</id>
                <name>UiTPAS Regio Aalst</name>
            </cardSystem>
            <currentCard>
                <kansenpas>false</kansenpas>
                <status>ACTIVE</status>
                <uitpasNumber>
                    <uitpasNumber>0930000000107</uitpasNumber>
                </uitpasNumber>
            </currentCard>
            <emailPreference>NOTIFICATION_MAILS</emailPreference> <!-- DEPRECATED FIELD: Zie Opt-In voorkeuren aanpassen -->
            <kansenStatuut>false</kansenStatuut>
            <kansenStatuutExpired>false</kansenStatuutExpired>
            <kansenStatuutInGracePeriod>false</kansenStatuutInGracePeriod>
            <lastActivationMailNumber>1</lastActivationMailNumber>
            <smsPreference>NOTIFICATION_SMS</smsPreference> <!-- DEPRECATED FIELD: Zie Opt-In voorkeuren aanpassen -->
            <status>ACTIVE</status>
        </cardSystemSpecific>
        <memberships>
            <membership>
                <association>
                    <id>5</id>
                    <name>Club Ellen obv registratiedatum</name>
                    <cardSystems>
                        <cardSystem>
                            <id>1</id>
                            <name>UiTPAS Regio Aalst</name>
                        </cardSystem>
                    </cardSystems>
                </association>
                <endDate>2017-01-12T23:59:59+01:00</endDate>
                <expired>false</expired>
                <id>218</id>
                <renewDate>2016-12-12T23:59:59+01:00</renewDate>
                <renewable>false</renewable>
            </membership>
            <membership>
                <association>
                    <id>1</id>
                    <name>Jeugdhuis Leeuwerik</name>
                    <cardSystems>
                        <cardSystem>
                            <id>1</id>
                            <name>UiTPAS Regio Aalst</name>
                        </cardSystem>
                    </cardSystems>
                </association>
                <endDate>2016-01-31T23:59:59+01:00</endDate>
                <expired>false</expired>
                <id>247</id>
                <renewDate>2015-11-30T23:59:59+01:00</renewDate>
                <renewable>false</renewable>
            </membership>
            <membership>
                <association>
                    <id>11</id>
                    <name>vrij tot einde jaar</name>
                    <cardSystems>
                        <cardSystem>
                            <id>1</id>
                            <name>UiTPAS Regio Aalst</name>
                        </cardSystem>
                    </cardSystems>
                </association>
                <endDate>2015-12-31T23:59:59+01:00</endDate>
                <expired>false</expired>
                <id>248</id>
                <renewDate>2015-11-30T23:59:59+01:00</renewDate>
                <renewable>false</renewable>
            </membership>
        </memberships>
    </passHolder>
    <card>
        <kansenpas>false</kansenpas>
        <status>ACTIVE</status>
        <uitpasNumber>
            <uitpasNumber>0930000000107</uitpasNumber>
        </uitpasNumber>
        <cardSystem>
            <id>1</id>
            <name>UiTPAS Regio Aalst</name>
        </cardSystem>
    </card>
    <uitpasNumberOriginalRequest>0930000000107</uitpasNumberOriginalRequest>
</response>
~~~


_Voorbeeld response groepspas_


~~~xml
<response xmlns:cdb="http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.1/FINAL" xmlns:foaf="http://xmlns.com/foaf/0.1/" xmlns:geo="http://www.w3.org/2003/01/geo/wgs84_pos#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns">
    <card>
        <cardSystem>
            <id>1</id>
            <name>UiTPAS Regio Aalst</name>
        </cardSystem>
        <cardType>CARD</cardType>
        <kansenpas>true</kansenpas>
        <status>ACTIVE</status>
        <uitpasNumber>
            <uitpasNumber>0930000184513</uitpasNumber>
        </uitpasNumber>
    </card>
    <groupPass>
        <name>Groupspas scouts</name>
        <endDate>2015-09-30T00:00:00+02:00</endDate>
        <ticketsPerYear>20</ticketsPerYear>
        <uuid>126e84a5-b0cb-40f5-855f-4f2670c26c5d</uuid>
        <availableTickets>17</availableTickets>
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
</response>
~~~


_Voorbeeld response kaart met status LOCAL_STOCK_


~~~xml
<response xmlns:cdb="http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.1/FINAL" xmlns:foaf="http://xmlns.com/foaf/0.1/" xmlns:geo="http://www.w3.org/2003/01/geo/wgs84_pos#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns">
    <card>
        <balie>
            <name>Vierdewereldgroep Mensen voor Mensen</name>
            <id>b95d1bcf-533d-45ac-afcd-e015cfe86c84</id>
        </balie>
        <cardSystem>
            <id>1</id>
            <name>UiTPAS Regio Aalst</name>
        </cardSystem>
        <cardType>CARD</cardType>
        <kansenpas>true</kansenpas>
        <status>LOCAL_STOCK</status>
        <uitpasNumber>
            <uitpasNumber>0930000166411</uitpasNumber>
        </uitpasNumber>
    </card>
</response>
~~~
