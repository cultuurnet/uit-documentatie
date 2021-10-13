---
---

# Add video

Video must contain the following properties:
* url
* language

Not that currently only urls from YouTube or Vimeo are allowed.
Optionally, a copyrightHolder can be added. If no copyrightHolder is added to the video, UiTdatabank will add a default copyrightHolder, depending on the value of the language property.

| NL            | FR               | EN        | DE |
| ------------- | ---------------- | --------- | --- |
| Copyright afgehandeld door {name video platform} | Droits d'auteur gérés par {name video platform} | Copyright handled by {name video platform} | Urheberrecht gehandhabt von {name video platform} |



## HTTP request

```
POST /places/{placeId}/videos
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
| placeId	| uuid | unique identifier for a place | a848fe38-1008-404f-bade-e0e84e5f23ec |

## Request body

Add an image to a place

| Property	| Type | Description | Example |
|--|--|--|--|
| url	| url | url of the video | `https://www.youtube.com/watch?v=Xw5AiRVqfqk` |
| language	| string | 2-character language reference | nl |
| copyrightHolder	| string | copyrightHolder for the video | BMI - Broadcast Music Inc |

## Response

* `200 OK` : request successful
* `400 Bad Request` : incorrect method, payload or URI
* `401 Unauthorized` : expired JWT or the user behind the JWT does not have permission to perform this request

## Example

**request**

The following is an example of the request

```
POST 'https://io-test.uitdatabank.be/places/a848fe38-1008-404f-bade-e0e84e5f23ec/videos

{
  "url": "https://www.youtube.com/watch?v=Xw5AiRVqfqk",
  "copyrightHolder": "BMI - Broadcast Music Inc",
  "language": "nl"
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
    "type": "https://api.publiq.be/probs/body/invalid-data",
    "title": "Invalid body data",
    "status": 400,
    "schemaErrors": [
        {
            "jsonPointer": "/url",
            "error": "The string should match pattern: ^http(s?):\\/\\/(www\\.)?((youtube\\.com\\/watch\\?v=([^\\/#&?]*))|(vimeo\\.com\\/([^\\/#&?]*)))"
        }
    ]
}

```

```
400 Bad request

{
    "type": "https://api.publiq.be/probs/body/invalid-data",
    "title": "Invalid body data",
    "status": 400,
    "schemaErrors": [
        {
            "jsonPointer": "/",
            "error": "The required properties (language) are missing"
        }
    ]

```

```
401 Unauthorized

Token claims validation failed. This most likely means the token is expired.
```

```
401 Unauthorized

{
    "title": "User with id: 12345678-abcd-1234-12ab-123abc123abc has no permission: \"Aanbod bewerken\" on item: 12345678-abcd-1234-12ab-123abc123abc when executing command: CultuurNet\\UDB3\\Event\\Commands\\AddImage",
    "type": "about:blank",
    "status": 401
}
```
