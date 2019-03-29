---
---

# Id

You can search by id using two methods:

* URL parameter
* Advanced queries

This search is always done with an exact match.

It is possible to search by an offer id (event or place), and/or a related location id, and/or a related organizer id.

A specific Id can be found by extracting the UUID from the `@id` property in the JSON-LD projection:

**id**
```
"@id": "https://io.uitdatabank.be/event/75573a64-ddc8-4fd0-8b07-d258939dd74f"
"id": "75573a64-ddc8-4fd0-8b07-d258939dd74f"
```

**locationId**
```
"@id": "https://io.uitdatabank.be/place/a0368d10-ded0-4925-b94a-2835f73e255e"
"locationId": "a0368d10-ded0-4925-b94a-2835f73e255e"
```

**organizerId**
```
"@id": "https://io.uitdatabank.be/organizers/4fa5dddf-73d5-47f8-b54f-45d88cc1661a"
"organizerId": "4fa5dddf-73d5-47f8-b54f-45d88cc1661a"
```

## URL parameter

You can filter by an exact match using the `id`, `locationId` or `organizerId` URL parameter:

```
GET https://search.uitdatabank.be/offers/?id=f29d2182-2db0-4f99-831a-8e6a64c1c9c1
```
```
GET https://search.uitdatabank.be/offers/?locationId=b8bff8fa-988a-44db-8dd8-70bef77f3933
```
```
GET https://search.uitdatabank.be/offers/?organizerId=7d1f485d-dab5-4ad2-8894-322060a2bc52
```

Note that the locationId and organizerId parameters will return offer results, with a matching related location and/or organizer.

## Advanced queries

Using the `q` parameter, you can execute more [advanced queries]({% link content/search_api_3/latest/reference/advanced-queries.md %}) than by using the URL parameter.

For example:

```
GET https://search.uitdatabank.be/offers/?q=id:f29d2182-2db0-4f99-831a-8e6a64c1c9c1 OR location.id:b8bff8fa-988a-44db-8dd8-70bef77f3933 AND organizer.id:7d1f485d-dab5-4ad2-8894-322060a2bc52
```

For more info, see the [advanced queries documentation]({% link content/search_api_3/latest/reference/advanced-queries.md %}).
