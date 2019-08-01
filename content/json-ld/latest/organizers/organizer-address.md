---
---

# Update address

Update the address information of a place.

Address is not required, an organizer can only have one address.


## HTTP request

```
PUT /organizers/{organizerId}/address
```

**HTTP DELETE**

Not supported: once an address is added, it is only possible to update the address.

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

| Property	| Type | Description | Example |
|--|--|--|--|
| addressCountry | string | 2-character country code | BE |
| addressLocality | string | The locality name of the location | Leuven |
| postalCode | string | postalcode of the location | 3000 |
| streetAddress | string | The street name and house number information of the location | Bondgenotenlaan 101 |

## Response

* `204 No Content` : request successful
* `400 Bad Request` : incorrect method, payload or URI
* `401 Unauthorized` : expired JWT or the user behind the JWT does not have permission to perform this request

## Example

**request**

The following is an example of the request

```
PUT  https://io-test.uitdatabank.be/organizers/6d330801-41ac-43da-a4dd-7a97e5b3248a/address
Content-Type: application/json
Authorization: Bearer {token}
X-Api-Key: {apiKey}

{
  "addressCountry": "BE",
  "addressLocality": "Leuven",
  "postalCode": "3000",
  "streetAddress": "Sluisstraat 79"
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
    "title": "No route found for \"POST /organizers/6d330801-41ac-43da-a4dd-7a97e5b3248a/address\": Method Not Allowed (Allow: PUT, OPTIONS)",
    "type": "about:blank",
    "status": 400
}
```

```
400 Bad request

{
    "validation_messages": {
        "streetAddress": "Should not be empty.",
        "postalCode": "Should not be empty.",
        "addressLocality": "Should not be empty.",
        "addressCountry": "Should not be empty."
    },
    "title": "Invalid payload.",
    "type": "about:blank"
}
```

```
401 Unauthorized

Token claims validation failed. This most likely means the token is expired.
```

```
401 Unauthorized

{
    "title": "User with id: 12345678-abcd-1234-12ab-123abc123abc has no permission: \"Organisaties bewerken\" on item: 12345678-abcd-1234-12ab-123abc123abc when executing command: CultuurNet\\UDB3\\Organizer\\Commands\\UpdateAddress",
    "type": "about:blank",
    "status": 401
}
```
