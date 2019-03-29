---
---

# Workflow status

## Allowed values

A workflow status can be any of the following values \(case-insensitive\):

* `DRAFT`
* `READY_FOR_VALIDATION`
* `APPROVED`
* `REJECTED`
* `DELETED`

For more information about workflow status and UiTdatabank, see [Aanbod modereren]({% link content/uitdatabank/latest/werking-uitdatabank.md %}) **(in Dutch)**

**Important!** Documents with a `DRAFT` status are not considered to be "available" by default, because they have not been published yet. Therefore, to include `DRAFT` documents in your search results, you need to disable the default `availableFrom` and `availableTo` parameters like this:

```
GET https://search.uitdatabank.be/offers/?workflowStatus=DRAFT&availableFrom=*&availableTo=*
```

Or when using advanced queries:

```
GET https://search.uitdatabank.be/offers/?availableFrom=*&availableTo=*&q=workflowStatus:DRAFT
```

See [Availability]({% link content/search_api_3/latest/searching/offers/availability.md %}) for more info.

## URL parameter

You can filter by an exact match using the `workflowStatus` URL parameter:

```
GET https://search.uitdatabank.be/offers/?workflowStatus=DRAFT
```

Additionally, you can limit the results to documents that have either one of multiple `workflowStatus` values:

```
GET https://search.uitdatabank.be/offers/?workflowStatus=REJECTED,DELETED
```

Delimiting the `workflowStatus` parameter using a comma works as if using an `OR` operator.

If the `workflowStatus` parameter is not set explicitly, `READY_FOR_VALIDATION,APPROVED` is used as default.

You can disable the default `workflowStatus` filter by using a wildcard character:

```
GET https://search.uitdatabank.be/offers/?workflowStatus=*
```

## Advanced queries

Using the `q` parameter, you can execute more [advanced queries]({% link content/search_api_3/latest/reference/advanced-queries.md %}) than by using the `workflowStatus` URL parameter.

For example:

```
GET https://search.uitdatabank.be/offers/?q=workflowStatus:DRAFT OR workflowStatus:READY_FOR_VALIDATION
```

**Note that you still have to reset the default `workflowStatus` filter first.** Alternatively you can use the `disableDefaultFilters` parameter, as described in [Default filters]({% link content/search_api_3/latest/getting-started/default-filters.md %}).

For more info, see the [advanced queries documentation]({% link content/search_api_3/latest/reference/advanced-queries.md %}).
