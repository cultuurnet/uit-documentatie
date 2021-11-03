---
---

# Update specific cardsystem for an event

**!These endpoints may only be used for specific use cases where not every event from the organizer is applicable for all card systems of the organizer!**

## Host

 For documentation on UiTPAS base url, go [here]({% link content/entry_api_3/latest/authentication/authentication-baseUrl.md %})

## HTTP request

```
PUT /events/{eventId}/cardSystems/{cardSystemId}
```
Add a card system (with an automatic distribution key) to the event.

```
PUT /events/{eventId}/cardSystems/{cardSystemId}/distributionKey/{distributionKeyId}
```
Add a card system (with a manual distribution key) to the event.

```
DELETE /events/{eventId}/cardSystems/{cardSystemId}
```
Remove a card system from the event.

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
| cardSystemId | number | unique identifier for a cardSystem | 1 |
| distributionKeyId | number | unique identifier for a distributionKey | 44 |

## Request body

Do not supply a request body for this method

## Response

* `200 OK` : request successful
* `400 Bad Request` : incorrect method, payload or URI
* `401 Unauthorized` : expired JWT or the user behind the JWT does not have permission to perform this request

## Example

**request**

The following is an example of the request

```
PUT /events/de343e38-d656-4928-96bc-55578e0d94ec/cardSystems/1 HTTP/1.1
Host: uitpas-test.uitdatabank.be
Authorization: Bearer {token}
x-api-key: {apikey}
Content-Type: text/plain
```

**Response**

The following are example responses.

```
200 OK
```

```
400 Bad Request

{
    "title": "No route found for \"PUT /events/de343e38-d656-4928-96bc-55578e0d94ec/cardsystems/1\"",
    "type": "about:blank",
    "status": 400
}
```

```
400 Bad Request

{
    "title": "event organiser 6dc8083b-4b6c-4cc3-ad11-963af41a99d2 is not part of cardsystem 3",
    "type": "about:blank",
    "status": 400
}
```

```
400 Bad Request

{
    "title": "cardsystem with id [123456] not found.",
    "type": "about:blank",
    "status": 400
}
```
```
400 Bad Request

{
    "title": "DistributionKey with id [4546] not found.",
    "type": "about:blank",
    "status": 400
}
```

```
401 Unauthorized

{
    "error": "Unauthorized",
    "details": "A Token was not found in the TokenStorage."
}
```
