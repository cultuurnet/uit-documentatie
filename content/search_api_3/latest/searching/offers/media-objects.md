---
---

# Media objects

Currently it's only possible to filter events and places by their number of media objects.

## Url parameter

You use the `hasMediaObjects` URL parameter to find all events and places that have at least one media object:

```
GET https://search.uitdatabank.be/offers/?hasMediaObjects=true
```

Or all events and places that have no media objects at all:

```
GET https://search.uitdatabank.be/offers/?hasMediaObjects=false
```

## Advanced queries

Using [advanced queries]({% link content/search_api_3/latest/reference/advanced-queries.md %}) and the `mediaObjectsCount` field, you can filter all events and places by the number of media objects they have.

For example, all events and places that have at least one media object:

```
GET https://search.uitdatabank.be/offers/?q=mediaObjectsCount:>=1
```

All events and places that have exactly one media object:

```
GET https://search.uitdatabank.be/offers/?q=mediaObjectsCount:1
```

All events and places that have less than 10 media objects:

```
GET https://search.uitdatabank.be/offers/?q=mediaObjectsCount:<10
```

All events and places that have 5 to 10 media objects:

```
GET https://search.uitdatabank.be/offers/?q=mediaObjectsCount:[5 TO 10]
```

For more info, see [advanced queries]({% link content/search_api_3/latest/reference/advanced-queries.md %}).

## Resize images

To enhance the performance of your agenda, we highly recommend to resize images when integrating with our search API. All about formatting and resizing images can be found in [this book](https://documentatie.uitdatabank.be/content/integreren-met-searchv3/latest/resizing-images.html)
