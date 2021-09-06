---
---

# Event - bookingAvailability

The bookingAvailability indicates whether there are still tickets or seats available for an event. The following values for 'bookingAvailability' are applicable:
* `available`: there are still tickets or seats left for the event, or the capacity for the event is unlimited.
* `unavailable`: the event is sold out or fully booked.

It is possible to set the bookingAvailability on top event level or on subEvent level:
* **top event level**: for the whole event and all its subEvents (occurences). All subEvents will inherit the bookingAvailability from the top event level
* **subEvent level**: for a one or multiple subEvent(s). The bookingAvailability on top event level will automtically be derived from the (different) bookingAvailability values on subEvent level.

## Scope

It is possible to set a bookingAvailability for the calendarTypes `single`or `multiple`. 
It is **not** possible to set a bookingAvailability for events with calendarType `permanent` or `periodic`. 

## Set status on top event level

When set on top level, all subEvents of the event will inherit the bookingAvailability from the top event level.

**Example**

```
"bookingAvailability":{
   "type":"Unavailable"
   }
```

## Set status on subEvent level

When set on subEvent level, the bookingAvailability on top event level will be derived from the bookingAvailability values on the subEvent level.

When UiTdatabank calculates the bookingAvailability for the top event level, the following logic is being applied:

| bookingAvailability subEvents | Derived bookingAvailability on top event level |
| ------------- | ---------------- | 
| All available | available | 
| All unavailable | unavailable | 
| Mixed | available | 


**Example 1**

Event with calendarType `single` (containing one subEvent)

```
"subEvent":[
   {
      "@type":"Event",
      "endDate":"2022-04-01T22:00:00+01:00",
      "startDate":"2022-04-01T20:00:00+01:00",
      "bookingAvailability":{
         "type":"Unavailable"
      }
   }
]
```
For events with calendarType `single`, the derived bookingAvailability for the top event will always be equal to the bookingAvailability of the subEvent. Thus, in the example above the derived bookingAvailability for the top event will become `Unavailable`

**Example 2**

Event with calendarType `multiple` (containing 3 subEvents)

```
"subEvent":[
   {
      "@type":"Event",
      "endDate":"2022-04-01T22:00:00+01:00",
      "startDate":"2022-04-01T20:00:00+01:00",
      "bookingAvailability":{
         "type":"Unavailable"
      }
   },
   {
      "@type":"Event",
      "endDate":"2022-04-02T22:00:00+01:00",
      "startDate":"2022-04-02T20:00:00+01:00",
      "bookingAvailability":{
         "type":"Unavailable"
      }
   },
   {
      "@type":"Event",
      "endDate":"2022-04-03T22:00:00+01:00",
      "startDate":"2022-04-03T20:00:00+01:00",
      "bookingAvailability":{
         "type":"Unavailable"
      }
   }
]
```
Since all 3 subEvents have the bookingAvailability `Unavailable`, the derived bookingAvailability for the top event will become `Unavailable` too.
