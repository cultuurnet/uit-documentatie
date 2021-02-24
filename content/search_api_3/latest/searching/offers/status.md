---
---

# Status

The status indicates whether an offer is still available for visits or not. The following values for ‘status’ are applicable:

| Value | Meaning (events) | Meaning (places |
|--|--|--|
| `Available` | the event takes place as planned | the place is ‘open’ and can be visited during opening hours | 
| `TemporarilyUnavailable` | the event has been postponed to a later date yet to be determined | the place is temporarily closed (due to renovations for example) | 
| `Unavailable` | the event has been cancelled | the place still exists (physically), but is permanently close | 

You can filter by address-related fields using two methods:
* URL parameter
* Advanced queries

## URL parameter

Using the `status` URL parameter, you can limit the results you get back to events with a certain status.
Example to get results that have the status `Available`:

```
GET https://search.uitdatabank.be/offers/?status=Available
```

Additionally, you can limit the results to documents that have either one of multiple status values.
Example to get results that have the status `Unavailable` or `TemporarilyUnavailable`:

```
GET https://search.uitdatabank.be/offers/?status=Unavailable,TemporarilyUnavailable
```

If used on its own, it will filter on the top-level status of the events/places.

If used in combination with `dateFrom` and/or `dateTo` (see [date & time](https://documentatie.uitdatabank.be/content/search_api_3/latest/searching/offers/date.html)) it will combine the given status(es) with the given dateFrom and/or dateTo to query on subEvents, so you'll only get results that actually have the given status(es) during the given date range.

Example to get results that have the status `Available` on the 5th of may 2022:

```
GET https://search.uitdatabank.be/offers/?status=Available&dateFrom=2022-01-04T23:59:59%2B02:00&dateTo=2022-01-05T23:59:59%2B02:00
```


## Advanced queries

You can also search by status using [advanced queries](https://documentatie.uitdatabank.be/content/search_api_3/latest/reference/advanced-queries.md), but with the downside that you cannot take into account the status of subEvents by using advanced query parameters.

Example to get results that have the status `Available`:

```
GET https://search.uitdatabank.be/offers/?q=status:Available
```

Example to get results that have the status `Unavailable` OR `TemporarilyUnavailable`:

```
GET https://search.uitdatabank.be/offers/?q=status:(Available OR TemporarilyUnavailable)
```

