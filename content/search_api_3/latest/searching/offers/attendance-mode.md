---
---

# Attendance mode

The attendance mode indicates whether an event takes places at a physical location, online or both. 

| Value | Meaning |
|--|--|
| `offline` | visitors can attend the event at a physical location | 
| `online` | visitor can only participate online | 
| `mixed` | it is possible to attend the event both on a physical location or online | 

You can filter by attendance mode using two methods:
* URL parameter
* Advanced queries

Note that places will always have the attendance mode "offline", only events can have a different attendance mode.

## URL parameter

Using the `attendanceMode` URL parameter, you can limit the results you get back to events with a certain attendance mode.
Example to get results that have the attendanceMode "online":

```
GET https://search.uitdatabank.be/offers/?attendanceMode=online
```

## Advanced queries

You can also search by status using [advanced queries](https://documentatie.uitdatabank.be/content/search_api_3/latest/reference/advanced-queries.md), 

Example to get results that have the attendanceMode `online` or `mixed`:

```
GET https://search.uitdatabank.be/offers/?q=attendanceMode:(online OR mixed)
```


