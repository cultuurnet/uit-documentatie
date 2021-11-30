---
---

# Update the publication date

It is possible to change the available from of a place to a date equal to the current date or a date in the future. 
If a date in the past is used, UiTdatabank will automatically set the publication date to the current date.


## HTTP request

```
PUT /places/{placeId}/available-from
```

## Request headers

| Header        | Value            | Required? |
| ------------- | ---------------- | --------- |
| Authorization | Bearer {token}   | true      |
| X-Api-Key     | {apiKey}         | true      |
| Content-Type  | application/ld+json | true |

The supplied token must be from the creator of the offer!

## Resource properties

| Property	| Type | Description | Example |
|--|--|--|--|
| placeId	| uuid | unique identifier for a place | d595414a-13e0-4dd2-b4bd-706599427351 |

## Request body

| Property	| Type | Description | Example |
|--|--|--|--|
| availableFrom | date-time | Specify the date and time when the place can be published and served in search results | 2022-02-01T12:00:00+00:00 |

## Response

* `204 No Content` : request successful
* `400 Bad Request` : incorrect method, payload or URI
* `401 Unauthorized` : expired JWT or the user behind the JWT does not have permission to perform this request

## Example

### request

The following requests are example requests


**date in the past**

In the example below, a date in the past is used, so the new availableFrom will be automatically set to the now-date
```
PUT https://io-test.uitdatabank.be/places/a848fe38-1008-404f-bade-e0e84e5f23ec/available-from
Content-Type: application/ld+json;domain-model=Publish
Authorization: Bearer {token}
X-Api-Key: {apiKey}

{
  "availableFrom": "1950-10-01T12:00:00+00:00"
}
```

**date in the future**

In the example below, a date in the future is used, meaning that the place will not be published until that date.
```
PUT https://io-test.uitdatabank.be/places/a848fe38-1008-404f-bade-e0e84e5f23ec/available-from
Content-Type: application/ld+json;domain-model=Publish
Authorization: Bearer {token}
X-Api-Key: {apiKey}

{
  "availableFrom": "2022-10-01T12:00:00+00:00"
}
```



### Response

The following are example responses.

```
204 No Content
```

```
400 Bad Request

{
    "type": "https://api.publiq.be/probs/body/invalid-data",
    "title": "Invalid body data",
    "status": 400,
    "schemaErrors": [
        {
            "jsonPointer": "/",
            "error": "The required properties (availableFrom) are missing"
        }
    ]
}
```

```
400 Bad request

{
    "type": "https://api.publiq.be/probs/body/invalid-data",
    "title": "Invalid body data",
    "status": 400,
    "schemaErrors": [
        {
            "jsonPointer": "/availableFrom",
            "error": "The data must match the 'date-time' format"
        }
    ]
}
```

```
401 Unauthorized

{
    "type": "https://api.publiq.be/probs/auth/unauthorized",
    "title": "Unauthorized",
    "status": 401,
    "detail": "Could not parse the given JWT."
}
```

