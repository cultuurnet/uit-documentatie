---
---

# Pagination

Every search endpoint supports pagination using two url parameters:

* `start` : The number of results to skip \(`int`, defaults to 0\)
* `limit`: The number of results to return in a single page \(`int`, defaults to 30\)

For example, when [searching events & places]({% link content/search_api_3/latest/searching/offers/offers-endpoint.md %}):

```
GET https://search.uitdatabank.be/offers/?start=10&limit=5
```

```js
{
  "@context": "http://www.w3.org/ns/hydra/context.jsonld",
  "@type": "PagedCollection",
  "itemsPerPage": 5,
  "totalItems": 12,
  "member": [
    {
      "@id": "https://io.uitdatabank.be/event/441a5831-a65e-44fa-81ef-5c47e9c57a05",
      "@type": "Place"
    },
    {
      "@id": "https://io.uitdatabank.be/event/d8cac5d6-c2b5-4c8d-b730-d9801a920c89",
      "@type": "Event"
    }
  ]
}
```

Because we skipped the first 10 results, and we only have a total of 12 results, we only get the last 2 one in this particular request.

Note that the response also includes the limit included in the request, as `itemsPerPage`. This is because the API might decide to return fewer results if the specified limit is too high. Because of this, you should never assume that the specified limit will also be respected and you should always check `itemsPerPage`.

If you do not specify a limit, a default value will be used and included in `itemsPerPage`.

Important: pagination will only work for a limited result set. At the moment, the max limit for `start` is set to `10.000`, the limit for `itemsPerPage` is set to `2000`. This has the following implications:

**max start**
```
start=0&limit=2000: succeeds
start=2000&limit=2000: succeeds
start=4000&limit=2000: succeeds
start=6000&limit=2000: succeeds
start=8000&limit=2000: succeeds
start=10000&limit=2000: FAILS
start=12000&limit=2000: FAILS
start=14000&limit=2000: FAILS
start=16000&limit=2000: FAILS
....
start=36000&limit=2000: FAILS
```

**max itemsPerPage**
```
start=0&limit=2001: FAILS
start=0&limit=20000: FAILS
```
