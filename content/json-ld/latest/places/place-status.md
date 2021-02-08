---
---

# Place - status

The status indicates whether an place is open (for visits for example), temporarily closed or permanently closed. The following values for 'status' are applicable:
* `available`: the place is 'open' and can be visited during opening hours. This is the default value when no status for the place is included.
* `temporarilyUnavailable`: the place is temporarily closed (due to renovations for example).
* `unavailable`: the place still exists (physically), but is permanently closed.

Optionally, a reason for the new status can be added. 

When the status is set back to `available`, the reasons (if present) will be automatically removed.

## HTTP request

```
PUT /places/{eventId}/status
```

Update the status of the place and optionally also the reason for the new status.

### Request headers

| Header        | Value            | Required? |
| ------------- | ---------------- | --------- |
| Authorization | Bearer {token}   | true      |
| X-Api-Key     | {apiKey}         | true      |
| Content-Type  | application/json | false     |

### Resource properties

| Property	| Type | Description | Example |
|--|--|--|--|
| placeId	| uuid | unique identifier for a place | 57f6ba66-d67d-488a-bae7-8a89f112d21c |

## Request body

| Property	| Type | Description | Example |
|--|--|--|--|
| status	| object | object containing one or more properties |  |
| type	| string | status of the place. possible vallues: `Available`, `TemporarilyUnavailable`, `Unavailable` | Unavailable |
| reason	| object with language properties | only to be used in combination with type, must contain at least one language. | Omwille van verbouwingen aan de voorgevel is de concertaal tijdelijk gesloten |

### Response

* `204 No Content` : request successful
* `400 Bad Request` : incorrect method, payload or URI
* `401 Unauthorized` : expired JWT or the user behind the JWT does not have permission to perform this request

### Example

**request**

```
PUT https://io-test.uitdatabank.be/places/57f6ba66-d67d-488a-bae7-8a89f112d21c/status
Content-Type: application/json
Authorization: Bearer {token}
X-Api-Key: {apiKey}

{
    "type": "TemporarilyUnavailable",
    "reason": {
        "nl": "Omwille van verbouwingen aan de voorgevel is de concertaal tijdelijk gesloten"
    }
}
```

```
PUT https://io-test.uitdatabank.be/places/57f6ba66-d67d-488a-bae7-8a89f112d21c/status
Content-Type: application/json
Authorization: Bearer {token}
X-Api-Key: {apiKey}

{
    "type": "Available"
}
```

**Response**

The following are example responses.

```
204 No Content
```

```
400 Bad Request

{
    "validation_messages": {
        "type": "Invalid type provided"
    },
    "title": "Invalid payload.",
    "type": "about:blank"
}
```

```
401 Unauthorized

Token claims validation failed. This most likely means the token is expired.
```
