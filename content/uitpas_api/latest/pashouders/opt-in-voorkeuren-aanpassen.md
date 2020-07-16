---
---

# Opt-In voorkeuren aanpassen

CAUTION > Vanaf UiTPAS versie 3.3.0 is de manier van opt-in voorkeuren voor pashouders gewijzigd. Vanaf dan zijn de velden emailPreference en smsPreference deprecated. In de API endpoints waarin deze velden gemanipuleerd konden worden, is de parameter zelfs volledig verwijderd, en zal de API een foutboodschap geven (INVALID_PARAMETERS) indien deze toch nog gebruikt worden. Alle opt-in voorkeuren worden nu bewaard op het gekoppelde UiTID van de pashouder met onderstaande end-point

Method
POST

URL
{prefix}/uitpas/passholder/{uid}/optinpreferences
waarbij {uid} de UID is van de gekoppelde UiTID gebruiker.

Parameters:

| Naam                | Type    | Omschrijving                                                                                                                                                                                                           | Verplicht |
|---------------------|---------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------|
| optInServiceMails   | boolean | true indien de pashouder service mails wil ontvangen, anders false                                                                                                                                                     |           |
| optInMilestoneMails | boolean | true indien de pashouder milestone mails wil ontvangen, anders false                                                                                                                                                   |           |
| optInInfoMails      | boolean | true indien de pashouder info mails wil ontvangen, anders false                                                                                                                                                        |           |
| optInSms            | boolean | true indien de pashouder sms wil ontvangen, anders false                                                                                                                                                               |           |
| optInPost           | boolean | true indien de pashouder post wil ontvangen, anders false                                                                                                                                                              |           |
| balieConsumerKey    | String  | ConsumerKey van de balie waarop deze request gebeurt. Deze parameter is niet verplicht. Standaard wordt de consumer key uit de oauth request gebruikt. Zie gebruik van andere balies door Service Consumer in punt 2.4 |           |

_Authenticatie_
[User access token]({% link content/authenticatie-autorisatie/latest/authenticatie-XML-apis/authenticatie-via-useraccesstoken.md %}) van een balie medewerker

_Response_

Bij succes
HTTP 200 OK met een response body in XML formaat

Bij fouten
HTTP 400 met een response body in XML formaat:

| parameters         | verklaring                                                             |
|--------------------|------------------------------------------------------------------------|
| code               | ErrorCode van de fout:UNKNOWN_PASSHOLDER_UIDACTION_NOT_ALLOWED         |
| message            | Beschrijving van de fout                                               |
| requiredPermission | Indien code = ACCESS_DENIED, dan bevat dit veld de vereiste permissie. |


_Voorbeeld request_

POST /uitpas/passholder/0b58caf7-5663-4058-99b3-d1a982d260c9/optinpreferences optinMilestoneMails=true&optinInfoMails=true&optinSms=false

_Voorbeeld response_

~~~xml
<?xml version="1.0" encoding="UTF-8"?>
<response xmlns:cdb="http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.1/FINAL" xmlns:foaf="http://xmlns.com/foaf/0.1/" xmlns:geo="http://www.w3.org/2003/01/geo/wgs84_pos#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns">
   <uid>500118cc-d251-4eed-a36b-8fc5c2689fde</uid>
   <optInPreferences>
      <optInServiceMails>true</optInServiceMails>
      <optInMilestoneMails>true</optInMilestoneMails>
      <optInInfoMails>true</optInInfoMails>
      <optInSms>false</optInSms>
      <optInPost>false</optInPost>
   </optInPreferences>
</response>
~~~

NOTE > Deze voorkeuren kunnen ook door de UiTID gebruiker zelf aangepast worden via de UiTID API.
