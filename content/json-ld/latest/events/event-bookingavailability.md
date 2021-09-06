---
---

# Event - bookingAvailability

The bookingAvailability indicates whether there are still tickets or seats available for an event. The following values for 'bookingAvailability' are applicable:
* `Available`: there are still tickets or seats left for the event, or the capacity for the event is unlimited.
* `Unavailable`: the event is sold out or fully booked.

It is possible to set the bookingAvailability on top event level or on subEvent level:
* **top event level**: for the whole event and all its subEvents (occurences). All subEvents will inherit the bookingAvailability from the top event level
* **subEvent level**: for a one or multiple subEvent(s). The bookingAvailability on top event level will automtically be derived from the (different) bookingAvailability values on subEvent level.

## Scope

It is possible to set a bookingAvailability for the calendarTypes `single`or `multiple`. 
It is **not** possible to set a bookingAvailability for events with calendarType `permanent` or `periodic`. 

## Authorization - request headers

| Header        | Value            | Required? |
| ------------- | ---------------- | --------- |
| Authorization | Bearer {token}   | true      |
| X-Api-Key     | {apiKey}         | true      |
| Content-Type  | application/json | false     |

## Set status on top event level

When set on top level, all subEvents of the event will inherit the bookingAvailability from the top event level.

### HTTP request

```
PUT /events/{eventId}/bookingAvailability
```

Update the bookingAvailability of the top event.

### Resource properties

| Property	| Type | Description | Example |
|--|--|--|--|
| eventId	| uuid | unique identifier for an event | d595414a-13e0-4dd2-b4bd-706598427351 |

### Request body

| Property	| Type | Description | Example |
|--|--|--|--|
| bookingAvailability	| object |  |  |
| type	| string | bookingAvailability of the event. possible vallues: `Available`, `Unavailable` | Unavailable |

### Response

* `204 No Content` : request successful
* `400 Bad Request` : incorrect method, payload or URI
* `401 Unauthorized` : expired JWT 
* `403 Forbidden`: the user behind the JWT does not have permission to perform this request

### Example

**Request**

```
PUT https://io-test.uitdatabank.be/events/03116768-1abc-405a-93d7-ba6ede52fe09/bookingAvailability
Content-Type: application/json
Authorization: Bearer {token}
X-Api-Key: {apiKey}

{
   "type":"Unavailable",
}
```

**Response**

The following are example responses.

```
204 No Content
```

```
{
    "type": "https://api.publiq.be/probs/body/invalid-data",
    "title": "Invalid body data",
    "status": 400,
    "schemaErrors": [
        {
            "jsonPointer": "/type",
            "error": "The data should match one item from enum"
        }
    ]
}
```

```
{
    "type": "https://api.publiq.be/probs/auth/unauthorized",
    "title": "Unauthorized",
    "status": 401,
    "detail": "Token expired (or not yet usable)."
}
```


## Set bookingAvailability on subEvent level

When set on subEvent level, the bookingAvailability on top event level will be derived from the bookingAvailability values on the subEvent level.

When UiTdatabank calculates the bookingAvailability for the top event level, the following logic is being applied:

| bookingAvailability subEvents | Derived bookingAvailability on top event level |
| ------------- | ---------------- | 
| All available | Available | 
| All unavailable | Unavailable | 
| Mixed | Available | 


### HTTP request

```
PATCH /events/{eventId}/subEvents
```

Update the bookingAvailability of one or more subEvents.

### Resource properties

| Property	| Type | Description | Example |
|--|--|--|--|
| eventId	| uuid | unique identifier for an event | d595414a-13e0-4dd2-b4bd-706598427351 |

### Request body

| Property	| Type | Description | Example |
|--|--|--|--|
| id	| integer | a zero-based number of the subEvent you want to set the status for | 2 (this corresponds with the 3th subEvent of your event) |
| bookingAvailability	| object |  |  |
| type	| string | bookingAvailability of the event. possible vallues: `Available`, `Unavailable` | Unavailable |


### Response

* `204 No Content` : request successful
* `400 Bad Request` : incorrect method, payload or URI
* `401 Unauthorized` : expired JWT 
* `403 Forbidden`: the user behind the JWT does not have permission to perform this request

### Example

**request**

Event with calendarType `single` (containing one subEvent)

```
PATCH https://io-test.uitdatabank.be/events/6ecadd49-ca7b-4204-a8a6-46f786cd3c1e/subEvents
Content-Type: application/json
Authorization: Bearer {token}
X-Api-Key: {apiKey}

[
   {
      "id":0,
      "bookingAvailability":{
         "type":"Unavailable",
      }
   }
]
```

For events with calendarType `single`, the derived bookingAvailability for the top event will always be equal to the bookingAvailability of the subEvent. Thus, in the example above the derived bookingAvailability for the top event will become `Unavailable`

Event with calendarType `multiple` (containing 3 subEvents)
```
PATCH https://io-test.uitdatabank.be/events/03116768-1abc-405a-93d7-ba6ede52fe09/subEvents
Content-Type: application/json
Authorization: Bearer {token}
X-Api-Key: {apiKey}

[
  {
    "id": 0,
	"bookingAvailability": {
	  "type": "Unavailable",
	}
  },
  {
    "id": 1,
	"bookingAvailability": {
	  "type": "Unavailable",
	}
  },
    {
    "id": 2,
	"bookingAvailability": {
	  "type": "Available",
	}
  }
]
```
Since 2 subEvents have the status `Unavailable` and one subEvent `Available`, the derived status for the top event will become `Available`

**Response**

The following are example responses.

```
204 No Content
```

```
{
    "type": "https://api.publiq.be/probs/body/invalid-data",
    "title": "Invalid body data",
    "status": 400,
    "schemaErrors": [
        {
            "jsonPointer": "/0/bookingAvailability",
            "error": "The required properties (type) are missing"
        }
    ]
}
```

```
{
    "type": "https://api.publiq.be/probs/body/invalid-data",
    "title": "Invalid body data",
    "status": 400,
    "schemaErrors": [
        {
            "jsonPointer": "/0/bookingAvailability/type",
            "error": "The data should match one item from enum"
        }
    ]
}
```

```
{
    "type": "https://api.publiq.be/probs/auth/unauthorized",
    "title": "Unauthorized",
    "status": 401,
    "detail": "Token expired (or not yet usable)."
}
```

