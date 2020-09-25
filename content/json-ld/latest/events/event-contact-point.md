---
---

# Update Contact point
Contact point must contain the following properties, each property can contain zero or multiple entries:
- url
- email
- phone

## HTTP request

```
PUT /events/{eventId}/contactPoint
```

Update specific contact info from an offer

**HTTP DELETE**

Not supported: to remove specific contact-info, perform PUT request with empty contactPoint-property

## Request headers

| Header        | Value            | Required? |
| ------------- | ---------------- | --------- |
| Authorization | Bearer {token}   | true      |
| X-Api-Key     | {apiKey}         | true      |
| Content-Type  | application/json | false     |

## Resource properties

| Property	| Type | Description | Example |
|--|--|--|--|
| eventId	| uuid | unique identifier for an event | d595414a-13e0-4dd2-b4bd-706598427351 |

## Request body

| Property	| Type | Description | Example |
|--|--|--|--|
| contactPoint | object | object containing one or more properties | |
| url | array | contactlink | https://www.domain.be/contact |
| email | array | emailaddress | user@example.com |
| phone | array | phonenumber | 0123456789 |

At the moment, there is no check to validate the request body when updating a contact point. `url`, `email` and `phone` can contain any string.

## Response

* `204 No Content` : request successful
* `400 Bad Request` : incorrect method, payload or URI
* `401 Unauthorized` : expired JWT or the user behind the JWT does not have permission to perform this request


## Example

**request**

The following is an example of the request

```
PUT https://io-test.uitdatabank.be/events/03116768-1abc-405a-93d7-ba6ede52fe09/contactPoint
Content-Type: application/json
Authorization: Bearer {token}
X-Api-Key: {apiKey}

{
  "contactPoint": {
    "url": [
      "http://google.be"
    ],
    "email": [
      "user@example.com"
    ],
    "phone": [
      "0123456789"
    ]
  }
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
    "title": "No route found for \"POST /events/6e46cf33-dd9b-4bf9-9c32-259eab5b6cbd/contactPoint\": Method Not Allowed (Allow: PUT, OPTIONS)",
    "type": "about:blank",
    "status": 400
}
```

```
400 Bad request

{
    "error": "contactPoint and his properties required"
}
```

```
401 Unauthorized

Token claims validation failed. This most likely means the token is expired.
```

```
401 Unauthorized

{
    "title": "User with id: 12345678-abcd-1234-12ab-123abc123abc has no permission: \"Aanbod bewerken\" on item: 12345678-abcd-1234-12ab-123abc123abc when executing command: CultuurNet\\UDB3\\Event\\Commands\\UpdateContactPoint",
    "type": "about:blank",
    "status": 401
}
```
