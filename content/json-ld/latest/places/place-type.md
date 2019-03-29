---
---

# Update place type

One of the place types available at http://taxonomy.uitdatabank.be/api/domain/eventtype/classification. This list contains all offer-types: both for events and places. For an overview of all types appropriate for offer-type 'place', see [here]({% link content/uitdatabank/latest/categorisatie/type_locatie.md %})

Type is required for every place and a place can only have one typeid.

## HTTP request

```
PUT /places/{placeId}/type/{typeId}
```

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
| typeId	| string | unique place type-id | ekdc4ATGoUitCa0e6me6xA |

## Request body

Do not supply a request body for this method

## Response

If successful, this method returns a `200` response code and a commandId in the response body.

## Example

**request**

The following is an example of the request

```
PUT https://io-test.uitdatabank.be/places/03116768-1abc-405a-93d7-ba6ede52fe09/type/ekdc4ATGoUitCa0e6me6xA
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
