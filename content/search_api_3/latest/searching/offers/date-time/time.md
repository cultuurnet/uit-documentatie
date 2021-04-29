---
---

# Time

With the localtime parameters it is possible to filter out events that are happening on a specific part of the day, regardless of the day or date of the event. Typically this parameter is used to filter out events that are happening:
* in the morning
* in the afternoon
* in the evening
* at night

However, these parts of the day are not pre-defined. Using a integer between 0 and 2359 you can define the timeRange yourself.

## URL parameters

To search on the localtime, you can use one of the following parameters, or both

* `localTimeFrom`: Integer between 0 and 2359
* `localTimeTo`: Integer between 0 and 2359, higher than localTimeFrom

Both parameters can be used together or separately.

**Note that the “+” sign should be encoded for URLs (as %2B)**. Otherwise it will be interpreted as whitespace and the given date time will be considered invalid

**Examples**

Get all events that take place in the morning:

```
From: 06:00
To: 11:59
GET https://search.uitdatabank.be/offers/?localTimeFrom=0600&localTimeTo=1159
```

Get all events that take place in the afternoon:

```
From: 12:00
To: 16:59
GET https://search.uitdatabank.be/offers/?localTimeFrom=1200&localTimeTo=1659
```

Get all events that take place in the evening:

```
From: 17:00
To: 23:59
GET https://search.uitdatabank.be/offers/?localTimeFrom=1700&localTimeTo=2259
```

Get all events that take place at night:

```
From: 00:00
To: 05:59
GET https://search.uitdatabank.be/offers/?localTimeFrom=0000&localTimeTo=0559
```


## Advanced queries

In the q parameter you can use localTimeRange, with integer values between 0 and 2359.

* `localTimeRange`: Integer values between 0 and 2359


**Examples**

Get all events that take place in the morning:

```
From: 06:00
To: 11:59
GET https://search.uitdatabank.be/offers/?q=localTimeRange:[0600%20TO%201159]
```

Get all events that take place in the afternoon:

```
From: 12:00
To: 16:59
GET https://search.uitdatabank.be/offers/?q=localTimeRange:[1200%20TO%201659]
```

Get all events that take place in the evening:

```
From: 17:00
To: 23:59
GET https://search.uitdatabank.be/offers/?q=localTimeRange:[1700%20TO%202359]
```

Get all events that take place at night:

```
From: 00:00
To: 05:59
GET https://search.uitdatabank.be/offers/?q=localTimeRange:[0000%20TO%200559]
```

## Combining the localTime parameters with other parameters
If you use the localTime parameter without `dateFrom`, `dateTo` and/or `status` the localTime parameter will match with every event that has at least one subEvent that matches (or any single / periodic / permanent event that matches)

However, it can be useful to combine the localTime parameters with other parameters, like `dateFrom`, `dateTo` and/or `status`. When combining localTime with other parameters, we strongly advise to use the URL parameters, since combiningthe q parameters might give false positives.

If you combine them with dateFrom and/or dateTo and/or status, it will only match if the event has a subEvent with that combination (for single / periodic / permanent)

**examples**

Get all events that take place in the morning and they place as planned

```
GET https://search.uitdatabank.be/offers/?localTimeFrom=0559&localTimeTo=1159&status=Available
```

Get all events that take place the first of may, in the evening:

```
GET https://search.uitdatabank.be/offers/?dateFrom=2021-05-01T00:00:00%2B02:00&dateTo=2021-05-01T23:59:59%2B02:00&localTimeFrom=1759&localTimeTo=2359
```


