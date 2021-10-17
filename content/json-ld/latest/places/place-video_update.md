---
---

# Update video
Update or remove a video from a place


## HTTP request

```
PUT /places/{placeId}/videos/{videoId}
```

Update an existing video

```
DELETE /places/{placeId}/videos/{videoId}
```

Delete video from a place

## Request headers

| Header        | Value            | Required? |
| ------------- | ---------------- | --------- |
| Authorization | Bearer {token}   | true      |
| X-Api-Key     | {apiKey}         | true      |
| Content-Type  | application/json | false     |

## Resource properties

| Property	| Type | Description | Example |
|--|--|--|--|
| placeId	| uuid | unique identifier for a place | d595414a-13e0-4dd2-b4bd-706599427351 |
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

**request**

The following is an example of the request

```
DELETE https://io-test.uitdatabank.be/places/bc0256fc-dfce-41b0-9e49-58d4228086b0/videos/31416643-6c5d-4e08-a2a2-2b663bd2443c
Content-Type: application/json
Authorization: Bearer {token}
X-Api-Key: {apiKey}
```

**Response**

The following are example responses.

```
204 No Content
```



