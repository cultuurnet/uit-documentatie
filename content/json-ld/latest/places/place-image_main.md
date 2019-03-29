---
---

# Set main image

The main image is the only image shown in search-result listviews and the image more prominently displayed on offer-details, when the offer has multiple mediaObjects

**Note**
 Requests to the JSON-LD api are handled asynchronously. Adding an image to an offer and immediately setting this image as main image, may result in a race condition. Check your event projection to verify the mediaObject is present before setting this mediaObjectId as main image.

## HTTP request

```
PUT /places/{placeId}/images/main
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
| placeId	| uuid | unique identifier for a place | d595414a-13e0-4dd2-b4bd-706599427351 |


## Request body

Define the mediaObject you want to set as main image

| Property	| Type | Description |
|--|--|--|
| mediaObjectId | uuid | unique identifier for an image |

## Response

If successful, this method returns a `200` response code and a commandId in the response body.

## Example

**request**

The following is an example of the request

```
PUT https://io-test.uitdatabank.be/places/03116768-1abc-405a-93d7-ba6ede52fe09/images/main
Content-Type: application/json
Authorization: Bearer {token}
X-Api-Key: {apiKey}

{
  "mediaObjectId": "73695986-e4cf-4b29-8699-13d7cd77af8c"
}
```

**Response**

The following is an example of the response.

```
200 OK

{
  "commandId": "a55486283a53a1e45041002c4887580f"
}
```
