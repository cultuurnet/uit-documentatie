---
---

# Refresh token

For specific API Clients, it is not ideal to request new Access Tokens as described in the [Request Access Token Flow]({% link content/entry_api_3/latest/authentication/authentication-jwt.md %}), because a manual authorization is needed when entering the UiTiD credentials. In the past, we provided so-called "long-lived" Access tokens for these clients.

In order to maintain this “long-lived token” functionality, we are introducing a ​**new​ ​refresh​ endpoint**, that will allow API Clients to renew their tokens regularly, hence providing an equivalent of the long-lived token.

This new **​Refresh​ flow** is added to the existing **​Request Access**​ and ​**Authorized Requests** ​flows. The only change in the existing flows is that upon obtaining an access token, the API Client also obtains a Refresh Token.

New flow relies on two types of tokens:
- **Access Token​** - used for accessing the server, has an expiration time (10h)
- **Refresh Token​** - used for requesting a new access token, once the current one is expired

## Request Access Token and Refresh Token Flow

![Request Access Token Flow](/img/request-access-token-flow.png "Request Access Token Flow")

* Step 1: **API client** sends a request with user credentials
* Step 2: **publiq server** validates credentials and redirects to API Client URL with **Access Token** and **Refresh Token**. API Client can now make HTTP requests to the server using the Access token for authorization

### HTTP request

```
GET https://<SERVER_URL>/connect?apiKey=<API_KEY>&destination=<YOUR_URL>
```
**Parameters**

* SERVER_URL: See [authentication/base url]({% link content/entry_api_3/latest/authentication/authentication-baseUrl.md %})
* API_KEY: your apiKey needs a specific permission to request a refresh token. Contact publiq vzw for configuration
* YOUR_URL: your redirect url

Example usage:

1/ Use your browser to navigate to: `https://<SERVER_URL>/connect?apiKey=<API_KEY>&destination=<YOUR_URL>`

2/ Login with your UiTiD credentials

3/ Query string contains the Access Token and Refresh Token:

```
https://jwt-test.uitdatabank.be/oob?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9jdWx1ZGItand0LXByb3ZpZGVyLmRldiIsInVpZCI6Ijg2YTAyYzY1LTY5NmQtNGMxNi1hOWIxLTllM2JjOGU2MzAzYyIsIm5pY2siOiJTdGlrc2VscyIsImVtYWlsIjoic3RhbkBjdWx0dXVybmV0LmJlIiwiaWF0IjoxNTA1ODAzNzQzLCJleHAiOjE1MDU4NDY5NDMsIm5iZiI6MTUwNTgwMzc0M30.D92rUZYZGVUHEuOyqI1U5cmyaMTAY_Og7F4ehYtIGOs-q9iIhffNE5bQWNTUvH0Kpgv5iZqBh_yca7gSEOtad8yjJfyYYOoY_Dw0zs9ZGDjwDVXAq1clab9xfvEzwRx4cLVBrSdi8CwlCDI0LRTZ6zz_SGu-lfP3jsGqCxSDbts8MaHi-6UERtXQUw_2b-nJSVnbFWwj7lrpQ1nooLRZv7FPh7jZVg4B2jqbST6x79sleikrlDQahCAwovHpTPVq-6c49ib8fqAWfIZHma6euEb5h8twVM_ZZ8GcYAENmpezXMwyXGtnYzDS1UscjC8kMh5lAz7xNdU674jBwJz&refresh=WHbB1RatZQqI8K3abzUu1_GM5e7umYt8qStutFRHdDGij
```

Collect the value behind `jwt=` for the Access Token and behind `refresh=` for Refresh Token

Note: the expiration of a JWT is set to 12 hours

## Refresh Token Flow

![Refresh Token Flow](/img/refresh-token-flow.png "Refresh Token Flow")

* Step 1: **API Client** makes a request using an **Access Token** that is expired
* Step 2: **publiq server** sends **"Denied Request"** response indicating that the token is expired
* Step 3: **API Client** sends a request with **Refresh Token** to **/refresh endpoint**
* Step 4: **publiq server** sends new **valid Access Token** to API Client

### HTTP method

```
GET https://<SERVER_URL>/refresh?apiKey=<API_KEY>&refresh=REFRESH_TOKEN
```
**Parameters**

* SERVER_URL: See [authentication/base url]({% link content/entry_api_3/latest/authentication/authentication-baseUrl.md %})
* API_KEY: your apiKey needs to have a specific permission to request and use a refresh token. Contact publiq vzw for configuration
* REFRESH_TOKEN: your previously obtained Refresh Token

Example Usage:

1/ Use your client to perform the following request: `https://<SERVER_URL>/refresh?apiKey=<API_KEY>&refresh=REFRESH_TOKEN`
2/ The response body will contain a valid Access Token

**curl example**
```
curl --request GET \
    --url
'https://SERVER_URL/refresh?apiKey=API_KEY&refresh=REFRESH_TOKEN'
```

**php example**
```
<?php

$curl​ = curl_init();

curl_setopt_array( ​$curl​, array(
    CURLOPT_URL =>
"https://SERVER_URL/refresh?apiKey=API_KEY&refresh=REFRESH_TOKEN"​,
    CURLOPT_CUSTOMREQUEST => ​"GET"​,
    CURLOPT_HTTPHEADER => array(
      ​"content-type: application/x-www-form-urlencoded"
    ),
));

$response​ = curl_exec(​$curl​);
$err​ = curl_error(​$curl​);

curl_close(​$curl​);

if​ (​$err​) {
    echo ​"cURL Error #:"​ . ​$err​;
} ​else​ {
    echo ​$response​;
}
```
