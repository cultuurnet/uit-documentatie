---
---

# Attendance mode

Indicates if an event is happening online, offline, or both (mixed):

* `offline`: the event takes places on a real location
* `online`: the events takes places on a virtual location
* `mixed`: the event takes places both on a real location and a virtual location

When the attendance mode is not set, UiTdatabank will assume the event has the attendance mode `offline`.

Also note that when changing from attendance mode `online` to either `offline` or `mixed` it is required to include the location property with the URI of the (physical) location that the event is taking place at.

For events with attendance mode `mixed` or `online` it can be useful to add an [online url]({% link content/json-ld/latest/events/event-online-url.md %})

## HTTP request

```
PUT /events/{eventId}/attendance-mode
```

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

| Property	| Required? |  Type | Description |
|--|--|--|--|
| attandanceMode | true | string | attendance mode of the event (online, offline or mixed) |
| location | false | URI | URI of the (real) location |

## Response

* `204 No Content` : request successful
* `400 Bad Request` : incorrect method, payload or URI
* `401 Unauthorized` : expired JWT or the user behind the JWT does not have permission to perform this request

## Example requests

**Update the attendancemode to "online"**


```
PUT  https://io-test.uitdatabank.be/events/15277b21-f91d-42d3-8f14-a4ff66fe538a/attendance-mode
Content-Type: application/json
Authorization: Bearer {token}
X-Api-Key: {apiKey}

{
  "attendanceMode": "online"
}
```

**Update the attendancemode to "mixed"**

```
PUT  https://io-test.uitdatabank.be/events/15277b21-f91d-42d3-8f14-a4ff66fe538a/attendance-mode
Content-Type: application/json
Authorization: Bearer {token}
X-Api-Key: {apiKey}

{
  "attendanceMode": "mixed",
  "location": "https://io-test.uitdatabank.be/place/418ac37d-5731-4021-a422-e0013bd65fa9"
}
```
