---
---

# Update typicalAgeRange

Add or remove the age range appropriate for the offer.
Don't use decimals

Events with upper boundary smaller or equal to 12 are enriched with the 'Vlieg'-icon and published on https://www.uitmetvlieg.be

## HTTP request

```
PUT /events/{eventId}/typicalAgeRange
```

Update an offer with a given age range

```
DELETE /events/{eventId}/typicalAgeRange
```

Delete any age range from an offer (no body required)

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

Add a specific age range to an offer

| Property	| Type | Description | Example |
|--|--|--|--|
| typicalAgeRange | string | Specify the lower and upper age range applicable for the offer. Do not use decimals | 3-4 |


## Response

* `204 No Content` : request successful
* `400 Bad Request` : incorrect method, payload or URI
* `401 Unauthorized` : expired JWT or the user behind the JWT does not have permission to perform this request

## Example

**request**

The following is an example of the request

```
PUT https://io-test.uitdatabank.be/events/03116768-1abc-405a-93d7-ba6ede52fe09/typicalAgeRange
Content-Type: application/json
Authorization: Bearer {token}
X-Api-Key: {apiKey}

{
  "typicalAgeRange": "1-12"
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
    "title": "No route found for \"POST /events/6e46cf33-dd9b-4bf9-9c32-259eab5b6cbd/typicalAgeRange\": Method Not Allowed (Allow: PUT, DELETE, OPTIONS)",
    "type": "about:blank",
    "status": 400
}
```

```
400 Bad request

{
    "error": "typicalAgeRange required"
}
```

```
401 Unauthorized

Token claims validation failed. This most likely means the token is expired.
```

```
401 Unauthorized

{
    "title": "User with id: 12345678-abcd-1234-12ab-123abc123abc has no permission: \"Aanbod bewerken\" on item: 12345678-abcd-1234-12ab-123abc123abc when executing command: CultuurNet\\UDB3\\Event\\Commands\\UpdateTypicalAgeRange",
    "type": "about:blank",
    "status": 401
}
```
