---
---

# Get Event details

## HTTP request

```
GET /events/{eventId}
```

## Request headers

| Header        | Value            | Required? |
| ------------- | ---------------- | --------- |
| Authorization | Bearer {token}   | false     |
| X-Api-Key     | {apiKey}         | false     |
| Content-Type  | application/json | false     |

## Response

If successful, this method returns a `200` response code and the JSON-LD document in the response body.
