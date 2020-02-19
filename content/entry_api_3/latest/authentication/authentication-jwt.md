---
---

# How to perform authenticated requests

## Request Access Token Flow

![Request Access Token Flow](/img/request-access-token-flow.png "Request Access Token Flow")

* Step 1: **API client** sends a request with user credentials
* Step 2: **publiq server** validates credentials and redirects to API Client URL with **Access Token**. API Client can now make HTTP requests to the server using the Access token for authorization

### HTTP request

```
GET https://<SERVER_URL>/connect?destination=<YOUR_URL>
```
**Parameters**

* SERVER_URL: See [authentication/base url]({% link content/entry_api_3/latest/authentication/authentication-baseUrl.md %})
* YOUR_URL: your redirect url

Example usage:

1/ Use your browser to navigate to: `https://<SERVER_URL>/connect?destination=oob`

2/ Login using your UiTiD credentials

3/ Query string contains the valid Access Token:

```
https://jwtprovider-test.uitdatabank.be/culturefeed/oauth/oob?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9jdWx1ZGItand0LXByb3ZpZGVyLmRldiIsInVpZCI6Ijg2YTAyYzY1LTY5NmQtNGMxNi1hOWIxLTllM2JjOGU2MzAzYyIsIm5pY2siOiJTdGlrc2VscyIsImVtYWlsIjoic3RhbkBjdWx0dXVybmV0LmJlIiwiaWF0IjoxNTA1ODAzNzQzLCJleHAiOjE1MDU4NDY5NDMsIm5iZiI6MTUwNTgwMzc0M30.D92rUZYZGVUHEuOyqI1U5cmyaMTAY_Og7F4ehYtIGOs-q9iIhffNE5bQWNTUvH0Kpgv5iZqBh_yca7gSEOtad8yjJfyYYOoY_Dw0zs9ZGDjwDVXAq1clab9xfvEzwRx4cLVBrSdi8CwlCDI0LRTZ6zz_SGu-lfP3jsGqCxSDbts8MaHi-6UEYfXQUw_2b-nJSVnbFWwj7lrpQ1nooLRZv7FPh7jZVg4B2jqbST6x79sleikrlDQahCAwovHpTPVq-6c49ib8fqAWfIZHma6euEb5h8twVM_ZZ8GcYAENmpezXMwyXGtnYzDS1UscjC8kMh5lAz7xNdU674jBwJz
```

Collect the value behind `?jwt=`

Note: the expiration of a JWT is set to 12 hours

## Authorized Requests Flow

![Authorized Requests Flow](/img/authorized-requests-flow.png "Authorized Requests Flow")

* Step 1: **API Client** sends HTTP requests with valid Access Tokens
* Step 2: **publiq server** sends HTTP responses

Add JSON WebToken and API Key as headers with every authenticated request:

* API Key: in a custom `X-Api-Key` header
* JWT: as `Authorization` header

Example usage:

**Request**
```
PUT /places/ed388184-f18f-47b6-8e8f-1056a48a4b4b/name/nl HTTP/1.1
Host: io-test.uitdatabank.be
Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9jdWx1ZGItand0LXByb3ZpZGVyLmRldiIsInVpZCI6Ijg2YTAyYzY1LTY5NmQtNGMxNi1hOWIxLTllM2JjOGU2MzAzYyIsIm5pY2siOiJTdGlrc2VscyIsImVtYWlsIjoic3RhbkBjdWx0dXVybmV0LmJlIiwiaWF0IjoxNTA1ODAzNzQzLCJleHAiOjE1MDU4NDY5NDMsIm5iZiI6MTUwNTgwMzc0M30.D92rUZYZGVUHEuOyqI1U5cmyaMTAY_Og7F4ehYtIGOs-q9iIhffNE5bQWNTUvH0Kpgv5iZqBh_yca7gSEOtad8yjJfyYYOoY_Dw0zs9ZGDjwDVXAq1clab9xfvEzwRx4cLVBrSdi8CwlCDI0LRTZ6zz_SGu-lfP3jsGqCxSDbts8MaHi-6UEYfXQUw_2b-nJSVnbFWwj7lrpQ1nooLRZv7FPh7jZVg4B2jqbST6x79sleikrlDQahCAwovHpTPVq-6c49ib8fqAWfIZHma6euEb5h8twVM_ZZ8GcYAENmpezXMwyXGtnYzDS1UscjC8kMh5lAz7xNdU674jBwJz
X-Api-Key: c7c95c31-93b0-4a3b-8758-770e76d5ed46
```
