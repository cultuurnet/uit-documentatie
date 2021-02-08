---
---

# Update Calendar info

The calendar information for an event consists of:
- a combination 'calendarType + openingHours' OR 'calendarType + timestamps'
- a startDate and endDate

## HTTP request

```
PUT /events/{eventId}/calendar
```

## Request headers

| Header        | Value            | Required? |
| ------------- | ---------------- | --------- |
| Authorization | Bearer {token}   | true      |
| X-Api-Key     | {apiKey}         | true      |
| Content-Type  | application/json | false     |


## Resource properties

| Property	| Type | Description | Example |
|--|--|--|--|
| eventId	| uuid | unique identifier for an event | d595414a-13e0-4dd2-b4bd-706598427351 |


## Request body

| Property	| Type | Description | Example |
|--|--|--|--|
| calendarType | string | single, multiple, periodic | multiple |
| timeSpans | object | object containing an array of timespans | |
| start | date-time | the starttime for a timespan | 2015-05-07T12:02:53+00:00 |
| end | date-time | the endtime for a timespan | 2015-05-07T12:02:53+00:00 |
| startDate | date-time | the starttime of the first timespan | 2015-05-07T12:02:53+00:00 |
| endDate | date-time | the endtime of the last timespan | 2015-05-07T12:02:53+00:00 |
| openingHours | object | object containing an array of weekdays with matching opening hours |  |
| dayOfWeek | array | array of weekdays | monday |
| opens | time | opening time | 09:00 |
| closes | time | closing time | 17:30 |

## Response

* `204 No Content` : request successful
* `400 Bad Request` : incorrect method, payload or URI
* `401 Unauthorized` : expired JWT or the user behind the JWT does not have permission to perform this request


## Example

**request for calendarType single**

The following is an example of the request

```
PUT https://io-test.uitdatabank.be/events/03116768-1abc-405a-93d7-ba6ede52fe09/calendar
Content-Type: application/json
Authorization: Bearer {token}
X-Api-Key: {apiKey}

{
"calendarType": "single",
 "timeSpans": [
    {
      "start": "2015-05-07T12:02:53+00:00",
      "end": "2015-05-07T14:02:53+00:00"
    }
  ]
}
```

**request for calendarType multiple**

The following is an example of the request

```
PUT https://io-test.uitdatabank.be/events/03116768-1abc-405a-93d7-ba6ede52fe09/calendar
Content-Type: application/json
Authorization: Bearer {token}
X-Api-Key: {apiKey}

{
"calendarType": "multiple",
 "timeSpans": [
    {
      "start": "2015-05-07T12:02:53+00:00",
      "end": "2015-05-07T14:02:53+00:00"
    },
    {
      "start": "2015-05-08T12:02:53+00:00",
      "end": "2015-05-08T14:02:53+00:00"
    },
    {
      "start": "2015-05-09T12:02:53+00:00",
      "end": "2015-05-09T14:02:53+00:00"
    }
  ]
}
```

**request for calendarType periodic**

The following is an example of the request

```
PUT https://io-test.uitdatabank.be/events/03116768-1abc-405a-93d7-ba6ede52fe09/calendar
Content-Type: application/json
Authorization: Bearer {token}
X-Api-Key: {apiKey}

{
  "calendarType": "periodic",
  "startDate": "2019-05-01T00:00:00+00:00",
  "endDate": "2019-09-01T23:59:00+00:00",
  "openingHours": [
    {
      "opens": "10:00",
      "closes": "16:00",
      "dayOfWeek": [
        "monday",
        "tuesday",
        "wednesday"
      ]
    },
    {
      "dayOfWeek": [
        "thursday",
        "friday",
        "saturday"
      ],
      "opens": "09:00",
      "closes": "20:00"
    }
  ]
}
```

**Response**

The following are example responses.

```
204 No Content
```

```
400 Bad Request

{
    "title": "No route found for \"POST /events/6e46cf33-dd9b-4bf9-9c32-259eab5b6cbd/calendar\": Method Not Allowed (Allow: PUT, OPTIONS)",
    "type": "about:blank",
    "status": 400
}
```

```
401 Unauthorized

Token claims validation failed. This most likely means the token is expired.
```

```
401 Unauthorized

{
    "title": "User with id: 12345678-abcd-1234-12ab-123abc123abc has no permission: \"Aanbod bewerken\" on item: 12345678-abcd-1234-12ab-123abc123abc when executing command: CultuurNet\\UDB3\\Event\\Commands\\UpdateCalendar",
    "type": "about:blank",
    "status": 401
}
```

## Definitions

### calendarType

An event can have one of the following calendarTypes:
- single: one timestamp
- multiple: multiple timestamps
- periodic: a period with startdate and enddate
- permanent (! we highly recommend not to use this calendarType for events, but use periodic instead)

```
  "calendarType": "periodic"
```

### timeSpans

timeSpans can be combined with calendarTypes 'single' and 'multiple'.
One timeSpan consists of a start and end date-time

```
"timeSpans": [
    {
      "start": "2019-05-07T10:00:00+00:00",
      "end": "2019-05-07T16:30:00+00:00"
    },
    {
      "start": "2019-05-08T10:00:00+00:00",
      "end": "2019-05-08T16:30:00+00:00"
    }
  ]
```


### openingHours

openingHours can be combined with calendarTypes 'periodic' and 'permanent'
openingHours contain an array of weekdays with matching opening hours and closing hours

```
    "openingHours": [
      {
        "opens": "10:00",
        "closes": "16:00",
        "dayOfWeek": [
          "monday",
          "tuesday",
          "wednesday"
        ]
      },
      {
        "dayOfWeek": [
          "thursday",
          "friday",
          "saturday"
        ],
        "opens": "09:00",
        "closes": "20:00"
      }
    ]
```

### startDate
startDate is optional for calendarType `single` and `multiple` : it will be added automatically by the API
startDate is required for calendarType `periodic`

startDate signifies the first occurence of the event

```
  "startDate": "2015-05-07T14:30:00+00:00"
```

### endDate
endDate is optional for calendarType `single` and `multiple` : it will be added automatically by the API
endDate is required for calendarType `periodic`

endDate signifies the last occurence of the event

```
  "endDate": "2015-05-07T14:30:00+00:00"
```
