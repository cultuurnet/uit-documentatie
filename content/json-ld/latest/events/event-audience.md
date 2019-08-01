---
---

# Update Target audience

An object containing the audience information to set for the event. By default every event has audienceType 'everyone'.

Events with audienceType 'members' and 'education' are excluded from search results by default filters.

## HTTP request

```
PUT /events/{eventId}/audience
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
| eventId	| uuid | unique identifier for an event | d595414a-13e0-4dd2-b4bd-706598427351 |

## Request body

| Property	| Type | Description | Example |
|--|--|--|--|
| audienceType | string | Possible values: `everyone`, `members`, `education` | everyone |

## Response

* `204 No Content` : request successful
* `400 Bad Request` : incorrect method, payload or URI
* `401 Unauthorized` : expired JWT or the user behind the JWT does not have permission to perform this request

## Example

**request**

The following is an example of the request

```
PUT https://io-test.uitdatabank.be/events/03116768-1abc-405a-93d7-ba6ede52fe09/audience
Content-Type: application/json
Authorization: Bearer {token}
X-Api-Key: {apiKey}

{
  "audienceType": "everyone"
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
    "title": "No route found for \"POST /events/12345678-abcd-1234-12ab-123abc123abc/audience\": Method Not Allowed (Allow: PUT, OPTIONS)",
    "type": "about:blank",
    "status": 400
}
```

```
400 Bad request

{
    "error": "audience type is required."
}
```

```
401 Unauthorized

Token claims validation failed. This most likely means the token is expired.
```

```
401 Unauthorized

{
    "title": "User with id: 12345678-abcd-1234-12ab-123abc123abc has no permission: \"Aanbod bewerken\" on item: 12345678-abcd-1234-12ab-123abc123abc when executing command: CultuurNet\\UDB3\\Event\\Commands\\UpdateAudience",
    "type": "about:blank",
    "status": 401
}
```
