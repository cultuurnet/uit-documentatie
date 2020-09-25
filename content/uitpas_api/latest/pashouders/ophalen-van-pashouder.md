---
---

# Ophalen van pashouder

_Method_
GET

_URL_
{prefix}/uitpas/passholder/{uitpasNumber}
waarbij {uitpasNumber} de uitpas nummer

Parameters:

| **Naam** | **Type** | **Omschrijving** |
| balieConsumerKey | String | ConsumerKey van de balie waarop deze request gebeurt. Deze parameter is niet verplicht. Standaard wordt de consumer key uit de oauth request gebruikt. Zie gebruik van andere balies door Service Consumer in punt 2.4 |

_Authenticatie_
[User access token]({% link content/authenticatie-autorisatie/latest/authenticatie-XML-apis/authenticatie-via-useraccesstoken.md %}) van de Balie medewerker die de actie uitvoert of van de eigenaar van de uitpas zelf

In geval van balie medewerker: geen extra permissie nodig.
In geval van eigenaar van de uitpas heeft de serviceconsumer **PERMISSION_PASSHOLDER - ACTION_READ** nodig
De lidmaatschappen waarvoor de balie lees- en/of registratierechten worden getoond.

**Response**

<u>Bij succes</u>
HTTP 200 OK met een response body in XML formaat

<u>Bij fouten</u>

HTTP 400 Bad Request status code, aangevuld met een XML body met extra informatie.

| code | ErrorCode van de fout:<br>UNKNOWN_UITPASNUMBER<br>PARSE_INVALID_UITPASNUMBER |
| message | Beschrijving van de fout |
| requiredPermission | Indien code = ACCESS_DENIED, dan bevat dit veld de vereiste permissie. |

_Voorbeeld request_

GET {prefix}/uitpas/passholder/0987654321113

_Voorbeeld response_


~~~xml
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<passHolder xmlns:ns2="http://www.w3.org/1999/02/22-rdf-syntax-ns" xmlns:ns3="http://xmlns.com/foaf/0.1/">
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
        <emailPreference>ALL_MAILS</emailPreference> <!-- DEPRECATED FIELD: Zie Opt-In Voorkeuren aanpassen -->
        <kansenStatuutEndDate>2013-12-31T23:59:59+01:00</kansenStatuutEndDate>
        <kansenStatuutExpired>false</kansenStatuutExpired>
        <kansenStatuutInGracePeriod>false</kansenStatuutInGracePeriod>
        <smsPreference>NO_SMS</smsPreference> <!-- DEPRECATED FIELD: Zie Opt-In Voorkeuren aanpassen -->
    </cardSystemSpecific>
    <city>AALST</city>
    <dateOfBirth>1980-04-15T00:00:00+02:00</dateOfBirth>
    <email>dev3@lodgon.com</email>
    <firstName>Nele</firstName>
    <secondName>2de naam</secondName>
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
    <memberships>
    	<membership>
        	<id>1</id>
            <association>
            	<id>1</id>
                <name>Chiro Jongens</name>
                <cardSystem>
                	<id>1</id>
                    <name>HELA</name>
                </cardSystem>
                <enddateCalculation>BASED_ON_REGISTRATION_DATE</enddateCalculation>
                <enddateCalculationValidityTime>2</enddateCalculationValidityTime>
            </association>
            <endDate>2015-12-31T23:59:59+01:00</endDate>
            <renewable>true</renewable>
            <renewDate>2015-09-30T23:59:59+01:00</renewDate>
            <newEndDate>2017-12-31T23:59:59+01:00</newEndDate>
        </membership>
    </memberships>
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
