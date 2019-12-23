---
---

# List organizers

It is important to re-use existing organizers and avoid creating duplicates. UiTdatabank is continuously monitored and duplicate entries will be removed.

The following documentation is deprecated: to search for organizers, it is better to use the [JSON-LD Search API]({% link content/search_api_3/latest/searching-organizers.md %). 

## HTTP request

```
GET /organizers/
```

List all organizers
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
| name | string | The name of the organizer to be used for fuzzy search |?name=STUK|
| website | string | The url of the organizer website |?website=http://www.30cc.be|
| limit | string | The limit of organizers included in the result set. When omitted it defaults to 30 items. |?limit=10|
| start | string | The number of organizers to skip from the start of the result set. |?start=10|
| embed | true | Embed JSON-LD body in search results, default = false |?embed=true|

## Response

If successful, this method returns a `200` response code and a list of organizers matching the supplied criteria.

## Example

**request**

The following is an example of the request

```
GET https://io-test.uitdatabank.be/organizers/?name=STUK&embed=true
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
    "totalItems": 3,
    "member": [
        {
            "@id": "https://udb-silex-acc.uitdatabank.be/organizers/5023e3af-3fe1-45be-8a72-86ebe9ffa2fe",
            "@context": "/contexts/organizer",
            "name": "ZED - STUK",
            "addresses": [],
            "address": {
                "addressCountry": "BE",
                "addressLocality": "Leuven",
                "postalCode": "3000",
                "streetAddress": "Naamsestraat 96"
            },
            "labels": [
                "UiTinVlaanderen Filmlocatie"
            ],
            "contactPoint": {
                "phone": [
                    "016/320320",
                    "016/320308"
                ],
                "email": [
                    "info@cinemazed.be"
                ],
                "url": []
            },
            "hiddenLabels": [
                "UiTPAS Leuven"
            ]
        },
```
