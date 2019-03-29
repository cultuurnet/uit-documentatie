---
---

# Create Event

## HTTP request

```
POST /events/
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
- theme
- location
- calendar

The initial POST request must contain a JSON body with (at least) all mandatory fields. These fields can be edited separately with individual PUT requests.
See individual PUT requests for definitions of each property.


## Response

If successful, this method returns a `200` response code and a eventId and url in the response body.

## Example

**request**

The following is an example of the request

```
POST https://io-test.uitdatabank.be/events/
Content-Type: application/json
Authorization: Bearer {token}
X-Api-Key: {apiKey}

{
  "mainLanguage": "nl",
  "name": "name example",
  "location": {
    "id": "6f072ba8-c510-40ac-b387-51f582650e27",
    "name": "Café Den Hemel",
    "address": {
      "addressCountry": "BE",
      "addressLocality": "Scherpenheuvel-Zichem",
      "postalCode": "3271",
      "streetAddress": "Hoornblaas 107"
    }
  },
  "type": {
    "id": "0.50.4.0.0",
    "label": "Concert",
    "domain": "eventtype"
  },
  "theme": {
    "id": "1.8.2.0.0",
    "label": "Jazz en blues",
    "domain": "theme"
  },
  "calendar": {
    "calendarType": "multiple",
    "timeSpans": [
      {
        "start": "2018-05-05T18:00:00.000Z",
        "end": "2018-05-05T21:00:00.000Z"
      },
      {
        "start": "2018-05-12T18:00:00.000Z",
        "end": "2018-05-12T21:00:00.000Z"
      }
    ]
  },
  "workflowStatus": "DRAFT",
  "audienceType": "everyone"
}
```

**Response**

The following is an example of the response.

```
200 OK

{
  "eventId": "03116768-1abc-405a-93d7-ba6ede52fe78",
  "url": "https://io-test.uitdatabank.be/event/03116768-1abc-405a-93d7-ba6ede52fe09"
}
```
