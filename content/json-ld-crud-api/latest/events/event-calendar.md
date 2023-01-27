---
---

# Event - calendar

## calendarType

Possible values: `single`, `multiple`, `periodic`, `permanent`.
* `single`: must be combined with `startDate` and `endDate`, can contain 1 `subEvent`
* `multiple`: must be combined with `startDate`, `endDate` and at least 2 `subEvent`s
* `periodic`: must be combined with `startDate`, `endDate`, can contain `openingHours`
* `permanent`: can contain `openingHours` (this calendarType is not preferred for events, use offertype `place` instead)

**Guidelines for using the correct calendarType:**

| calendarType | when to use | events | places |
| -- | -- | -- | -- |
| `single` | for events that take place at one single day (f.e. a concert of Radiohead) and events with only one start and enddate (f.e. camping from monday until sunday) | x |  |
| `multiple` | for events that take place on several occasions, whether or not contiguous (f.e. a festival) | x |  |
| `periodic`  | for offers that take places on recurring moments (f.e. a course watercolor painting, each wednesday evening | x | x |
| `permanent`  | for places you can visit permanently (f.e. de Grote Markt in Brussels) |  | x |

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

## Including the status in your request

The `status` (if applicable) should always be included in the request payload. Otherwise the status of the (sub)Event will be reverted to `Available` ([more info](https://documentatie.uitdatabank.be/content/json-ld-crud-api/latest/events/event-status.html))
