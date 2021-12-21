---
---

# Update calendar

The calendar information for a place consists of
- calendarType 'permanent' with or without openingHours
- calendarType 'periodic' with or without openingHours

Note that the `status` (if applicable) should always be included in the request payload. Otherwise the status of place will be reverted to `Available` ([more info](#including-the-status-in-your-request))

## HTTP request

```
PUT /places/{placeId}/calendar
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
| placeId	| uuid | unique identifier for a place | d595414a-13e0-4dd2-b4bd-706598427351 |

## Request body

| Property	| Type | Description | Example |
|--|--|--|--|
| calendarType | string | periodic or permanent | permanent |
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

**request**

The following is an example of the request

```
PUT https://io-test.uitdatabank.be/places/18717eeb-4ff0-4de5-afa8-5170b58e335d/calendar
Content-Type: application/json
Authorization: Bearer {token}
X-Api-Key: {apiKey}

{
  "calendarType": "permanent",
  "openingHours": [
    {
      "dayOfWeek": [
        "monday",
        "wednesday",
        "friday"
      ],
      "opens": "14:30",
      "closes": "17:00"
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
    "title": "No route found for \"POST /places/6e46cf33-dd9b-4bf9-9c32-259eab5b6cbd/calendar\": Method Not Allowed (Allow: PUT, OPTIONS)",
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
    "title": "User with id: 12345678-abcd-1234-12ab-123abc123abc has no permission: \"Aanbod bewerken\" on item: 12345678-abcd-1234-12ab-123abc123abc when executing command: CultuurNet\\UDB3\\Place\\Commands\\UpdateCalendar",
    "type": "about:blank",
    "status": 401
}
```

## Including the status in your request
Places can have a 'status'. status indicates whether a place is open (for visits for example), temporarily closed or permanently closed. The following values for ‘status’ are applicable:
* `available`: the place is ‘open’ and can be visited during opening hours. This is the default value when no status for the place is included.
* `temporarilyUnavailable`: the place is temporarily closed (due to renovations for example).
* `unavailable`: the place still exists (physically), but is permanently closed.

**Important notes** 
* When updating the calendarInfo without including the status of the place in your request, UiTdatabank will assume that the status of the place is `Available`. 
* If a place has a status other than `Available`, you have to pass the status (`Unavailable` | `TemporarilyUnavailable`) for that place in your request when updating the calendarInfo (see [status](https://documentatie.uitdatabank.be/content/json-ld/latest/events/event-status.html)).



## Definitions

### calendarType

calendarType 'permanent' and 'periodic' can be used for offertype 'place', but 'permanent' is preferred.


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

startDate is required for calendarType `periodic`
startDate signifies the first occurence of the offer

```
  "startDate": "2015-05-07T14:30:00+00:00"
```

### endDate

endDate is required for calendarType `periodic`
endDate signifies the last occurence of the offer

```
  "endDate": "2015-05-07T14:30:00+00:00"
```
