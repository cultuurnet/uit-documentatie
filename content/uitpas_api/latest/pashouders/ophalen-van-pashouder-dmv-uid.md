---
---

# Ophalen van pashouder dmv uid

_Method_
GET

_URL_
{prefix}/uitpas/passholder/uid/{uid}
waarbij {uid} de uitId identificatie van de pashouder

Parameters:

| **Naam** | **Type** | **Omschrijving** |
| balieConsumerKey | String | ConsumerKey van de balie waarop deze request gebeurt. Deze parameter is niet verplicht. Standaard wordt de consumer key uit de oauth request gebruikt. Zie gebruik van andere balies door Service Consumer in punt 2.4 |

_Authenticatie_
[User access token]({% link content/authenticatie-autorisatie/latest/authenticatie-XML-apis/authenticatie-via-useraccesstoken.md %}) van de Balie medewerker die de actie uitvoert of van de eigenaar van de uitpas zelf

_Required permission_
In geval van balie medewerker: geen extra permissie nodig.
In geval van eigenaar van de uitpas heeft de serviceconsumer **PERMISSION_PASSHOLDER - ACTION_READ** nodig

**Response**

<u>Bij succes</u>
HTTP 200 OK met een response body in XML formaat

<u>Bij fouten</u>

HTTP 404 Not found status code, aangevuld met een XML body met extra informatie.

| code | ErrorCode van de fout:<br>UNKNOWN_PASSHOLDER_UID |
| message | Beschrijving van de fout |
| requiredPermission | Indien code = ACCESS_DENIED, dan bevat dit veld de vereiste permissie. |

_Voorbeeld request_

GET {prefix}/uitpas/passholder/uid/d6ec5bbf-ff7c-4ae9-a7c1-f62df05c12fc

_Voorbeeld response_


~~~xml
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<passHolder xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns" xmlns:foaf="http://xmlns.com/foaf/0.1/" xmlns:cdb="http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.1/FINAL" xmlns:geo="http://www.w3.org/2003/01/geo/wgs84_pos#">
	<cardSystemSpecific>
        <cardSystem>
            <id>1</id>
            <name>HELA</name>
        </cardSystem>
        <currentCard>
            <kansenpas>true</kansenpas>
            <status>ACTIVE</status>
            <uitpasNumber>
                <uitpasNumber>0930061965313</uitpasNumber>
            </uitpasNumber>
        </currentCard>
        <emailPreference>ALL_MAILS</emailPreference> <!-- DEPRECATED FIELD: Zie Opt-In voorkeuren aanpassen -->
        <kansenStatuutEndDate>2013-12-31T23:59:59+01:00</kansenStatuutEndDate>
        <kansenStatuutExpired>false</kansenStatuutExpired>
        <kansenStatuutInGracePeriod>false</kansenStatuutInGracePeriod>
        <smsPreference>NO_SMS</smsPreference> <!-- DEPRECATED FIELD: Zie Opt-In voorkeuren aanpassen -->
    </cardSystemSpecific>
    <city>AALST</city>
    <dateOfBirth>1980-04-15T00:00:00+02:00</dateOfBirth>
    <email>dev3@lodgon.com</email>
    <firstName>Nele</firstName>
    <secondName>middlename</secondName>
    <gender>FEMALE</gender>
    <gsm>gsm-nr</gsm>
    <inszNumber>80042432086</inszNumber>
    <lastActivationMailNumber>0</lastActivationMailNumber>
    <memberships/>
    <name>Custers</name>
    <nationality>Belg</nationality>
    <number>1</number>
    <numberOfCheckins>0</numberOfCheckins>
    <placeOfBirth>Aalst</placeOfBirth>
    <points>10.000</points>
    <postalCode>9300</postalCode>
    <registrationBalieConsumerKey>31413BDF-DFC7-7A9F-10403618C2816E44</registrationBalieConsumerKey>
    <street>Kalfstraat</street>
    <telephone>0444/44.44.44</telephone>
    <uitIdUser>
        <ns2:id>bd056f6f-7ff6-4781-baeb-a0ff77626e03</ns2:id>
        <ns3:nick>nele</ns3:nick>
        <optInPreferences>
            <optInServiceMails>false</optInServiceMails>
            <optInMilestoneMails>true</optInMilestoneMails>
            <optInInfoMails>false</optInInfoMails>
            <optInSms>false</optInSms>
            <optInPost>true</optInPost>
        </optInPreferences>
    </uitIdUser>
    <verified>false</verified>
</passHolder>
~~~
