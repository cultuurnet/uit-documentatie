---
---

# Update event cardsystems

## Host

 For documentation on UiTPAS base url, go [here]({% link content/json-ld/latest/authentication/authentication-baseUrl.md %})
 
## HTTP request

```
PUT /events/{eventId}/cardSystems/
```
Set the card systems coupled to the cultural event.
To avoid race conditions, if the event is not known by UiTPAS at the time of the request, it will still be saved and applied when it becomes known.

## Request headers

| Header        | Value            | Required? |
| ------------- | ---------------- | --------- |
| Authorization | Bearer {token}   | true      |
| X-Api-Key     | {apiKey}         | true      |
| Content-Type  | application/json | false     |

## Resource properties

| Property | Type | Description | Example |
|--|--|--|--|
| eventId | uuid | unique identifier for an event | d595414a-13e0-4dd2-b4bd-706599427351 |

## Request body

Array of cardSystem ID(s)

## Response

* `200 OK` : request successful
* `400 Bad Request` : incorrect method, payload or URI
* `401 Unauthorized` : expired JWT or the user behind the JWT does not have permission to perform this request

## Example

**request**

The following is an example of the request

```
PUT /events/de343e38-d656-4928-96bc-55578e0d94ec/cardSystems/ HTTP/1.1
Host: uitpas-test.uitdatabank.be
Authorization: Bearer {token}
x-api-key: {apikey}
Content-Type: text/plain

[
  "5"
]
```

**Response**

The following are example responses.

```
200 OK
```

```
400 Bad Request

{
    "title": "No route found for \"PUT /events/de343e38-d656-4928-96bc-55578e0d94ec/cardsystems/\"",
    "type": "about:blank",
    "status": 400
}
```

```
401 Unauthorized

Token claims validation failed. This most likely means the token is expired.
```
