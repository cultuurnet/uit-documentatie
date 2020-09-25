---
---

# Update facilities

One or more of the enabled/visible facility types available at http://taxonomy.uitdatabank.be/api/domain/facility/classification.

Object must contain:
- id

**Note**: special permission is needed to update facilities in UiTdatabank. Contact an administrator for further information.

**List of facilities for events**

| Facility ID | Facility name                         |
| ----------- | ------------------------------------- |
| 3.13.1.0.0 | Voorzieningen voor assistentiehonden |
| 3.13.2.0.0 | Audiodescriptie |
| 3.17.1.0.0 | Ringleiding |
| 3.17.2.0.0 | Voelstoelen |
| 3.17.3.0.0 | Boven- of ondertiteling |
| 3.23.2.0.0  | Assistentie |
| 3.26.0.0.0 | Parkeerplaats |
| 3.27.0.0.0 | Rolstoeltoegankelijk |
| 3.28.0.0.0 | Alternatieve ingang |
| 3.29.0.0.0 | Gegarandeerd zicht |
| 3.30.0.0.0 | Rolstoelpodium |
| 3.31.0.0.0 | Toegankelijk sanitair |
| 3.32.0.0.0 | Voorbehouden camping |
| 3.33.0.0.0 | Tolken Vlaamse Gebarentaal |
| 3.34.0.0.0 | Vereenvoudigde informatie |
| 3.35.0.0.0 | 1 begeleider gratis |
| 3.36.0.0.0 | Verzorgingsruimte |
| 3.37.0.0.0 | Oplaadzone rolstoelen |
| 3.38.0.0.0 | Inter-assistentie |
| 3.39.0.0.0 | Begeleiderspas |
| 3.40.0.0.0 | Inter-events |

## HTTP request

```
PUT /events/{eventId}/facilities/
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
| eventId	| uuid | unique identifier for an event | d595414a-13e0-4dd2-b4bd-706598427351 |

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
PUT https://io-test.uitdatabank.be/events/18717eeb-4ff0-4de5-afa8-5170b58e335d/facilities/
Content-Type: application/json
Authorization: Bearer {token}
X-Api-Key: {apiKey}

{
"facilities": [
   "3.23.2.0.0",
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
    "title": "No route found for \"PUT /events/6e46cf33-dd9b-4bf9-9c32-259eab5b6cbd/facilities\": Method Not Allowed (Allow: POST, OPTIONS)",
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
