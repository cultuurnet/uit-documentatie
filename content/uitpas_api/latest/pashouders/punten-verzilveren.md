---
---

# Punten verzilveren

_Method_
POST

_URL_
{prefix}/uitpas/passholder/{uitpasNumber}/cashInPointsPromotion

waarbij {uitpasNumber} de uitpas nummer

Parameters:

| **Naam** | **Type** | **Omschrijving** | **Verplicht** |
| --- | --- | --- | --- |
| pointsPromotionId | Long | identificatie verzilver optie | x |
| balieConsumerKey | String | ConsumerKey van de balie waarop deze request gebeurt. Deze parameter is niet verplicht. Standaard wordt de consumer key uit de oauth request gebruikt. Zie gebruik van andere balies door Service Consumer in punt 2.4 |  |

_Authenticatie_
[User access token]({% link content/authenticatie-autorisatie/latest/authenticatie-XML-apis/authenticatie-via-useraccesstoken.md %}) van de Balie medewerker die de actie uitvoert

**Response**

<u>Bij succes</u>
HTTP 200 OK met response body in xml formaat

<u>Bij fouten</u>
HTTP 400 met een response body in XML formaat:

| code | ErrorCode van de fout:<br>INVALID_CARD (indien pashouder verwijderd werd)<br>PASSHOLDER_NO_ACTIVE_CARDSYSTEMS (indien pashouder geen actieve lidmaatschappen of enkel lidmaatschappen waarvan kansenstatuur vervallen is)<br>ACTION_NOT_ALLOWED<br>INVALID_PARAMETERS<br>PARSE_INVALID_UITPASNUMBER<br>PARSE_INVALID_LONG<br>UNKNOWN_UITPASNUMBER<br>UNKNOWN_BALIE_CONSUMERKEY |
| message | Beschrijving van de fout |
| cashInState | Indien ACTION_NOT_ALLOWED zal hier de oorzaak in vermeld staan:<br>NOT_POSSIBLE_DISABLED_BY_CARD_SYSTEM<br>NOT_POSSIBLE_INVALID_CARD<br>NOT_POSSIBLE_DATE_CONSTRAINT<br>NOT_POSSIBLE_VOLUME_CONSTRAINT<br>NOT_POSSIBLE_USER_VOLUME_CONSTRAINT<br>NOT_POSSIBLE_POINTS_CONSTRAINT<br>NOT_POSSIBLE_USER_CONSTRAINT<br>NOT_APPLICABLE_TO_PASSHOLDER |
| requiredPermission | Indien code = ACCESS_DENIED, dan bevat dit veld de vereiste permissie. |

_Voorbeeld request_

POST {prefix}/uitpas/passholder/0987654321321/cashInPointsPromotion

balieConsumerKey=31413BDF-DFC7-7A9F-10403618C2816E44&pointsPromotionId=6

_Voorbeeld response_


~~~xml
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<promotionTO>
	<applicableCardSystems/>
	<balies>
		<balie>
			<name>CC De Werf </name>
			<id>31413BDF-DFC7-7A9F-10403618C2816E44</id>
			<visible>false</visible>
		</balie>
	</balies>
	<cashedIn>true</cashedIn>
	<id>480</id>
	<inSpotlight>false</inSpotlight>
	<points>1</points>
	<title>gratis koffie</title>
</promotionTO>
~~~



~~~xml
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response>
	<code>ACTION_NOT_ALLOWED</code>
	<message>PointsPromotion 473 could not be cashed in by user 22970 - NOT_POSSIBLE_POINTS_CONSTRAINT</message>
	<cashInState>NOT_POSSIBLE_POINTS_CONSTRAINT</cashInState>
</response>
~~~
