---
---

# Set main image

The main image is the only image shown in search-result listviews and the image more prominently displayed on offer-details, when the offer has multiple mediaObjects

**Note**
 Requests to the JSON-LD api are handled asynchronously. Adding an image to an offer and immediately setting this image as main image, may result in a race condition. Check your event projection to verify the mediaObject is present before setting this mediaObjectId as main image.

## HTTP request

```
PUT /events/{eventId}/images/main
```

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


## Request body

Define the mediaObject you want to set as main image

| Property	| Type | Description |
|--|--|--|
| mediaObjectId | uuid | unique identifier for an image |

## Response

* `204 No Content` : request successful
* `400 Bad Request` : incorrect method, payload or URI
* `401 Unauthorized` : expired JWT or the user behind the JWT does not have permission to perform this request

## Example

**request**

The following is an example of the request

```
PUT https://io-test.uitdatabank.be/events/03116768-1abc-405a-93d7-ba6ede52fe09/images/main
Content-Type: application/json
Authorization: Bearer {token}
X-Api-Key: {apiKey}

{
  "mediaObjectId": "73695986-e4cf-4b29-8699-13d7cd77af8c"
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
    "title": "No route found for \"POST /events/6e46cf33-dd9b-4bf9-9c32-259eab5b6cbd/images/main\": Method Not Allowed (Allow: PUT, DELETE, OPTIONS)",
    "type": "about:blank",
    "status": 400
}
```

```
400 Bad request

{
    "error": "media object id required"
}
```

```
401 Unauthorized

Token claims validation failed. This most likely means the token is expired.
```

```
401 Unauthorized

{
    "title": "User with id: 12345678-abcd-1234-12ab-123abc123abc has no permission: \"Aanbod bewerken\" on item: 12345678-abcd-1234-12ab-123abc123abc when executing command: CultuurNet\\UDB3\\Event\\Commands\\SelectMainImage",
    "type": "about:blank",
    "status": 401
}
```
