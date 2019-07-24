---
---

# Update unique url

Each organizer in UiTdatabank must have a unique URL. For more info please contact our helpdesk at `vragen@uitdatabank.be`

## HTTP request

```
PUT /organizers/{organizerId}/url
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
| organizerId	| uuid | unique identifier for an organizer | d595414a-13e0-4dd2-b4bd-706599427351 |


## Request body

| Property	| Type | Description |
|--|--|--|
| url | url | An object containing the unique url of an organizer. |

## Response

* `204 No Content` : request successful
* `400 Bad Request` : incorrect method, payload or URI
* `401 Unauthorized` : expired JWT or the user behind the JWT does not have permission to perform this request

## Example

**request**

The following is an example of the request

```
PUT  https://io-test.uitdatabank.be/organizers/6d330801-41ac-43da-a4dd-7a97e5b3248a/url
Content-Type: application/json
Authorization: Bearer {token}
X-Api-Key: {apiKey}

{
  "url": "http://www.depot.be"
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
    "title": "No route found for \"POST /organizers/6d330801-41ac-43da-a4dd-7a97e5b3248a/url\": Method Not Allowed (Allow: PUT, OPTIONS)",
    "type": "about:blank",
    "status": 400
}
```

```
400 Bad request

{
    "title": "Missing value for \"url\".",
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
    "title": "User with id: 12345678-abcd-1234-12ab-123abc123abc has no permission: \"Organisaties bewerken\" on item: 12345678-abcd-1234-12ab-123abc123abc when executing command: CultuurNet\\UDB3\\Organizer\\Commands\\UpdateWebsite",
    "type": "about:blank",
    "status": 401
}
```
