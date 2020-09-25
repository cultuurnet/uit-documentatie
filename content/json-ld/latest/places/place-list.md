---
---

# List places

## HTTP request

It is important to re-use existing places and avoid creating duplicates. UiTdatabank is continuously monitored and duplicate entries will be removed.

To search for a specific place, you can use  the UiTdatabank Search API endpoint. We advise to list all places from a specific postalCode combined with a free-text search. For more advanced queries, see the [JSON-LD Search API]({% link content/search_api_3/latest/searching.md %}) documentation.

```
GET https://search-test.uitdatabank.be/places/
```

```
GET https://search.uitdatabank.be/places/
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
| postalCode | string | Limit the list to places with this postal code in the address. | postalCode=3000 |
| workflowStatus | string | search for all active places, even those in draft. | workflowStatus=DRAFT,READY_FOR_VALIDATION,APPROVED |
| text | string | free-text search for a specific location | text=museum |
| embed | true | Embed JSON-LD body in search results, default = false | embed=true |

## Response

If successful, this method returns a `200` response code and a list of places matching the supplied criteria.

## Example

**request**

The following is an example of the request

```
GET https://search-test.uitdatabank.be/places/?postalCode=3000&embed=true&workflowStatus=DRAFT,READY_FOR_VALIDATION,APPROVED
Content-Type: application/json
X-Api-Key: {apiKey}
```

**Response**

The following is an example and only part of the full response.

```
200 OK

{
"@context": "http://www.w3.org/ns/hydra/context.jsonld",
"@type": "PagedCollection",
"itemsPerPage": 30,
"totalItems": 26,
"member": [
{
"@id": "https://io-test.uitdatabank.be/place/b2b6c926-3343-40c7-856f-6b2b79d8a721",
"@context": "/contexts/place",
"mainLanguage": "nl",
"name": {
"nl": "M-Schatkamer van Sint-Pieter"
},
"address": {...
```
