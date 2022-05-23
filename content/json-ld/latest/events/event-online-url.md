---
---

# Online url

Updates the online url of an event. Only events with attendance mode `online` or `mixed` can have an online url.

## HTTP request

```
PUT /events/{eventId}/online-url
```
Updates the online url of an event

```
DELETE /events/{eventId}/online-url
```
Deletes the online url of an event

## Request headers

| Header        | Value            | Required? |
| ------------- | ---------------- | --------- |
| Authorization | Bearer {token}   | true      |
| X-Api-Key     | {apiKey}         | true      |
| Content-Type  | application/json | false     |

## Resource properties

| Property	| Type | Description | Example |
|--|--|--|--|
| eventId	| uuid | unique identifier for an event | 15277b21-f91d-42d3-8f14-a4ff66fe538a |

## Request body

| Property	| Type | Description |
|--|--|--|
| onlineUrl | url | url where the online event takes place (e.g. the link of the livestream) |

## Response

* `204 No Content` : request successful
* `400 Bad Request` : incorrect method, payload or URI
* `401 Unauthorized` : expired JWT or the user behind the JWT does not have permission to perform this request

## Example requests

**Update the online url**


```
PUT  https://io-test.uitdatabank.be/events/15277b21-f91d-42d3-8f14-a4ff66fe538a/online-url
Content-Type: application/json
Authorization: Bearer {token}
X-Api-Key: {apiKey}

{
  "onlineUrl": "https://www.publiq.be/livestream"
}
```

**Delete the online url**

```
DELETE  https://io-test.uitdatabank.be/events/15277b21-f91d-42d3-8f14-a4ff66fe538a/online-url
Content-Type: application/json
Authorization: Bearer {token}
X-Api-Key: {apiKey}
```
