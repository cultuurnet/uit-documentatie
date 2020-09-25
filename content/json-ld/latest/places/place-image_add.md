---
---

# Add mediaObject to an offer
Add an existing image to an existing offer. To create a new mediaObject, see [add mediaObject]({% link content/json-ld/latest/images/image-post.md %}).

## HTTP request

```
POST /places/{placeId}/images/
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
| placeId	| uuid | unique identifier for aa place | d595414a-13e0-4dd2-b4bd-706599427351 |

## Request body

Add an image to an offer

| Property	| Type | Description | Example |
|--|--|--|--|
| mediaObjectId	| uuid | unique identifier of a mediaObject | d595414a-13e0-4dd2-b4bd-706599427351 |

## Response

* `204 No Content` : request successful
* `400 Bad Request` : incorrect method, payload or URI
* `401 Unauthorized` : expired JWT or the user behind the JWT does not have permission to perform this request

## Example

**request**

The following is an example of the request

```
POST https://io-test.uitdatabank.be/places/03116768-1abc-405a-93d7-ba6ede52fe09/images/
Content-Type: application/json
Authorization: Bearer {token}
X-Api-Key: {apiKey}

{
  "mediaObjectId": "f6ccb2c1-9eb1-4281-a2e3-07c12c06109b"
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
    "title": "No route found for \"PUT /places/6e46cf33-dd9b-4bf9-9c32-259eab5b6cbd/images/\": Method Not Allowed (Allow: POST, OPTIONS)",
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
    "title": "User with id: 12345678-abcd-1234-12ab-123abc123abc has no permission: \"Aanbod bewerken\" on item: 12345678-abcd-1234-12ab-123abc123abc when executing command: CultuurNet\\UDB3\\Place\\Commands\\AddImage",
    "type": "about:blank",
    "status": 401
}
```
