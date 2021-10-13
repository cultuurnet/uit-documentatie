---
---

# Video

Currently it's only possible to filter events and places by the presence of video or not.


## Advanced queries

Using [advanced queries]({% link content/search_api_3/latest/reference/advanced-queries.md %}) and the `_exists_` parameter, you can filter all events and places by the presence or absence of video.

For example, all events and places that have at least one video:

```
GET https://search.uitdatabank.be/offers/?q=_exists_:videos
```


