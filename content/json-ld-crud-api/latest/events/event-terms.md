---
---

# Event - terms

* Must contain only 1 `id` for eventtype, can be combined with a theme id.
* Can contain `domain` and `label`, but only `id` will be validated
* See documentation for [eventTypes]({% link content/uitdatabank/latest/categorisatie/type_aanbod.md %}) and [event themes]({% link content/uitdatabank/latest/categorisatie/combinatie_type_thema.md %}) and [facilities]({% link content/uitdatabank/latest/categorisatie/voorzieningen.md %})

**Example 1**

```
"terms": [
  {
    "id": "0.50.4.0.0"
  },
  {
    "id": "1.8.2.0.0"
  }
]
```

**Example 2**

```
"terms": [
  {
    "domain": "eventtype",
    "id": "0.50.4.0.0",
    "label": "Concert"
  },
  {
    "domain": "theme",
    "id": "1.8.2.0.0",
    "label": "Jazz en blues"
  }
]
```
