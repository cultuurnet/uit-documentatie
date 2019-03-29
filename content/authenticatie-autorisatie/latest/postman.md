---
---

# Authenticatie via Postman

Er is een gekend issue met onze gebruikte authentificatie binnen Postman: het is niet mogelijk om automatisch de oauth_callback en oauth_verifier toe te voegen aan de header ([doc](https://github.com/postmanlabs/postman-app-support/issues/283)).

Het is daarom beter om deze [repository](https://github.com/cultuurnet/php-oauth-example) te gebruiken als methode om na te gaan waar het eventueel fout gaat in de authenticatie. Deze repository is niet gemaakt als solide basis om verder op te ontwikkelen, maar is wel geschikt om te testen.

Om een Consumer Request via Postman Chrome Rest Extension te doen heb je nodig:

* POSTMAN: https://chrome.google.com/webstore/detail/postman/fhbjgbiflinjbdggehcddcbncdddomop
* Consumer Key & secret, deze kan je via publiq verkrijgen of de key en secret van de demo consumer gebruiken te vinden in onze sectie over [omgevingen]({% link content/omgevingen/latest/endpoints.md %})

Vervolgens heb je ook een endpoint nodig van de API die je wil aanspreken:

* [UiTiD documentatie]({% link content/uitid/latest/start.md %})
* [Search API-documentatie]({% link content/search_api/latest/start.md %})

## OAuth 1.0 Consumer Request

Je kan een request (op events bv.) makkelijk simuleren door de volgende in te vullen in de Postman Request Builder:

1. GET method aanduiden
2. Endpoint invullen (beschikbare endpoints vind je [hier]({% link content/omgevingen/latest/endpoints.md %})), bv. https://test.uitid.be/search/rest/search
3. URL parameters toevoegen, bv. q=*:*
4. OAuth 1.0 selecteren in de Authorization tab
5. Consumer Key & secret invullen (test consumer key & secret vind je hier)
6. "Add params to header" aanvinken
7. "Auto add parameters" aanvinken
8. Eventueel Accept: application/json header toevoegen in de Header tab


Voorbeeld:

![Postman Consumer Request](/img/postman-consumer-request.png "Postman Consumer Request")

## OAuth 1.0 Consumer Request Token ophalen

Je kan de volgende zaken invullen in de Postman Request Builder:

1. POST method aanduiden
2. Endpoint invullen (beschikbare endpoints vind je hier), bv. https://test.uitid.be/uitid/rest/requestToken
3. OAuth 1.0 selecteren in de Authorization tab
4. Consumer Key & secret invullen
5. "Add params to header" aanvinken
6. "Auto add parameters" aanvinken
7. x-www-form-urlencoded te selecteren in de Body tab.

In de response wordt vervolgens oauth_token en oauth_token_secret voorzien.

Voorbeeld:

![Postman Consumer Request Token](/img/postman-request-token1.png "Postman Consumer Request Token")

Resultaat:

![Postman Consumer Request Token Result](/img/postman-request-token-result.png "Postman Consumer Request Token Result")
