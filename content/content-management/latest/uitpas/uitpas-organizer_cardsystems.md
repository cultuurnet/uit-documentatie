---
---

# Get organizer cardsystems

## Host

 For documentation on UiTPAS base url, go [here]({% link content/json-ld/latest/authentication/authentication-baseUrl.md %})

## HTTP request

```
GET /organizers/{organizerId}/cardSystems
```
View the card systems coupled to the organizer.

## Request headers

| Header        | Value            | Required? |
| ------------- | ---------------- | --------- |
| Authorization | Bearer {token}   | false     |
| X-Api-Key     | {apiKey}         | false     |
| Content-Type  | application/json | false     |

## Resource properties

| Property | Type | Description | Example |
|--|--|--|--|
| organizerId | uuid | unique identifier for an organizer | d595414a-13e0-4dd2-b4bd-706599427351 |

## Response

If succesful, this method returns a `200` response code and the JSON-LD document in the response body.

**Example response**

```
{"1":{"id":1,"name":"UiTPAS Dender","distributionKeys":{"22":{"id":22,"name":"25%
meerdaags"}}},"5":{"id":5,"name":"UiTPAS Regio Gent","distributionKeys":[]}}
```
