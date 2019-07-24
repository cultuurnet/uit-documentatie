---
---

# Update mediaObject
Update or remove an image from an offer


## HTTP request

```
PUT /events/{eventId}/images/{mediaObjectId}
```

Add an image to an offer

```
DELETE /events/{eventId}/images/{mediaObjectId}
```

Delete an image from an offer

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
| mediaObjectId	| uuid | unique identifier of a mediaObject | d595414a-13e0-4dd2-b4bd-706599427351 |

## Request body

Update description and/or copyright information for a specific image linked to a specific offer

| Property	| Type | Description |
|--|--|--|
| description | string | The description for your image |
| copyrightholder | string | The copyrightholder for the used image |


## Response

* `204 No Content` : request successful
* `400 Bad Request` : incorrect method, payload or URI
* `401 Unauthorized` : expired JWT or the user behind the JWT does not have permission to perform this request

## Example

**request**

The following is an example of the request

```
PUT https://io-test.uitdatabank.be/events/03116768-1abc-405a-93d7-ba6ede52fe09/images/f6ccb2c1-9eb1-4281-a2e3-07c12c06109b
Content-Type: application/json
Authorization: Bearer {token}
X-Api-Key: {apiKey}

{
  "description": "string",
  "copyrightHolder": "Dirk Dirkington"
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
    "title": "No route found for \"POST /events/6e46cf33-dd9b-4bf9-9c32-259eab5b6cbd/images/f6ccb2c1-9eb1-4281-a2e3-07c12c06109b\": Method Not Allowed (Allow: DELETE, PUT, OPTIONS)",
    "type": "about:blank",
    "status": 400
}
```

```
400 Bad request

{
    "title": "Media object with id '406f5794-cebe-47a7-ac8a-0fa7c934c0ca' not found",
    "type": "about:blank",
    "status": 400
}
```

```
401 Unauthorized

Token claims validation failed. This most likely means the token is expired.
```

```
401 Unauthorized

{
    "title": "User with id: 12345678-abcd-1234-12ab-123abc123abc has no permission: \"Aanbod bewerken\" on item: 12345678-abcd-1234-12ab-123abc123abc when executing command: CultuurNet\\UDB3\\Event\\Commands\\UpdateImage",
    "type": "about:blank",
    "status": 401
}
```
