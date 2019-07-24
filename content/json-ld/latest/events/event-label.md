---
---

# Update labels

Add or remove a specific label from an offer. If the specified label is not yet available in UiTdatabank a new label will be created and linked to the offer

## Label guidelines

* Labels should only start with a letter or number
* Labels should have a minimum length of 2 characters
* Labels should have a maximum length of 50 characters
* Labels should only contain letters, numbers, dash `-` or underscores `_`

## HTTP request

```
PUT /events/{eventId}/labels/{label}
```

Add specified labelname to an offer

```
DELETE /events/{eventId}/labels/{label}
```

Delete specified labelname from an offer

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
| label	| string | unique labelname (case insensitive) | Mijn Label |

## Request body

Do not supply a request body for this method

## Response

* `204 No Content` : request successful
* `400 Bad Request` : incorrect method, payload or URI
* `401 Unauthorized` : expired JWT or the user behind the JWT does not have permission to perform this request

## Example

**request**

The following is an example of the request

```
PUT https://io-test.uitdatabank.be/events/5d713d56-636e-414a-b49f-614adec73b1e/labels/Mijn%20label
Content-Type: application/json
Authorization: Bearer {token}
X-Api-Key: {apiKey}
```

**Response**

The following are example responses.

```
204 No Content
```

```
400 Bad Request

{
    "title": "No route found for \"POST /events/6e46cf33-dd9b-4bf9-9c32-259eab5b6cbd/labels/Mijn%20label\": Method Not Allowed (Allow: DELETE, PUT, OPTIONS)",
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
    "title": "User with id: 12345678-abcd-1234-12ab-123abc123abc has no permission: \"Aanbod bewerken\" on item: 12345678-abcd-1234-12ab-123abc123abc when executing command: CultuurNet\\UDB3\\Event\\Commands\\AddLabel",
    "type": "about:blank",
    "status": 401
}
```
