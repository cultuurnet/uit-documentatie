---
---

# Update facilities

One or more of the enabled/visible facility types available at http://taxonomy.uitdatabank.be/api/domain/facility/classification.

Object must contain:
- id

**Note**: special permission is needed to update facilities in UiTdatabank. Contact an administrator for further information.

**List of facilities for places**

| Facility ID | Facility name                         |
| ----------- | ------------------------------------- |
| 3.13.1.0.0 | Voorzieningen voor assistentiehonden |
| 3.23.3.0.0 | Rolstoel ter beschikking |
| 3.25.0.0.0 | Contactpunt voor personen met handicap |
| 3.26.0.0.0 | Parkeerplaats |

## HTTP request

```
PUT /places/{placeId}/facilities/
```

**HTTP DELETE**

Not supported: to remove specific facilities, perform PUT request with empty array

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
| facilities | array | one or more facilityIds | 3.23.1.0.0 |

## Response

* `204 No Content` : request successful
* `400 Bad Request` : incorrect method, payload or URI
* `401 Unauthorized` : expired JWT or the user behind the JWT does not have permission to perform this request

## Example

**request**

The following is an example of the request

```
PUT https://io-test.uitdatabank.be/places/18717eeb-4ff0-4de5-afa8-5170b58e335d/facilities/
Content-Type: application/json
Authorization: Bearer {token}
X-Api-Key: {apiKey}

{
"facilities": [
   "3.23.2.0.0",
   "3.13.3.0.0",
   "3.17.3.0.0"
  ]
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
    "title": "No route found for \"PUT /places/6e46cf33-dd9b-4bf9-9c32-259eab5b6cbd/facilities\": Method Not Allowed (Allow: POST, OPTIONS)",
    "type": "about:blank",
    "status": 400
}
```

```
400 Bad request

{
    "validation_messages": {
        "facilities": "Required but could not be found."
    },
    "title": "Invalid payload.",
    "type": "about:blank"
}
```
```
400 Bad request

{
    "title": "Unknown facility id '3.13.3.0.0'",
    "type": "about:blank",
    "status": 400
}
```

```
401 Unauthorized

Token claims validation failed. This most likely means the token is expired.
```
