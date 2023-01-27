---
---

# Add video
Video must contain the following properties:
* url
* language

Note that currently only urls from YouTube or Vimeo are allowed.
Optionally, a copyrightHolder can be added. If no copyrightHolder is added to the video, UiTdatabank will add a default copyrightHolder, depending on the value of the language property.

| NL            | FR               | EN        | DE |
| ------------- | ---------------- | --------- | --- |
| Copyright afgehandeld door {name video platform} | Droits d'auteur gérés par {name video platform} | Copyright handled by {name video platform} | Urheberrecht gehandhabt von {name video platform} |

## HTTP request

```
POST /events/{eventId}/videos
```

## Request headers

| Header        | Value            | Required? |
| ------------- | ---------------- | --------- |
| Authorization | Bearer {token}   | true      |
| X-Api-Key     | {apiKey}         | true      |
| Content-Type  | application/json | false     |

## Resource properties

| Property	| Type | Description | Example |
| -- | -- | -- | -- |
| eventId	| uuid | unique identifier for an event | d595414a-13e0-4dd2-b4bd-706599427351 |

## Request body

Add a video to an offer

| Property	| Type | Description | Example |
| -- | -- | -- | -- |
| url	| url | url of the video | `https://www.youtube.com/watch?v=Xw5AiRVqfqk` |
| language	| string | 2-character language reference | nl |
| copyrightHolder	| string | copyrightHolder for the video | BMI - Broadcast Music Inc |

## Response

* `200 OK` : request successful
* `400 Bad Request` : incorrect method, payload or URI
* `401 Unauthorized` : expired JWT or the user behind the JWT does not have permission to perform this request

## Example

**request**

```
POST 'https://io-test.uitdatabank.be/events/78c80acf-f1ff-4015-a578-25e395b4fc5b/videos
{
  "url": "https://www.youtube.com/watch?v=Xw5AiRVqfqk",
  "copyrightHolder": "BMI - Broadcast Music Inc",
  "language": "nl"
}
```

**Response**


```
204 No Content

{
    "videoId": "10993011-4df3-4111-bc9a-44097799bedf"
}
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


