---
---

# Creator

You can search organizers by creator using two methods:

* URL parameter
* Advanced queries

At the moment of writing, `creator` can contain a UiTiD uuid with nickname or just a UiTiD uuid. In the near future `creator` will only contain the UiTiD uuid.

## Url parameter

You can filter by an exact match with the `creator` URL parameter.

```
GET https://search.uitdatabank.be/organizers/?creator=86a02c65-696d-4c16-a9b1-9e3bc8e6303c
```

## Advanced queries

Using the `q` parameter, you can execute more [advanced queries]({% link content/search_api_3/latest/reference/advanced-queries.md %}) than by using the `creator` URL parameter.

For example:

```
GET https://search.uitdatabank.be/organizers/?q=creator:janedoe OR creator:john*
```

For more info, see the [advanced queries documentation]({% link content/search_api_3/latest/reference/advanced-queries.md %}).
