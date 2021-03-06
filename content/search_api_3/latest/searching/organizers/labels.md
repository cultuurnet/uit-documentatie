---
---

# Labels

You can search organizers by label\(s\) using two methods:

* URL parameter
* Advanced queries

## Url parameter

You can filter by one or more labels using the `labels` URL parameter.

```
GET https://search.uitdatabank.be/organizers/?labels[]=uitpas&labels[]=paspartoe
```

You will only get results with complete matches. An event with for example the label `UiTPAS Leuven` will not be returned by the query above. Wildcards are not supported using the URL parameter!

Note that this method always uses the `AND` operator.

## Advanced queries

Using the `q` parameter, you can execute more [advanced queries]({% link content/search_api_3/latest/reference/advanced-queries.md %}) than by using the `labels` URL parameter.

For example:

```
GET https://search.uitdatabank.be/organizers/?q=labels:uitpas* OR labels:paspartoe
```

Searching by labels in advanced queries still looks for complete matches, but contrary to the `labels` URL parameter, wildcards are supported.

When searching for labels with spaces, be sure to encapsulate the label in quotation marks:

```
GET https://search.uitdatabank.be/organizers/?q=labels:"uitpas leuven" OR labels:paspartoe
```

For more info, see the [advanced queries documentation]({% link content/search_api_3/latest/reference/advanced-queries.md %}).
