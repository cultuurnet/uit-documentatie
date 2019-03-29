---
---

# List places

## HTTP request

```
GET /places/
```

List all places.
> no authentication necessary

## Request headers

| Header        | Value            | Required? |
| ------------- | ---------------- | --------- |
| Authorization | Bearer {token}   | false     |
| X-Api-Key     | {apiKey}         | true      |
| Content-Type  | application/json | false     |

## Request body

| Parameter	| Type | Description | Example |
| -- |--|--|--|
| postalCode | string | Limit the list to places with this postal code in the address. |?postalCode=3000|
| embed | true | Embed JSON-LD body in search results, default = false |?embed=true|

To search for a specific place, first list all places from a specific postalCode and secondly perform a free-text query through the search results. For more advanced queries, use the [JSON-LD Search API]({% link content/search_api_3/latest/searching.md %})

## Response

If successful, this method returns a `200` response code and a list of places matching the supplied criteria.

## Example

**request**

The following is an example of the request

```
GET https://io-test.uitdatabank.be/places/?postalCode=3000&embed=true
Content-Type: application/json
X-Api-Key: {apiKey}
```

**Response**

The following is an example and only part of the full response.

```
200 OK

{"@context":"http:\/\/www.w3.org\/ns\/hydra\/context.jsonld","@type":"PagedCollection","itemsPerPage":1000,"totalItems":289,"member":[{"@id":"https:\/\/io.uitdatabank.be\/place\/00fbdc98-3bf0-4398-afe8-ca8cec539b32","@context":"\/contexts\/place","name":{"nl":"Damiaancentrum"},"address":{"addressCountry":"BE","addressLocality":"Leuven","postalCode":"3000","streetAddress":"Sint-Antoniusberg 5"},"calendarType":"permanent","avail...
```
