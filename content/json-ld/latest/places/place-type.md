---
---

# Update place type

One of the place types available at http://taxonomy.uitdatabank.be/api/domain/eventtype/classification. This list contains all offer-types: both for events and places. For an overview of all types appropriate for offer-type 'place', see [here]({% link content/uitdatabank/latest/categorisatie/type_locatie.md %})

Type is required for every place and a place can only have one typeid.

## HTTP request

```
PUT /places/{placeId}/type/{typeId}
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
| placeId	| uuid | unique identifier for a place | d595414a-13e0-4dd2-b4bd-706599427351 |
| typeId	| string | unique place type-id | ekdc4ATGoUitCa0e6me6xA |

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
PUT https://io-test.uitdatabank.be/places/03116768-1abc-405a-93d7-ba6ede52fe09/type/ekdc4ATGoUitCa0e6me6xA
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
    "title": "No route found for \"POST /places/6e46cf33-dd9b-4bf9-9c32-259eab5b6cbd/type/1.2.1.0.\": Method Not Allowed (Allow: PUT, OPTIONS)",
    "type": "about:blank",
    "status": 400
}
```

```
400 Bad request

{
    "title": "Unknown place type id: 1.2.1.0.0",
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
    "title": "User with id: 12345678-abcd-1234-12ab-123abc123abc has no permission: \"Aanbod bewerken\" on item: 12345678-abcd-1234-12ab-123abc123abc when executing command: CultuurNet\\UDB3\\Place\\Commands\\UpdateType",
    "type": "about:blank",
    "status": 401
}
```
