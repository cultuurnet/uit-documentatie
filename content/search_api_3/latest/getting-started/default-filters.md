---
---

# Default filters

The search API applies a couple of filters by default to provide you with the most relevant results for most use cases:

* [**workflowStatus**]({% link content/search_api_3/latest/searching/offers/workflow-status.md %}): Only results with the status `APPROVED` or `READY_FOR_VALIDATION` will be returned by default.
* [**availability**]({% link content/search_api_3/latest/searching/offers/availability.md %}): Only results that are currently available will be returned by default.
* [**addressCountry**]({% link content/search_api_3/latest/searching/offers/address.md %}): Only results that are in Belgium are returned by default.
* [**audienceType**]({% link content/search_api_3/latest/searching/offers/audience-type.md %}): Only results that have an `audienceType` set to `everyone` are returned by default.

You can either reset these filters individually, or disable them all at once.

## Individually reset

[**Workflow status**]({% link content/search_api_3/latest/searching/offers/workflow-status.md %}):

```
GET https://search.uitdatabank.be/offers/?workflowStatus=*
```

[**Availability**]({% link content/search_api_3/latest/searching/offers/availability.md %}):

```
GET https://search.uitdatabank.be/offers/?availableFrom=*&availableTo=*
```

[**Country**]({% link content/search_api_3/latest/searching/offers/address.md %}):

```
GET https://search.uitdatabank.be/offers/?addressCountry=*
```

[**Audience type**]({% link content/search_api_3/latest/searching/offers/audience-type.md %}):

```
GET https://search.uitdatabank.be/offers/?audienceType=*
```

**Combined**:

```
GET https://search.uitdatabank.be/offers/?workflowStatus=*&availableFrom=*&availableTo=*&addressCountry=*&audienceType=*
```

## Disabling all filters at once

```
GET https://search.uitdatabank.be/offers/?disableDefaultFilters=true
```
