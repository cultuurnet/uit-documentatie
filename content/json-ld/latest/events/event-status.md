---
---

# Event - status


---
---

The status indicates whether an event takes place as planned, has been postponed or cancelled. The following values for 'status' are applicable:
* `available`: the event takes place as planned. This is the default value when no status for the (sub)Event is included.
* `temporarilyUnavailable`: the event has been postponed to a later date yet to be determined.
* `unavailable`: the event has been cancelled.

Optionally, a reason for the new status can be added. 

It is possible to set the status on top event level or on subEvent level:
* **top event level**: for the whole event and all its subEvents (occurences). All subEvents will inherit the status from the top event level
* **subEvent level**: for a single or multiple subEvent(s). The status on top event level will automtically be derived from the (different) statusses on subEvent level.

## Set status on top event level

It is possible to set the status on top event level for all calendarTypes: `single`, `multiple`, `permanent`, `periodic`. If the event has subEvents, all subEvents of the event will inherit the status (and reason) from the top event level.

## Set status on subEvent level

Since only events with calendarType `single` and `multiple` have subEvents, it is only possible to set the status on subEvent level for these calendarTypes. 
The status on top event level will be derived from the statusses on the subEvent level:

| status subEvents | Derived status on top event level |
| ------------- | ---------------- | 
| All available | available | 
| All unavailable | unavailable | 
| All temporarilyUnavailable | temporarilyUnavailable | 
| Mixed, but one or more available | available | 
| Mixed, but one or more temporarilyUnavailable | temporarilyUnavailable | 

### HTTP request

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


