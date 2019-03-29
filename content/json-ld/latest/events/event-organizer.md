---
---

# Update organizer

Update an event with a new organizer. For a list of all organizers, see [list organizers]({% link content/json-ld/latest/organizers/organizer-list.md %}) documentation.

Organizer is not required, an event can only have one organizer.

## HTTP Request

```
PUT /events/{eventId}/organizer/{organizerId}
```

Add specified organizerId to an offer

```
DELETE /events/{eventId}/organizer/{organizerId}
```

Delete specified organizerId from an offer

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
| organizerId	| uuid | unique identifier for an organizer | d595414a-13e0-4dd2-b4bd-706599427351 |

## Request body

Do not supply a request body for this method

## Response

If successful, this method returns a `200` response code and a commandId in the response body.

## Example

**request**

The following is an example of the request

```
PUT https://io-test.uitdatabank.be/events/03116768-1abc-405a-93d7-ba6ede52fe09/organizer/5023e3af-3fe1-45be-8a72-86ebe9ffa2fe
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
