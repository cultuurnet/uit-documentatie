---
---

# Publish a place

By default every offer is created with `"workflowstatus":"DRAFT"`

Offers with workflowstatus "DRAFT" are by default excluded from search results

A Publish command is an authenticated request that requires specific permission: it can only be executed by the creator of the offer!

## HTTP request

**!notice the deprecated endpoint `place` instead of `places`!** 

```
PATCH /place/{placeId}
```

## Request headers

| Header        | Value            | Required? |
| ------------- | ---------------- | --------- |
| Authorization | Bearer {token}   | true      |
| X-Api-Key     | {apiKey}         | true      |
| Content-Type  | application/ld+json;domain-model=Publish | true |

The supplied token must be from the creator of the offer!

## Resource properties

| Property	| Type | Description | Example |
|--|--|--|--|
| placeId	| uuid | unique identifier for a place | d595414a-13e0-4dd2-b4bd-706599427351 |

## Request body

| Property	| Type | Description | Example |
|--|--|--|--|
| publicationDate | date-time | Specify the date and time when the offer can be published and served in search results | 2017-02-01T12:00:00+00:00 |

## Response

If successful, this method returns a `200` response code and a commandId in the response body.

## Example

**request**

The following is an example of the request

```
PATCH https://io-test.uitdatabank.be/places/03116768-1abc-405a-93d7-ba6ede52fe09
Content-Type: application/ld+json;domain-model=Publish
Authorization: Bearer {token}
X-Api-Key: {apiKey}

{
  "publicationDate": "2017-02-01T12:00:00+00:00"
}
```

**Response**

The following is an example of the response.

```
200 OK

{
  "commandId": "a55486283a53a1e45041002c4887580f"
}
```
