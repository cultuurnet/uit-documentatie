---
---

# Get UiTPAS event details

## Host

 For documentation on UiTPAS base url, go [here]({% link content/entry_api_3/latest/authentication/authentication-baseUrl.md %})

## HTTP request

```
GET /events/{eventId}
```
View the UiTPAS details of a cultural event.

## Request headers

| Header        | Value            | Required? |
| ------------- | ---------------- | --------- |
| Authorization | Bearer {token}   | false     |
| X-Api-Key     | {apiKey}         | false     |
| Content-Type  | application/json | false     |

## Resource properties

| Property | Type | Description | Example |
|--|--|--|--|
| eventId | uuid | unique identifier for an event | d595414a-13e0-4dd2-b4bd-706599427351 |

## Response

If succesful, this method returns a `200` response code and a JSON-LD document in the response body.

**Example response**

```
{
    "@id": "https://uitpas-test.uitdatabank.be/events/de343e38-d656-4928-96bc-55578e0d94ec",
    "cardSystems": "https://uitpas-test.uitdatabank.be/events/de343e38-d656-4928-96bc-55578e0d94ec/cardSystems/",
    "hasTicketSales": false
}
```

Important note: if the value of `hasTicketSales` is `true`, it is not possible to update the cardsystems for this event
