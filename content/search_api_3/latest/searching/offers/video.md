---
---

# Video

Currently it's only possible to filter events and places by the presence of video or not.


## Url parameter

You use the `hasVideos` URL parameter to find all events and places that have at least one video:

```
GET https://search.uitdatabank.be/offers/?hasVideos=true
```

Or all events and places that have no videos at all:

```
GET https://search.uitdatabank.be/offers/?hasVideos=false
```

## Advanced queries

Using [advanced queries]({% link content/search_api_3/latest/reference/advanced-queries.md %}) and the `videosCount` field, you can filter all events and places by the number of videos they have.

For example, all events and places that have at least one video:

```
GET https://search.uitdatabank.be/offers/?q=videosCount:>=1
```

All events and places that have exactly one video:

```
GET https://search.uitdatabank.be/offers/?q=videosCount:1
```

All events and places that have less than 10 videos:

```
GET https://search.uitdatabank.be/offers/?q=videosCount:<10
```

All events and places that have 5 to 10 videos

```
GET https://search.uitdatabank.be/offers/?q=videosCount:[5 TO 10]
```

For more info, see [advanced queries]({% link content/search_api_3/latest/reference/advanced-queries.md %}).

