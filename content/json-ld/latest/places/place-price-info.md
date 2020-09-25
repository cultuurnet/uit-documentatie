---
---

# Update price info

Add an array of price info objects for the offer.

Price is not required, although once added it is not possible to remove the price with category `base` from an offer.

## HTTP request

```
PUT /places/{placeId}/priceInfo
```

**HTTP DELETE**

Not supported: once priceInfo is added it can only be updated.

## Request headers

| Header        | Value            | Required? |
| ------------- | ---------------- | --------- |
| Authorization | Bearer {token}   | true      |
| X-Api-Key     | {apiKey}         | true      |
| Content-Type  | application/json | false     |

## Resource properties

| Property	| Type | Description | Example |
|--|--|--|--|
| placeId	| uuid | unique identifier for a place | d595414a-13e0-4dd2-b4bd-706598427351 |

## Request body

| Property	| Type | Description | Example |
|--|--|--|--|
| category | string | The first price info object has category 'base', all the following objects have category 'tariff' (differentiated price for specific segments) | base |
| name | string | category 'base' should always have 'Basistarief' for name, discounts for specific segments can be named with category 'tariff' | "nl": "Senioren" |
| price | number | Pricevalue is a floating-point number, use 0.0 for free events | 10.0 |
| priceCurrency | string | 3-characters currency indicator | EUR |

## Response

* `204 No Content` : request successful
* `400 Bad Request` : incorrect method, payload or URI
* `401 Unauthorized` : expired JWT or the user behind the JWT does not have permission to perform this request

## Example

**request**

The following is an example of the request

```
PUT https://io-test.uitdatabank.be/places/03116768-1abc-405a-93d7-ba6ede52fe09/priceInfo
Content-Type: application/json
Authorization: Bearer {token}
X-Api-Key: {apiKey}

[
  {
    "category": "base",
    "name": {
      "nl": "Basistarief",
      "fr": "Tarif de base",
      "en": "Base tariff",
      "de": "Basisrate"
    },
    "price": 10,
    "priceCurrency": "EUR"
  },
  {
    "category": "tariff",
    "name": {
      "nl": "Jongeren",
      "en": "Youth",
    },
    "price": 0,
    "priceCurrency": "EUR"
  },
  {
    "category": "tariff",
    "name": {
      "nl": "Senioren",
      "en": "Elderly",
    },
    "price": 6,
    "priceCurrency": "EUR"
  }
]
```

**Response**

The following are example responses.

```
204 No Content
```

```
400 Bad Request

{
    "title": "No route found for \"POST /places/6e46cf33-dd9b-4bf9-9c32-259eab5b6cbd/priceInfo\": Method Not Allowed (Allow: PUT, OPTIONS)",
    "type": "about:blank",
    "status": 400
}
```

```
400 Bad request

{
    "validation_messages": {
        "[name].category": "Required but not found.",
        "[name].price": "Required but not found.",
        "[].category": "Exactly one entry with category 'base' required but none found."
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
    "title": "User with id: 12345678-abcd-1234-12ab-123abc123abc has no permission: \"Aanbod bewerken\" on item: 12345678-abcd-1234-12ab-123abc123abc when executing command: CultuurNet\\UDB3\\Place\\Commands\\UpdatePriceInfo",
    "type": "about:blank",
    "status": 401
}
```
