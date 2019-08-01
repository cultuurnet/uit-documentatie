---
---

# Create Event

## HTTP request

```
DELETE /events/{eventId}
```

## Request headers

| Header        | Value            | Required? |
| ------------- | ---------------- | --------- |
| Authorization | Bearer {token}   | true      |
| X-Api-Key     | {apiKey}         | true      |
| Content-Type  | application/json | false     |


## Request body

Do not supply a request body for this method

## Response

* `204 No Content` : request successful
* `400 Bad Request` : incorrect method, payload or URI
* `401 Unauthorized` : expired JWT or the user behind the JWT does not have permission to perform this request

## Example

**request**

The following is an example of the request

```
DELETE https://io-test.uitdatabank.be/events/4738950a-9234-4ed9-8e35-607a0af02668
Content-Type: application/json
Authorization: Bearer {token}
X-Api-Key: {apiKey}
```

**Response**

The following are example responses.

```
204 No Content
```

```
401 Unauthorized

Token claims validation failed. This most likely means the token is expired.
```

```
401 Unauthorized

{
    "title": "User with id: 12345678-abcd-1234-12ab-123abc123abc has no permission: \"Aanbod bewerken\" on item: 12345678-abcd-1234-12ab-123abc123abc when executing command: CultuurNet\\UDB3\\Event\\Commands\\DeleteEvent",
    "type": "about:blank",
    "status": 401
}
```
