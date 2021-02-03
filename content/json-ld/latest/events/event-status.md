---
---

# Event - status


---
---

The status indicates wether an event takes place as planned, has been postponed or cancelled. The status can contain one or more of the following properties:
- type: 
- reason


It is possible to set the status on _top event_ level or on _subEvent_ level:
* top event: for the whole event and all its subEvents (occurences). All subEvents will inherit the status from the top event level
* subEvent level: for a single or multiple subEvent(s). The status on top event level will automtically be derived from the (different) statusses on subEvent level.

## HTTP request

```
PATCH /events/{eventId}/status
```

Update the status and optionally also the reason for the new status.

**HTTP DELETE**

Not supported: to remove a (specific) status on an event or subEvent perform a PATCH request with empty properties

## Request headers

| Header        | Value            | Required? |
| ------------- | ---------------- | --------- |
| Authorization | Bearer {token}   | true      |
| X-Api-Key     | {apiKey}         | true      |
| Content-Type  | application/json | false     |

## Resource properties

| Property	| Type | Description | Example |
|--|--|--|--|
| eventId	| uuid | unique identifier for an event | d595414a-13e0-4dd2-b4bd-706598427351 |

## Request body




## Response

* `204 No Content` : request successful
* `400 Bad Request` : incorrect method, payload or URI
* `401 Unauthorized` : expired JWT or the user behind the JWT does not have permission to perform this request

## Example

**request**



**Response**


