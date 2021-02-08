---
---

# Event - status


---
---

The status indicates whether an event takes place as planned, has been postponed or cancelled. The following values for 'status' are applicable:
* `available`: the event takes place as planned. This is the default value when no status for the event or subEvent is included.
* `temporarilyUnavailable`: the event has been postponed to a later date yet to be determined.
* `unavailable`: the event has been cancelled.

Optionally, a reason for the new status can be added. 

It is possible to set the status on top event level or on subEvent level:
* **top event level**: for the whole event and all its subEvents (occurences). All subEvents will inherit the status from the top event level
* **subEvent level**: for a one or multiple subEvent(s). The status on top event level will automtically be derived from the (different) statusses on subEvent level.

## Set status on top event level

It is possible to set the status on top event level for all calendarTypes: `single`, `multiple`, `permanent`, `periodic`. If the event has subEvents, all subEvents of the event will inherit the status (and reason) from the top event level.

## HTTP request

```
PUT /events/{eventId}/status
```

Update the status and optionally also the reason for the new status.


### Request headers

| Header        | Value            | Required? |
| ------------- | ---------------- | --------- |
| Authorization | Bearer {token}   | true      |
| X-Api-Key     | {apiKey}         | true      |
| Content-Type  | application/json | false     |

### Resource properties

| Property	| Type | Description | Example |
|--|--|--|--|
| eventId	| uuid | unique identifier for an event | d595414a-13e0-4dd2-b4bd-706598427351 |

## Request body

| Property	| Type | Description | Example |
|--|--|--|--|
| status	| object | object containing one or more properties |  |
| type	| string | status of the event. possible vallues: `Available`, `TemporarilyUnavailable`, `Unavailable` | Unavailable |
| reason	| object with language properties | only to be used in combination with type, must contain at least one language. | Omwille van preventieve coronamaatregelen is het concert geannuleerd |

### Response

* `204 No Content` : request successful
* `400 Bad Request` : incorrect method, payload or URI
* `401 Unauthorized` : expired JWT or the user behind the JWT does not have permission to perform this request

### Example

**request**

```
PUT https://io-test.uitdatabank.be/events/03116768-1abc-405a-93d7-ba6ede52fe09/status
Content-Type: application/json
Authorization: Bearer {token}
X-Api-Key: {apiKey}

"status": {
    "type": "TemporarilyUnavailable",
    "reason": {
        "nl": "Het concert is tijdelijk uitgesteld"
    }
}
```

**Response**

The following are example responses.

```
204 No Content
```

## Set status on subEvent level

For calendarTypes `single` and `multiple` it is also possible to set the status on subEvent level.
The status on top event level will be derived from the statusses on the subEvent level.

When UiTdatabank calculates the status for the top event level, the following logic is being applied:

| status subEvents | Derived status on top event level |
| ------------- | ---------------- | 
| All available | available | 
| All unavailable | unavailable | 
| All temporarilyUnavailable | temporarilyUnavailable | 
| Mixed, but one or more available | available | 
| Mixed, but one or more temporarilyUnavailable | temporarilyUnavailable | 

## HTTP request

```
PATCH /events/{eventId}/status
```

Update the status and optionally also the reason for the new status.

**HTTP DELETE**

Not supported: to remove a (specific) status on an event or subEvent perform a PATCH request with empty properties

### Request headers

| Header        | Value            | Required? |
| ------------- | ---------------- | --------- |
| Authorization | Bearer {token}   | true      |
| X-Api-Key     | {apiKey}         | true      |
| Content-Type  | application/json | false     |

### Resource properties

| Property	| Type | Description | Example |
|--|--|--|--|
| eventId	| uuid | unique identifier for an event | d595414a-13e0-4dd2-b4bd-706598427351 |

## Request body




### Response

* `204 No Content` : request successful
* `400 Bad Request` : incorrect method, payload or URI
* `401 Unauthorized` : expired JWT or the user behind the JWT does not have permission to perform this request

### Example

**request**



**Response**


