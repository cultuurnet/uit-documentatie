---
---

# Booking availability

The bookingAvailability indicates whether there are still tickets or seats left for an event or not. The following values for ‘bookingAvailability’ are applicable:

| Value | Meaning |
|--|--|
| `Available` | there are still tickets and / or seats available for the event | 
| `Unavailable` | the event is sold out or fully booked | 

You can filter by booking availability-related fields using two methods:
* URL parameter
* Advanced queries

## URL parameter

Using the `bookingAvailability` URL parameter, you can limit the results you get back to events with a certain bookingAvailability.
Example to get results that have the bookingAvailability `Available`:

```
GET https://search.uitdatabank.be/offers/?bookingAvailability=Available
```

If used on its own, it will filter on the top-level status of the events/places.

If used in combination with `dateFrom` and/or `dateTo` (see [date & time](https://documentatie.uitdatabank.be/content/search_api_3/latest/searching/offers/date.html)) it will combine the given availability with the given dateFrom and/or dateTo to query on subEvents, so you'll only get results that actually have the given bookingAvailability during the given date range.

Example to get results that have the bookingAvailability `Available` on the 5th of may 2022:

```
GET https://search.uitdatabank.be/offers/?bookingAvailability=Available&dateFrom=2022-01-04T23:59:59%2B02:00&dateTo=2022-01-05T23:59:59%2B02:00
```


## Advanced queries

You can also search by status using [advanced queries](https://documentatie.uitdatabank.be/content/search_api_3/latest/reference/advanced-queries.md), but with the downside that you cannot take into account the bookingAvailability of subEvents by using advanced query parameters.

Example to get results that have the bookingAvailability `Available`:

```
GET https://search.uitdatabank.be/offers/?q=bookingAvailability:Available
```


