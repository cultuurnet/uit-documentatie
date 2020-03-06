---
---

# Authenticatie en autorisatie

UiTiD gebruikt de open standaard oAuth voor authenticatie.

Er zijn 2 manieren om als UiTiD Service Consumer toegang te verkrijgen tot de API:

1. UserAccessToken: een UserAccessToken geeft de Service Consumer toegangsrechten tot de UiTiD API namens de gebruiker.

2. Consumer Access: via een Consumer Request kan de Service Consumer bepaalde acties uitvoeren die typisch niet gelinkt zijn aan 1 gebruiker, zoals bv. een zoekopdracht.

Afhankelijk van het soort request moet al dan niet een UserAccessToken gebruikt worden. Dit staat steeds zo in de documentatie beschreven.

Voor bijna alle programmeertalen zijn er [verschillende libraries](http://oauth.net/code) beschikbaar.

Voor authenticatie via php met de publiq-services kan je ook [dit voorbeeld]({% link content/authenticatie-autorisatie/latest/authenticatie-via-consumerrequest.md %}) bekijken.

## Verklarende woordenlijst

* (Service) Consumer: Een website of applicatie die OAuth gebruikt om in naam van de User de Service Provider aan te spreken.

* Access Token: Een waarde die de consumer gebruikt om toegang te krijgen tot Protected Resources in naam van de User.

* Callback URL: URL van de locatie waar de User op terecht moet komen eens de authenticatie afgelopen is.

* Consumer access : toegang tot de API op het niveau van de service consumer. Deze staat de service consumer toe bepaalde acties op de API toe doen.

* Consumer Key : Een waarde gebruikt door de Service consumer om zich te identificeren bij de Oauth service provider (in dit geval UiTiD).

* Consumer secret: Een geheime waarde gebruikt door de service consumer die het ownership van de consumer key bevestigt tov de service provider.

* Nonce : Een Cryptografic Nonce is een unieke waarde (random string) voor iedere request, gekoppeld aan de timestamp. Deze waarde helpt replay attacks voorkomen, een gangbare methode in authenticatiebeveiliging.

* OAuth Verifier : een waarde die de Consumer nodig heeft om het Request Token bij de Service Provider in te wisselen voor een Access Token.

* Request Token: een waarde die de Consumer gebruikt om authenticatie van een user mee te bekomen. Bij een geslaagde authorisatie wordt deze ingewisseld voor een access token.

* Service Provider: Een webapplicatie die toegang tot OAuth verschaft.

* Signature Method :  Er bestaan vershchillende methods om Signatures mee te genereren. OAuth legt geen method op, maar laat de keuze uit drie methodes: HMAC-SHA1, RSA-SHA1, en PLAINTEXT, Service Providers kunnen eventueel eigen methodes toevoegen.

* Signature: Alle Token Requests en communicatie met de Protected Resources moeten ondertekend worden met een Signature die wordt gegeneerd door de key of token te combineren met het bijhorende secret. Dit proces zorgt ervoor dat niet geautoriseerde partijen geen gebruik kunnen maken van de uitgewisselde keys en tokens.

* Tokens/secrets : Het gebruik van tokens en secrets bedoeld om veilig usergegevens te kunnen uitwisselen zonder een transport-layer security protocol. Door gebruik te maken van tokens en secrets die voldoende lang en random zijn in combinatie met een beperkte geldigheidsduur kan een service provider er zeker van zijn dat eavesdroppers/brute force attacks geen kans maken.

* Token Secret: Een geheime waarde die de Consumer gebruikt om het ownership van een bepaald token te bevestigen bij de service provider.

* User: Een individu dat een account heeft bij de Service Provider (hier dus een UiTiD account).
