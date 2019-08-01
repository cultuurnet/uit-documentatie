---
---

# Creator

You can search by creator using two methods:

* URL parameter
* Advanced queries

At the moment of writing, `creator` can contain a nickname or emailaddress, depending on the source of the offer: UiTdatabank v2 or UiTdatabank v3. In the near future `creator` will only contain the UiTiD uuid.

## Url parameter

You can filter by an exact match with the `creator`  URL parameter.

```
GET https://search.uitdatabank.be/offers/?creator=86a02c65-696d-5b12-a9b1-9e3bc8e6303c
```

## Advanced queries

Using the `q` parameter, you can execute more [advanced queries]({% link content/search_api_3/latest/reference/advanced-queries.md %}) than by using the `creator` URL parameter.

For example:

```
GET https://search.uitdatabank.be/offers/?q=creator:86a02c65-696d-5b12-a9b1-9e3bc8e6303c OR creator:86a02c65-696d-5b12-a9b1-9*
```

For more info, see the [advanced queries documentation]({% link content/search_api_3/latest/reference/advanced-queries.md %}).
