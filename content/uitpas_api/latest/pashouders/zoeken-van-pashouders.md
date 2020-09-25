---
---

# Zoeken van pashouders

_Method_
GET

_URL_
{prefix}/uitpas/passholder/search

Parameters:

| Naam                      | Type                 | Omschrijving                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
|---------------------------|----------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| inszNumber                | String               | zoek pashouder met dit insz nummer                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| uitpasNumber              | List<String>         | zoek pashouders met de opgegeven uitpasnummers                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| name                      | String               | zoek pashouder met deze naam (wildcard * mogelijk)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| firstName                 | String               | zoek pashouder met deze voornaam (wildcard * mogelijk)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| street                    | String               | zoek pashouder met deze straat (wildcard * mogelijk)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| postalCode                | String               | zoek pashouder met deze postcode                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| city                      | String               | zoek pashouder in deze gemeente (wildcard * mogelijk)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| email                     | String               | zoek pashouder met dit e-mailadres                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| dob                       | W3CDate              | zoek pashouders geboren op deze dag.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| dobMin                    | W3CDate              | zoek pashouders geboren op of na deze dag.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| dobMax                    | W3CDate              | zoek pashouders geboren op of voor deze dag.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| kansenStatuut             | String               | zoek pashouders met (true) of zonder (false) kansenstatuut                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| kansenStatuutBegin        | W3CDate              | zoek pashouders die op of na deze dag kansenstatuut hebben                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| kansenStatuutEnd          | W3CDate              | zoek pashouders die kansenstatuut hebben op of voor deze dag                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| numberOfCheckins          | Integer              | zoek pashouders met dit aantal checkins                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| numberOfCheckinsMin       | Integer              | zoek pashouders met minimum dit aantal checkins                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| numberOfCheckinsMax       | Integer              | zoek pashouders met maximum dit aantal checkins                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| numberOfPointsMin         | Integer              | zoek pashouders met minimum dit aantal punten                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| numberOfPointsMax         | Integer              | zoek pashouders met maximum dit aantal punten                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| emailPreference (Removed) | String               | Dit zoekveld werd verwijderd en vervangen door het veld optInPreference                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| optInPreference           | String               | Mogelijke waarden:<br> SERVICE_MAILS: Als de gebruiker heeft aangegeven service emails te willen ontvangen <br> MILESTONE_MAILS: Als de gebruiker heeft aangegeven milestone emails te willen ontvangen <br> INFO_MAILS: Als de gebruiker heeft aangegeven informatieve emails te willen ontvangen <br> SMS: Als de gebruiker heeft aangegeven sms te willen ontvangenPOST: Als de gebruiker heeft aangegeven post te willen ontvangen <br> Deze parameter kan herhaald worden. Het resultaat wordt gefilterd op alle pashouders die aan minstens 1 van de optInPreferences voldoet. |
| balieConsumerKey          | String               | ConsumerKey van de balie waarop de gezochte pashouders werden geregistreerd                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| schoolConsumerKey         | String               | consumerKey van de school van de gezochte pashouders                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| includeBlocked            | boolean (true/false) | inclusief geblokkeerde pashouders indien true. default = false.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| associationId             | Long                 | zoek pashouders die een lidmaatschap hebben bij deze vereniging                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| expiredMemberships        | String               | ACTIVE: enkel actieve lidmaatschappen <br> BOTH: zowel actieve als vervallen <br> EXPIRED: enkel vervallen lidmaatschappen <br> default = ACTIVE                                                                                                                                                                                                                                                                                                                                                                                                                          |
| sort                      | String               | sortering: creationDate (standaard), uitpasNumber, firstName, name, numberOfCheckins, dateOfBirth                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| order                     | String               | volgorde: asc (oplopend, standaard), desc (aflopend)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| start                     | Integer              | start index (paging)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| max                       | Integer              | maximum aantal pashouders in het resultaat (paging)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |

