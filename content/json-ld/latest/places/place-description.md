---
---

# Update description

Add a description in the given language for an offer.
Description is not limited in size, but it is recommended to use the first 200 characters of the description for promotional copy as these characters are visible in list-view of results.

Keep in mind:

-  Description should be UTF-8 encoded
-  Linebreaks are encoded as `\n`

## HTTP request

```
PUT /places/{placeId}/description/{lang}
```

**HTTP DELETE**

Not supported: to remove description, perform PUT request with blank description.

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
| lang	| string | 2-character language reference | nl |

## Request body

| Property	| Type | Description |
|--|--|--|
| description | string | The description for your place |

## Response

* `204 No Content` : request successful
* `400 Bad Request` : incorrect method, payload or URI
* `401 Unauthorized` : expired JWT or the user behind the JWT does not have permission to perform this request

## Example

**request**

The following is an example of the request

```
PUT https://io-test.uitdatabank.be/places/18717eeb-4ff0-4de5-afa8-5170b58e335d/description/nl
Content-Type: application/json
Authorization: Bearer {token}
X-Api-Key: {apiKey}

{
  "description": "This is a description.\n This is a new line."
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
    "title": "No route found for \"POST /places/6e46cf33-dd9b-4bf9-9c32-259eab5b6cbd/description/nl\": Method Not Allowed (Allow: PUT, OPTIONS)",
    "type": "about:blank",
    "status": 400
}
```

```
400 Bad request

{
    "title": "Missing value for \"description\".",
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
    "title": "User with id: 12345678-abcd-1234-12ab-123abc123abc has no permission: \"Aanbod bewerken\" on item: 12345678-abcd-1234-12ab-123abc123abc when executing command: CultuurNet\\UDB3\\Place\\Commands\\UpdateDescription",
    "type": "about:blank",
    "status": 401
}
```
