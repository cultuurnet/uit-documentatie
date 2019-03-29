---
---

# Create place

## HTTP request

```
POST /places/
```

## Request headers

| Header        | Value            | Required? |
| ------------- | ---------------- | --------- |
| Authorization | Bearer {token}   | true      |
| X-Api-Key     | {apiKey}         | true      |
| Content-Type  | application/json | false     |

## Request body

To create a new event the object-body must contain the following properties:
- mainLanguage: to set the main language for the offer. Translations can be added afterwards
- name: don't specify a language, the mainLanguage will be used to add a language property for the name
- type
- address: don't specify a language, the mainLanguage will be used to add a language property for the address
- calendar

The initial POST request must contain a JSON body with (at least) all mandatory fields. These fields can be edited separately with individual PUT requests.
See specific update requests for definitions of each property

## Response

If successful, this method returns a `200` response code and a placeId and url in the response body.

## Example

**request**

The following is an example of the request

```
POST https://io-test.uitdatabank.be/places/
Content-Type: application/json
Authorization: Bearer {token}
X-Api-Key: {apiKey}

{
  "mainLanguage": "nl",
  "name": "Café Den Hemel",
  "type": {
    "id": "ekdc4ATGoUitCa0e6me6xA",
    "label": "Horeca",
    "domain": "eventtype"
  },
  "address": {
    "addressCountry": "BE",
    "addressLocality": "Scherpenheuvel-Zichem",
    "postalCode": "3271",
    "streetAddress": "Hoornblaas 107"
  },
  "calendar": {
    "calendarType": "permanent",
    "openingHours": [
      {
        "dayOfWeek": [
          "monday",
          "wednesday",
          "thursday",
          "friday"
        ],
        "opens": "13:00",
        "closes": "23:59"
      },
      {
        "dayOfWeek": [
          "monday",
          "tuesday",
          "thursday",
          "friday",
          "saturday"
        ],
        "opens": "00:00",
        "closes": "01:00"
      },
      {
        "dayOfWeek": [
          "saturday",
          "sunday"
        ],
        "opens": "15:00",
        "closes": "23:59"
      },
      {
        "dayOfWeek": [
          "saturday",
          "sunday"
        ],
        "opens": "00:00",
        "closes": "03:00"
      }
    ]
  }
}
```

**Response**

The following is an example of the response.

```
200 OK

{
  "placeId": "03116768-1abc-405a-93d7-ba6ede52fe78",
  "url": "https://io-test.uitdatabank.be/place/03116768-1abc-405a-93d7-ba6ede52fe09"
}
```

**Created place**

The following is an example of the JSON-LD projection created. Note the added language properties for `address` and `name`.

```
{
  "@context": "/contexts/place",
  "@id": "https://io-test.uitdatabank.be/place/03116768-1abc-405a-93d7-ba6ede52fe09",
  "address": {
    "nl": {
      "addressCountry": "BE",
      "addressLocality": "Scherpenheuvel-Zichem",
      "postalCode": "3271",
      "streetAddress": "Hoornblaas 107"
    }
  },
  "availableTo": "2100-01-01T00:00:00+00:00",
  "calendarType": "permanent",
  "completedLanguages": [
    "nl"
  ],
  "created": "2018-02-27T13:35:29+00:00",
  "creator": "user@example.com",
  "geo": {
    "latitude": 51.015564,
    "longitude": 5.003865
  },
  "languages": [
    "nl"
  ],
  "mainLanguage": "nl",
  "modified": "2018-02-27T13:35:30+00:00",
  "name": {
    "nl": "Café Den Hemel"
  },
  "openingHours": [
    {
      "closes": "23:59",
      "dayOfWeek": [
        "monday",
        "wednesday",
        "thursday",
        "friday"
      ],
      "opens": "13:00"
    },
    {
      "closes": "01:00",
      "dayOfWeek": [
        "monday",
        "tuesday",
        "thursday",
        "friday",
        "saturday"
      ],
      "opens": "00:00"
    },
    {
      "closes": "23:59",
      "dayOfWeek": [
        "saturday",
        "sunday"
      ],
      "opens": "15:00"
    },
    {
      "closes": "03:00",
      "dayOfWeek": [
        "saturday",
        "sunday"
      ],
      "opens": "00:00"
    }
  ],
  "terms": [
    {
      "domain": "eventtype",
      "id": "ekdc4ATGoUitCa0e6me6xA",
      "label": "Horeca"
    }
  ],
  "workflowStatus": "DRAFT"
}
```
