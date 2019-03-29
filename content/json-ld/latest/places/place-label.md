---
---

# Update labels

Add or remove a specific label from an offer. If the specified label is not yet available in UiTdatabank a new label will be created and linked to the offer

## Label guidelines

* Labels should only start with a letter or number
* Labels should have a minimum length of 2 characters
* Labels should have a maximum length of 50 characters
* Labels should only contain letters, numbers, dash `-` or underscores `_`

## HTTP request

```
PUT /places/{placeId}/labels/{label}
```

Add specified labelname to an offer

```
DELETE /places/{placeId}/labels/{label}
```

Delete specified labelname from an offer

## Request headers

| Header        | Value            | Required? |
| ------------- | ---------------- | --------- |
| Authorization | Bearer {token}   | true      |
| X-Api-Key     | {apiKey}         | true      |
| Content-Type  | application/json | false     |

## Resource properties

| Property	| Type | Description | Example |
|--|--|--|--|
| placeId	| uuid | unique identifier for a place | d595414a-13e0-4dd2-b4bd-706599427351 |
| label	| string | unique labelname (case insensitive) | Mijn Label |

## Request body

Do not supply a request body for this method

## Response

If successful, this method returns a `200` response code and a commandId in the response body.

## Example

**request**

The following is an example of the request

```
PUT https://io-test.uitdatabank.be/places/8ed39ddd-66c6-48dc-9a85-fa26f0f2f318/labels/Mijn%20label
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
