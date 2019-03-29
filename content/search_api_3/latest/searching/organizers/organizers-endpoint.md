---
---

# Searching organizers

Organizers can be searched from the following endpoint:

```
GET https://search.uitdatabank.be/organizers/
```

A typical response from this endpoint looks like this:

```
{
    "@context": "http://www.w3.org/ns/hydra/context.jsonld",
    "@type": "PagedCollection",
    "itemsPerPage": 2,
    "totalItems": 11804,
    "member": [
      {
          "@id": "https://io.uitdatabank.be/organizers/75407E9F-FEDE-3812-96FE4AD45C003030",
          "@type": "Organizer"
      },
      {
          "@id": "https://io.uitdatabank.be/organizers/ffa0b66d-df7c-4648-8876-f233b65eb55e",
          "@type": "Organizer"
      }
  ]
}
```

This endpoint supports the following global features:

* [Pagination]({% link content/search_api_3/latest/getting-started/pagination.md %})
* [Embedding result bodies]({% link content/search_api_3/latest/getting-started/embedding-full-result-bodies.md %})
