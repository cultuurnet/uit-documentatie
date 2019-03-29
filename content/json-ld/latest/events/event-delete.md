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

If successful, this method returns a `200` response code and a commandId in the response body.

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

The following is an example of the response.

```
200 OK

{
  "commandId":"ed70494c2d4973d74b0e441a5ce0bfd8"
}
```
