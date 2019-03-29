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
GET https://search.uitdatabank.be/offers/?creator=janedoe
```

## Advanced queries

Using the `q` parameter, you can execute more [advanced queries]({% link content/search_api_3/latest/reference/advanced-queries.md %}) than by using the `creator` URL parameter.

For example:

```
GET https://search.uitdatabank.be/offers/?q=creator:janedoe OR creator:john*
```

For more info, see the [advanced queries documentation]({% link content/search_api_3/latest/reference/advanced-queries.md %}).
