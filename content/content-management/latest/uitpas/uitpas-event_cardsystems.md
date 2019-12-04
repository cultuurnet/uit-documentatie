---
---

# Get event cardsystems

## Host

 For documentation on UiTPAS base url, go [here]({% link content/json-ld/latest/authentication/authentication-baseUrl.md %})

## HTTP request

```
GET /events/{eventId}/cardSystems/
```
View the card systems coupled to the cultural event.

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

```json
{ 
   "5":{ 
      "id":5,
      "name":"UiTPAS Regio Gent",
      "distributionKeys":{ 
         "44":{ 
            "id":44,
            "name":"standaard"
         }
      }
   }
}
```
