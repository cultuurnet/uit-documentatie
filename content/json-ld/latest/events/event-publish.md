---
---

# Publish an event

By default every offer is created with `"workflowstatus":"DRAFT"`

Offers with workflowstatus "DRAFT" are by default excluded from search results

A Publish command is an authenticated request that requires specific permission: it can only be executed by the creator of the offer!

## HTTP request

**!notice the deprecated endpoint `event` instead of `events`!**

```
PATCH /event/{eventId}
```

## Request headers

| Header        | Value            | Required? |
| ------------- | ---------------- | --------- |
| Authorization | Bearer {token}   | true      |
| X-Api-Key     | {apiKey}         | true      |
| Content-Type  | application/ld+json;domain-model=Publish | true |

The supplied token must be from the creator of the offer!

## Resource properties

| Property	| Type | Description | Example |
|--|--|--|--|
| eventId	| uuid | unique identifier for an event | d595414a-13e0-4dd2-b4bd-706599427351 |

## Request body

| Property	| Type | Description | Example |
|--|--|--|--|
| publicationDate | date-time | Specify the date and time when the offer can be published and served in search results | 2017-02-01T12:00:00+00:00 |

## Response

* `204 No Content` : request successful
* `400 Bad Request` : incorrect method, payload or URI
* `401 Unauthorized` : expired JWT or the user behind the JWT does not have permission to perform this request

## Example

**request**

The following is an example of the request

```
PATCH https://io-test.uitdatabank.be/event/03116768-1abc-405a-93d7-ba6ede52fe09
Content-Type: application/ld+json;domain-model=Publish
Authorization: Bearer {token}
X-Api-Key: {apiKey}

{
  "publicationDate": "2017-02-01T12:00:00+00:00"
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
    "title": "No route found for \"PUT /events/6e46cf33-dd9b-4bf9-9c32-259eab5b6cbd\": Method Not Allowed (Allow: GET, DELETE, PATCH, OPTIONS)",
    "type": "about:blank",
    "status": 400
}
```

```
400 Bad request

{
    "title": "Unable to determine domain-model",
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
    "title": "User with id: 12345678-abcd-1234-12ab-123abc123abc has no permission: \"Aanbod bewerken\" on item: 12345678-abcd-1234-12ab-123abc123abc when executing command: CultuurNet\\UDB3\\Event\\Commands\\Publish",
    "type": "about:blank",
    "status": 401
}
```
