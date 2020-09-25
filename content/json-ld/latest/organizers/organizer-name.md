---
---

# Update name

An object containing the name in the given language. UiTdatabanks default language is nl

## HTTP request

```
PUT /organizers/{organizerId}/name/{lang}
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
| lang	| string | 2-character language reference | nl |


## Request body

| Property	| Type | Description |
|--|--|--|
|name		| string | The name for your event |

## Response

If successful, this method returns a `200` response code.

## Example

**request**

The following is an example of the request

```
PUT  https://io-test.uitdatabank.be/organizers/6d330801-41ac-43da-a4dd-7a97e5b3248a/name/nl
Content-Type: application/json
Authorization: Bearer {token}
X-Api-Key: {apiKey}

{
"name": "Name example"
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
    "title": "No route found for \"POST /organizers/6d330801-41ac-43da-a4dd-7a97e5b3248a/name/nl\": Method Not Allowed (Allow: PUT, OPTIONS)",
    "type": "about:blank",
    "status": 400
}
```

```
400 Bad request

{
    "title": "Missing value for \"name\".",
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
    "title": "User with id: 12345678-abcd-1234-12ab-123abc123abc has no permission: \"Organisaties bewerken\" on item: 12345678-abcd-1234-12ab-123abc123abc when executing command: CultuurNet\\UDB3\\Organizer\\Commands\\UpdateTitle",
    "type": "about:blank",
    "status": 401
}
```
