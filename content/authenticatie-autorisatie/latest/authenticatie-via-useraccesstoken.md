---
---

# Authenticatie via User Access token

De oAuth request cyclus verloopt als volgt:

1. een request token ophalen bij UiTiD
2. de gebruiker om autorisatie vragen door hem naar UiTiD te sturen
3. het request token inwisselen voor een access token bij UiTiD

Daarna wordt het access token + secret gebruikt om requests te tekenen.

![3-legged oauth](/img/3leggednieuw.png "3-legged oauth")

## 1. Request token ophalen

~~~
{server}/requestToken
~~~

Het {server} gedeelte van de URL is afhankelijk van de omgeving.

*Methode*

~~~
POST
~~~

*Authorization header*

~~~
OAuth oauth_callback=”{callback}”, oauth_signature="{signature}", oauth_version="1.0", oauth_nonce="{nonce}", oauth_consumer_key="{consumerKey}", oauth_signature_method="HMAC-SHA1", oauth_timestamp="{timestamp}"
~~~

*Variabelen in header*

| parameter | formaat |	voorbeeld |
| --- | --- | --- |
| Callback | URL | ```oauth_callback=http%3A%2F%2Fexample.com%2Frequest_token_ready``` |
| Signature	| Consumer key en secret worden gecombineerd tot een Signature. | 	```oauth_signature="fLkvbX8ynU3rsKd5AqrWwUr2O%2BQ%3D"``` |
| Nonce	| Een unieke waarde voor iedere request met dezelfde timestamp. | 	 ```oauth_nonce="4572616e48616d6d65724c61686176"``` |
| Consumerkey	 | 	|  ```oauth_consumer_key="0685bd9184jfhq22"``` |
| Signature method	| UiTiD gebruikt standaard HMAC-SHA1. | 	```oauth_signature_method="HMAC-SHA1"```|
| Timestamp	| De Timestamp wordt uitgedrukt in number of seconds since January 1, 1970 00:00:00 GMT“	|  ```oauth_timestamp="137131200"``` |
| Version	| UiTiD gebruikt OAuth versie 1.0a.	|  ```oauth_version="1.0"``` |


*Andere headers*

Indien je client de parameter niet automatisch toevoegt: Content-Type: application/x-www-form-urlencoded

*Parameters*

Alle andere parameters	Alle parameters die meegegeven worden, zullen terugkomen in de accessToken response na de callback.

*Response*

~~~
oauth_token={TOKEN}&oauth_token_secret={TOKEN_SECRET}
~~~

## 2. Gebruiker om autorisatie vragen

In deze stap moet de browser van de gebruiker geredirect worden naar:

~~~
{server}/auth/authorize
~~~

Het {server} gedeelte van de URL is afhankelijk van de omgeving. De beschikbare omgevingen vind je [hier]({% link content/omgevingen/latest/start.md %}) terug

*Parameters*

| oauth_token	| *(Verplicht)* De request token uit de vorige stap |
| type	| Het type van het UiTiD scherm. Mogelijkheden: regular = toont het login scherm indien de gebruiker niet ingelogd is (default), register = toont altijd het registreer scherm, forcelogin = toont altijd het login scherm, ook al was de gebruiker nog ingelogd |
| via	|  Stuurt authenticatie automatisch door naar extern sociaal netwerk indien de gebruiker nog niet ingelogd is. Mogelijke waarden: Facebook, Twitter, Google.  Indien de gebruiker al ingelogd is op UiTiD, dan verandert er niets en krijgt de gebruiker dus onmiddellijk ‘Bent u dit?’ te zien. |
|  skipAuthorization	|  Bepaalt of de autorisatie stap overgeslaan mag worden en de gebruiker ‘automatisch’ toegang verleent tot zijn profiel data aan de Service Consumer dmv in te loggen. Mogelijke waarden: true, false. NOTA: de Service Consumer in kwestie moet beschikken over de permissie ‘autorisatie overslaan’ om gebruik te kunnen maken van deze parameter. Indien de permissie niet toegekend werd, wordt de parameter genegeerd. |
| lang | Taal waarin de aanmeld/registreer schermen worden weergegeven. mogelijk waarden: nl (standaard), en, fr, de.  De gebruiker zal vervolgens gevraagd worden om in te loggen bij UiTiD (indien nog niet ingelogd) en om toegang te verschaffen tot zijn UiTiDprofiel aan de Service Consumer in kwestie (indien nog niet gebeurd). |
| email | Optionele suggestie van het e-mailadres van de gebruiker. Dit e-mailadres zal vooraf ingevuld zijn op het login formulier. |

Daarna wordt de callback URL opgeroepen die ingesteld staat voor deze Service Consumer.

## 3. Request token inwisselen voor een access token

Na de autorisatie stap wordt de callback URL opgeroepen met volgende parameters:

| oauth_token	| het request token uit stap 1 |
| --- | --- |
| oauth_verifier |	een verificatie code om een access token mee op te halen. Vervolgens kan een access token opgehaald worden via ```{server}/accessToken``` Het {server} gedeelte van de URL is afhankelijk van de omgeving. De beschikbare omgevingen vind je terug hier. |

*Methode*

~~~
POST
~~~

*Authorization header*

~~~
OAuth oauth_signature="{signature}", oauth_version="1.0", oauth_nonce="{nonce}", oauth_consumer_key="{consumerKey}", oauth_signature_method="HMAC-SHA1", oauth_token="{token}", oauth_verifier="{verifier}", oauth_timestamp="{timestamp}"
~~~

*Response*

~~~
userId={userId}&oauth_token={accessToken}&oauth_token_secret={accessTokenSecret}[&extraParameter=extraValue]...
~~~
