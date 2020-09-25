---
---

# Verzilveren welkomstvoordeel

_Method_
POST

_URL_
{prefix}/uitpas/passholder/{uitpasNumber}/cashInWelcomeAdvantage

waarbij {uitpasNumber} de uitpas nummer

Parameters:

| **Naam** | **Type** | **Omschrijving** | **Verplicht** |
| --- | --- | --- | --- |
| welcomeAdvantageId | Long | identificatie welkomstvoordeel | x |
| balieConsumerKey | String | ConsumerKey van de balie waarop deze request gebeurt. Deze parameter is niet verplicht. Standaard wordt de consumer key uit de oauth request gebruikt. Zie gebruik van andere balies door Service Consumer in punt 2.4 |  |

_Authenticatie_
[User access token]({% link content/authenticatie-autorisatie/latest/authenticatie-XML-apis/authenticatie-via-useraccesstoken.md %}) van de Balie medewerker die de actie uitvoert

**Response**

<u>Bij succes</u>
HTTP 200 OK met response body in xml formaat

<u>Bij fouten</u>
HTTP 400 met een response body in XML formaat:

| code | ErrorCode van de fout:<br>PARSE_INVALID_LONG<br>UNKNOWN_BALIE_CONSUMERKEY<br>UNKNOWN_WELCOME_ADVANTAGE_ID<br>INVALID_CARD_STATUS<br>WELCOMEADVANTAGE_ALREADY_CASHED_IN<br>ACTION_NOT_ALLOWED<br>BALIE_NOT_AUTHORIZED |
| message | Beschrijving van de fout |
| requiredPermission | Indien code = ACCESS_DENIED, dan bevat dit veld de vereiste permissie. |

_Voorbeeld request_

POST {prefix}/uitpas/passholder/0987654321113/cashInWelcomeAdvantage

welcomeAdvantageId=5

_Voorbeeld response_


~~~xml
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<promotionTO>
	<applicableCardSystems>
		<cardsystem>
			<id>1</id>
			<name>UiTPAS Regio Aalst</name>
		</cardsystem>
	</applicableCardSystems>
	<balies>
		<balie>
			<name>CC De Werf </name>
			<id>31413BDF-DFC7-7A9F-10403618C2816E44</id>
			<visible>false</visible>
		</balie>
	</balies>
	<cashedIn>true</cashedIn>
	<cashingDate>2015-06-26T14:45:08.554+02:00</cashingDate>
	<id>5</id>
	<inSpotlight>false</inSpotlight>
	<owningCardSystem>
		<id>1</id>
		<name>UiTPAS Regio Aalst</name>
	</owningCardSystem>
	<points>0</points>
	<title>Theatercheque € 2,5 in cc De Werf</title>
</promotionTO>
~~~