_Authenticatie_
[Consumer Request]({% link content/authenticatie-autorisatie/latest/authenticatie-XML-apis/authenticatie-via-consumerrequest.md %}) van de Service Consumer die de actie uitvoert
_of_
[User access token]({% link content/authenticatie-autorisatie/latest/authenticatie-XML-apis/authenticatie-via-useraccesstoken.md %}) van de eigenaar van de uitpas zelf

_Required permission_
In geval van consumer request: de opgegeven balie (balieConsumerKey parameter) moet **PERMISSION_PASSHOLDER - ACTION_READ** hebben in 1 van zijn kaartsystemen. Indien er ENKEL gezocht wordt op uitpasNumber, dan wordt het resultaat niet gefilterd. Indien er ook op andere velden gezocht wordt, dan wordt het resultaat gefilterd op pashouders die een lidmaatschap hebben met 1 van de kaartsystemen van de balie.
Indien gezocht wordt op associationId moet de opgegeven balie bijkomend (balieConsumerKey parameter) **PERMISSION_ASSOCIATION - ACTION_USE** hebben op de opgegeven association.

In geval van uitpas eigenaar: er zal enkel een resultaat terug gegeven worden indien er maar 1 resultaat is en dat dit de gegevens zijn van de UiTid user die overeenkomt met het user access token.

**Response**

<u>Bij succes</u>
HTTP 200 OK met een response body in XML formaat:

| parameters           | verklaring                                               |
|----------------------|----------------------------------------------------------|
| passholders          | Lijst van PassHolder objecten                            |
| total                | Totaal aantal gevonden pashouders door deze zoekopdracht |
| invalidUitpasNumbers | Lijst van ongeldige uitpasNumbers                        |

<u>Bij fouten</u>
HTTP 400 met een response body in XML formaat:

| parameters          | verklaring                                                                                                                                                                            |
|--------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| code               | ErrorCode van de fout:PARSE_INVALID_DATE<br>PARSE_INVALID_UITPASNUMBER (indien alle uitpasnummer ongeldig)PARSE_INVALID_INSZ <br> PARSE_INVALID_BOOLEAN <br> UNKNOWN_ASSOCIATION_ID <br> UNKNOWN_BALIE_NAME |
| message            | Beschrijving van de fout                                                                                                                                                              |
| requiredPermission | Indien code = ACCESS_DENIED, dan bevat dit veld de vereiste permissie.                                                                                                                |
_Voorbeeld request_

GET {prefix}/uitpas/passholder/search?firstName=An

_Voorbeeld response_


