---
---

# Update labels

Add or remove a specific label from an organizer

## Label guidelines

* Labels should only start with a letter or number
* Labels should have a minimum length of 2 characters
* Labels should have a maximum length of 50 characters
* Labels should only contain letters, numbers, dash `-` or underscores `_`

## HTTP request

```
PUT /organizers/{organizerId}/labels/{label}
```

Add a label to a single organizer
> If the specified label is not yet available in UiTdatabank a new label will be created and linked to the organizer


```
DELETE /organizers/{organizerId}/labels/{label}
```

Delete a label from a single organizer

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
PUT https://io-test.uitdatabank.be/organizers/03116768-1abc-405a-93d7-ba6ede52fe09/labels/exampleLabel
Content-Type: application/json
Authorization: Bearer {token}
X-Api-Key: {apiKey}
```

**Response**

The following is an example of the response.

The following are example responses.

```
204 No Content
```

```
400 Bad Request

{
    "title": "No route found for \"POST /organizers/6d330801-41ac-43da-a4dd-7a97e5b3248a/labels/exampleLabel\": Method Not Allowed (Allow: PUT, DELETE, OPTIONS)",
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
    "title": "User with id: 12345678-abcd-1234-12ab-123abc123abc has no permission: \"Organisaties bewerken\" on item: 12345678-abcd-1234-12ab-123abc123abc when executing command: CultuurNet\\UDB3\\Organizer\\Commands\\AddLabel",
    "type": "about:blank",
    "status": 401
}
```
