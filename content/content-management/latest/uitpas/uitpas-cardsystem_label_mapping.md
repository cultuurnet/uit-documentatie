---
---

# List active CardsystemIDs

## Host

 For documentation on UiTPAS base url, go [here]({% link content/json-ld/latest/authentication/authentication-baseUrl.md %})

## HTTP request

```
GET /labels
```
View the active cardSystem IDs and corresponding UiTPAS labels

## Request headers

| Header        | Value            | Required? |
| ------------- | ---------------- | --------- |
| Authorization | Bearer {token}   | false     |
| X-Api-Key     | {apiKey}         | false     |
| Content-Type  | application/json | false     |

## Response

If succesful, this method returns a `200` response code and a JSON-LD document in the response body.

**Example response**

```
{
  "1": "UiTPAS Regio Aalst",
  "3": "Paspartoe",
  "5": "UiTPAS Gent",
  "7": "UiTPAS Oostende",
  "8": "UiTPAS Zuidwest",
  "10": "UiTPAS",
  "12": "UiTPAS Kempen",
  "13": "UiTPAS Mechelen",
  "14": "UiTPAS Maasmechelen",
  "15": "UiTPAS Heist-op-den-Berg",
  "16": "UiTPAS Lier",
  "17": "UiTPAS Leuven",
  "18": "UiTPAS Westhoek",
  "19": "UiTPAS Meetjesland",
  "20": "UiTPAS Haspengouw",
  "21": "UiTPAS Herita",
  "22": "UiTPAS Mortsel"
}
```
