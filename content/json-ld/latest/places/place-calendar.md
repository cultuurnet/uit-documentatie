---
---

# Update calendar

The calendar information for a place consists of
- calendarType 'permanent' with or without openingHours
- calendarType 'periodic' with or without openingHours


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

If successful, this method returns a `200` response code and a commandId in the response body.

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

The following is an example of the response.

```
200 OK

{
  "commandId": "a55486283a53a1e45041002c4887580f"
}
```

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