~~~xml
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response xmlns:ns2="http://www.w3.org/1999/02/22-rdf-syntax-ns" xmlns:ns3="http://xmlns.com/foaf/0.1/">
    <passholders>
        <passholder>
            <cardSystemSpecific>
                <cardSystem>
                    <adminGroup/>
                    <assignWelcomeAdvantages>true</assignWelcomeAdvantages>
                    <cashInAllowed>true</cashInAllowed>
                    <id>1</id>
                    <marker>HELA_MARKER</marker>
                    <name>HELA</name>
                    <permanent>true</permanent>
                    <prefixes>09300</prefixes>
                    <prefixes>09340</prefixes>
                    <prefixes>09450</prefixes>
                    <prefixes>09420</prefixes>
                    <sendMailsEnabled>true</sendMailsEnabled>
                </cardSystem>
                <currentCard>
                    <cardSystem>
                        <adminGroup/>
                        <assignWelcomeAdvantages>true</assignWelcomeAdvantages>
                        <cashInAllowed>true</cashInAllowed>
                        <id>1</id>
                        <marker>HELA_MARKER</marker>
                        <name>HELA</name>
                        <permanent>true</permanent>
                        <prefixes>09300</prefixes>
                        <prefixes>09340</prefixes>
                        <prefixes>09450</prefixes>
                        <prefixes>09420</prefixes>
                        <sendMailsEnabled>true</sendMailsEnabled>
                    </cardSystem>
                    <kansenpas>false</kansenpas>
                    <status>ACTIVE</status>
                    <uitpasNumber>
                        <uitpasNumber>0930012345607</uitpasNumber>
                    </uitpasNumber>
                </currentCard>
                <emailPreference>ALL_MAILS</emailPreference> <!-- DEPRECATED FIELD: Zie Opt-In voorkeuren aanpassen -->
                <kansenStatuutExpired>false</kansenStatuutExpired>
                <kansenStatuutInGracePeriod>false</kansenStatuutInGracePeriod>
                <smsPreference>NO_SMS</smsPreference> <!-- DEPRECATED FIELD: Zie Opt-In voorkeuren aanpassen -->
            </cardSystemSpecific>
            <city>AALST</city>
            <dateOfBirth>1980-12-16T00:00:00+01:00</dateOfBirth>
            <email>an.wouters@mailinator.com</email>
            <firstName>An</firstName>
            <secondName>middlename</secondName>
            <gender>FEMALE</gender>
            <gsm>gsm-nr</gsm>
            <inszNumber>78021542697</inszNumber>
            <lastActivationMailNumber>0</lastActivationMailNumber>
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
                    <endDate>2015-31-31T23:59:59+01:00</endDate>
                    <renewable>true</renewable>
                    <renewDate>2015-09-30T23:59:59+01:00</renewDate>
                    <newEndDate>2017-12-31T23:59:59+01:00</newEndDate>
                </membership>
            </memberships>
            <name>Wouters</name>
            <nationality>Belg</nationality>
            <number>1</number>
            <numberOfCheckins>2</numberOfCheckins>
            <placeOfBirth>Lede</placeOfBirth>
            <points>10.000</points>
            <postalCode>9300</postalCode>
            <registrationBalieConsumerKey>cad22a20fa67b12ac1306b49755a2f7e</registrationBalieConsumerKey>
            <street>Wolvenveld</street>
            <telephone>0444/44.44.44</telephone>
            <uitIdUser>
                <rdf:id>d943b39c-5ab9-4fc2-a8e0-6245a0bc24ab</rdf:id>
                <foaf:nick>anwouters</foaf:nick>
                <optInPreferences>
                    <optInServiceMails>false</optInServiceMails>
                    <optInMilestoneMails>true</optInMilestoneMails>
                    <optInInfoMails>false</optInInfoMails>
                    <optInSms>false</optInSms>
                    <optInPost>true</optInPost>
                </optInPreferences>
            </uitIdUser>
            <verified>false</verified>
        </passholder>
    </passholders>
    <total>1</total>
</response>
~~~


_Voorbeeld request met geldige en ongeldige uitpasnummers_

GET {prefix}/uitpas/passholder/search?uitpasNumber=0934000049106&uitpasNumber=0930000390703

_Voorbeeld response_


~~~xml
<response xmlns:cdb="http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.1/FINAL" xmlns:foaf="http://xmlns.com/foaf/0.1/" xmlns:geo="http://www.w3.org/2003/01/geo/wgs84_pos#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns">
    <passholders>
        <passholder>
            <name>De Rudder</name>
            <firstName>Karel Peter</firstName>
            ....
            <memberships/>
        </passholder>
    </passholders>
    <invalidUitpasNumbers>
        <invalidUitpasNumber>0930000390703</invalidUitpasNumber>
    </invalidUitpasNumbers>
    <total>1</total>
</response>
~~~


_Voorbeeld request met enkel ongeldige uitpasnummers_

GET {prefix}/uitpas/passholder/search?uitpasNumber=0934000049103&uitpasNumber=0930000390703

_Voorbeeld response_


~~~xml
<response xmlns:cdb="http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.1/FINAL" xmlns:foaf="http://xmlns.com/foaf/0.1/" xmlns:geo="http://www.w3.org/2003/01/geo/wgs84_pos#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns">
    <invalidUitpasNumbers>
        <invalidUitpasNumber>0934000049103</invalidUitpasNumber>
        <invalidUitpasNumber>0930000390703</invalidUitpasNumber>
    </invalidUitpasNumbers>
</response>
~~~
