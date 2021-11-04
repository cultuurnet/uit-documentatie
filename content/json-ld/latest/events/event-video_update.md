---
---

# Update or remove video
Update or remove a video from an event


## HTTP request

```
PATCH /events/{eventId}/videos/{videoId}
```

Update an existing video

```
DELETE /events/{eventId}/videos/{videoId}
```

Delete video from an event

## Request headers

| Header        | Value            | Required? |
| ------------- | ---------------- | --------- |
| Authorization | Bearer {token}   | true      |
| X-Api-Key     | {apiKey}         | true      |
| Content-Type  | application/json | false     |

## Resource properties

| Property	| Type | Description | Example |
|--|--|--|--|
| eventId	| uuid | unique identifier for an event | d595414a-13e0-4dd2-b4bd-706599427351 |
| videoId	| uuid | unique identifier of a video | 31416643-6c5d-4e08-a2a2-2b663bd2443c |

## Request body

| Property	| Type | Description | Example |
|--|--|--|--|
| url	| url | url of the video | `https://www.youtube.com/watch?v=Xw5AiRVqfqk` |
| language	| string | 2-character language reference | nl |
| copyrightHolder	| string | copyrightHolder for the video | BMI - Broadcast Music Inc |


## Response

* `204 No Content` : request successful
* `400 Bad Request` : incorrect method, payload or URI
* `401 Unauthorized` : expired JWT or the user behind the JWT does not have permission to perform this request

## Example
### Update video
```
PATCH https://io-test.uitdatabank.be/events/bc0256fc-dfce-41b0-9e49-58d4228086b0/videos
Content-Type: application/json
Authorization: Bearer {token}
X-Api-Key: {apiKey}

{
  "id": "2859b9ee-dac0-4b10-aa51-c76e544a3edd",
  "url": "https://www.youtube.com/watch?v=III-4241",
  "language": "nl"
}
```

**response**
```
204 No Content
```

### Delete video
**request**
```
DELETE https://io-test.uitdatabank.be/events/bc0256fc-dfce-41b0-9e49-58d4228086b0/videos/31416643-6c5d-4e08-a2a2-2b663bd2443c
Content-Type: application/json
Authorization: Bearer {token}
X-Api-Key: {apiKey}
```

**Response**
```
204 No Content
```



