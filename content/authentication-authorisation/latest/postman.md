---
---

# Postman Authentication

There is a known issue with our used authentication within Postman: it is not possible to automatically add the oauth_callback and oauth_verifier to the header ([doc](https://github.com/postmanlabs/postman-app-support/issues/283)).

Therefore, it is better to use this[repository](https://github.com/cultuurnet/php-oauth-example) as a method of checking whether there is an error in authentication. This repository has not been created as a solid basis for further development, but is suitable for testing.

To do a Consumer Request via Postman Chrome Rest Extension you will need:

* POSTMAN: https://chrome.google.com/webstore/detail/postman/fhbjgbiflinjbdggehcddcbncdddomop
* Consumer Key & Secret, this can be obtained from CultuurNet or using the demo consumer in [environments]({% link content/omgevingen/latest/endpoints.md %})

Then you also need an endpoint of the API you want to address:

* [UiTiD documentation]({% link content/uitid/latest/start.md %})
* [Search API-documentation]({% link content/search_api/latest/start.md %})

## OAuth 1.0 Consumer Request

You can easily simulate a request (on events for example) By completing the following in the Postman Request Builder:

1. Indentify GET method
2. Complete endpoint (available endpoints can be found here), eg https://test.uitid.be/search/rest/search
3. Add URL parameters, eg q = :
4. Select OAuth 1.0 in the Authorization tab
5. Enter Consumer Key & Secret (Test Consumer Key & Secret)
6. Check "Add Params to Header"
7. Check "Auto add parameters"
8. Optionally: Add application / json header in the Header tab



Example:

![Postman Consumer Request](/img/postman-consumer-request.png "Postman Consumer Request")

## Obtain OAuth 1.0 Consumer Request Token

You can complete the following items in the Postman Request Builder:

1. POST method
2. Complete endpoint (available endpoints can be found here), eg https://test.uitid.be/uitid/rest/requestToken
3. Select OAuth 1.0 in the Authorization tab
4. Enter Consumer Key & Secret
5. "Check "Add Params to Header"
6. Check "Auto add parameters"
7. Select x-www-form-urlencoded in the Body tab

The response will then provide oauth_token and oauth_token_secret.

Example:

![Postman Consumer Request Token](/img/postman-request-token1.png "Postman Consumer Request Token")

Result:

![Postman Consumer Request Token Result](/img/postman-request-token-result.png "Postman Consumer Request Token Result")
