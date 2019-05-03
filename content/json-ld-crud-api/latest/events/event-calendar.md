---
---

# Event - calendar

## calendarType

1. Possible values: `single`, `multiple`, `periodic`, `permanent`.
* `single`: must be combined with `startDate` and `endDate`, can contain 1 `subEvent`
* `multiple`: must be combined with `startDate`, `endDate` and at least 2 `subEvent`s
* `periodic`: must be combined with `startDate`, `endDate`, can contain `openingHours`
* `permanent`: can contain `openingHours` (this calendarType is not preferred for events, use offertype `place` instead)

**Example**

```
"calendarType": "multiple"
```

## startDate

* Must be a valid ISO-8601 datetime formed as `YYYY-MM-DDThh:mm:ss+00:00`
* must be smaller than or equal to `endDate`
* Only to be used in combination with calendarType `single`, `multiple`, `periodic`

**Example**

```
"startDate": "2018-04-01T14:45:00+01:00"
```

## endDate

* Must be a valid ISO-8601 datetime formed as `YYYY-MM-DDThh:mm:ss+00:00`
* must be greater than or equal to `startDate`
* Only to be used in combination with calendarType `single`, `multiple`, `periodic`

**Example**

```
"endDate": "2018-06-30T18:45:00+01:00"
```

## subEvent

* Only used in combination with calendarType `single` and `multiple`.
* Mandatory when calendarType `multiple` is chosen.

**Example**

```
"subEvent": [
  {
    "@type": "Event",
    "startDate": "2018-04-01T14:45:00+01:00",
    "endDate": "2018-04-01T18:45:00+01:00"
  },
  {
    "@type": "Event",
    "startDate": "2018-05-01T14:45:00+01:00",
    "endDate": "2018-05-01T18:45:00+01:00"
  },
  {
    "@type": "Event",
    "startDate": "2018-06-01T14:45:00+01:00",
    "endDate": "2018-06-01T18:45:00+01:00"
  }
]
```

## openingHours

* only to be used in combination with calendarType `periodic` or `permanent`

**Example**

```
"openingHours": [
  {
    "opens": "10:00",
    "closes": "16:30",
    "dayOfWeek": [
      "monday",
      "saturday",
      "sunday"
      ]
  }
]
```
