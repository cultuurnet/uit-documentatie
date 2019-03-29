---
---

# Authentication via User Access token

The oAuth request cycle is as follows:

1. Get a request token from UiTiD.
2. Ask the user for authorization by sending it to UiTiD.
3. Redeem the request token for an access token at UiTiD.

Then, the access token + secret is used to sign requests.

![3-legged oauth](/img/3leggednew.png "3-legged oauth")

## 1. Retrieve Request Token

~~~
{server}/requestToken
~~~

The {server} section of the URL depends on the environment.

*Method*

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
| Signature	| Consumer key and secret are combined into a Signature. | 	```oauth_signature="fLkvbX8ynU3rsKd5AqrWwUr2O%2BQ%3D"``` |
| Nonce	| A unique value for each request with the same timestamp. | 	 ```oauth_nonce="4572616e48616d6d65724c61686176"``` |
| Consumerkey	 | 	|  ```oauth_consumer_key="0685bd9184jfhq22"``` |
| Signature method	| UiTiD uses HMAC-SHA1 by default. | 	```oauth_signature_method="HMAC-SHA1"```|
| Timestamp	| The Timestamp is expressed in number of seconds since January 1, 1970 00:00:00 GMT "	|  ```oauth_timestamp="137131200"``` |
| Version	| UiTiD uses OAuth version 1.0a.	|  ```oauth_version="1.0"``` |


*Other headers*

If your client does not automatically add the parameter: Content-Type: application / x-www-form-urlencoded

*Parameters*

All other parameters  given will be returned to the accessToken response after the callback.

*Response*

~~~
oauth_token={TOKEN}&oauth_token_secret={TOKEN_SECRET}
~~~

## 2. User to request authorization

In this step, the user's browser must be redirected to:

~~~
{server}/auth/authorize
~~~

The {server} section of the URL depends on the environment.The available environments can be found [here]({% link content/omgevingen/latest/start.md %})

*Parameters*

| oauth_token	| (Verplicht) De request token uit de vorige stap |
| --- | --- |
| type	| The type of the UiTiD screen. Possibilities: regular = displays login screen if user is not logged in (default), registry = always displays the registry screen, forcelogin = always displays login screen even if user is logged in |
| via	|  Automatically passes authentication to external social network if user is not yet logged in. Possible values: Facebook, Twitter, Google. If the user is already logged in to UiTiD, then nothing changes and the user will immediately see 'Is this you?'. |
|  skipAuthorization	|  Determines whether the authorization step can be skipped and the user automatically gives access to login to the Service Consumer through his profile data. Possible values: true, false. NOTE: The Service Consumers in question must have the "Authorization Skip" permission to use this parameter. If the permission was not assigned, the parameter will be ignored. |
| lang | Language in which the login / register screens are displayed. Possible values: nl (default), and, fr, the. The user will then be prompted to log in to UiTiD (if not logged in) and to access his UiTiD profile to the Service Consumer in question (if not yet). |

Then, the callback URL that is set for this Service Consumer is called.

## 3. Redeem Request Token for an Access Token

After the authorization step, the callback URL is called with the following parameters:

| oauth_token	| the request token from step 1 |
| --- | --- |
| oauth_verifier |	A verification code to retrieve an access token. An access token can then be retrieved via {server} / accessToken. The {server} section of the URL depends on the environment. The available environments can be found here. |

*Method*

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
