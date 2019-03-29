---
---

# Update location

Update an event with a new location. For a list of all locations, see [List places]({% link content/json-ld/latest/places/place-list.md %}) documentation.

Location is required, an event can only have one location.

## HTTP request

```
PUT /events/{eventId}/location/{locationId}
```
Update event with the given locationId

## Request headers

| Header        | Value            | Required? |
| ------------- | ---------------- | --------- |
| Authorization | Bearer {token}   | true      |
| X-Api-Key     | {apiKey}         | true      |
| Content-Type  | application/json | false     |

## Resource properties

| Property	| Type | Description | Example |
|--|--|--|--|
| eventId	| uuid | unique identifier for an event | d595414a-13e0-4dd2-b4bd-706599427351 |
| locationId	| uuid | unique placeId | d595414a-13e0-4dd2-b4bd-706599427351 |

## Request body

Do not supply a request body for this method

## Response

If successful, this method returns a `200` response code and a commandId in the response body.

## Example

**request**

The following is an example of the request

```
PUT https://io-test.uitdatabank.be/events/03116768-1abc-405a-93d7-ba6ede52fe09/location/6f072ba8-c510-40ac-b387-51f582650e27
Content-Type: application/json
Authorization: Bearer {token}
X-Api-Key: {apiKey}
```

**Response**

The following is an example of the response.

```
200 OK

{
  "commandId": "a55486283a53a1e45041002c4887580f"
}
```
