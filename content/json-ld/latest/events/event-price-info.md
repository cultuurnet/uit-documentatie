---
---

# Update price info

Add an array of price info objects for the offer.

Price is not required, although once added it is not possible to remove the price with category `base` from an offer.

## HTTP request

```
PUT /events/{eventId}/priceInfo
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
| eventId	| uuid | unique identifier for an event | d595414a-13e0-4dd2-b4bd-706598427351 |

## Request body

| Property	| Type | Description | Example |
|--|--|--|--|
| category | string | The first price info object has category 'base', all the following objects have category 'tariff' (differentiated price for specific segments) | base |
| name | array | category 'base' should always have 'Basistarief' for name, discounts for specific segments can be named with category 'tariff' | "nl": "Senioren" |
| price | number | Pricevalue is a floating-point number, use 0.0 for free events | 10.0 |
| priceCurrency | string | 3-characters currency indicator | EUR |

## Response

If successful, this method returns a `200` response code and a commandId in the response body.

## Example

**request**

The following is an example of the request

```
PUT https://io-test.uitdatabank.be/events/03116768-1abc-405a-93d7-ba6ede52fe09/priceInfo
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
      "en": "Youth"
    },
    "price": 0,
    "priceCurrency": "EUR"
  },
  {
    "category": "tariff",
    "name": {
      "nl": "Senioren",
      "en": "Elderly"
    },
    "price": 6,
    "priceCurrency": "EUR"
  }
]
```

**Response**

The following is an example of the response.

```
200 OK

{
  "commandId": "a55486283a53a1e45041002c4887580f"
}
```
