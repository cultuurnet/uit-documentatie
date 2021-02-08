---
---

# Event - status

The status indicates whether an event takes place as planned, has been postponed or cancelled. The following values for 'status' are applicable:
* `available`: the event takes place as planned. This is the default value when no status for the event or subEvent is included.
* `temporarilyUnavailable`: the event has been postponed to a later date yet to be determined.
* `unavailable`: the event has been cancelled.

Optionally, a reason for the new status can be added. 

When the status is set back to `available`, the reasons (if present) will be automatically removed.

It is possible to set the status on top event level or on subEvent level:
* **top event level**: for the whole event and all its subEvents (occurences). All subEvents will inherit the status from the top event level
* **subEvent level**: for a one or multiple subEvent(s). The status on top event level will automtically be derived from the (different) statusses on subEvent level.

## Set status on top event level

It is possible to set the status on top event level for all calendarTypes: `single`, `multiple`, `permanent`, `periodic`. If the event has subEvents, all subEvents of the event will inherit the status (and reason) from the top event level.

**Example**

```
"status":{
   "type":"Unavailable",
   "reason":{
      "nl":"Het concert van 01/04 is afgelast",
      "fr":"Le concert de 01/04 a été annulé"
   }
}
```

## Set status on subEvent level

For calendarTypes `single` and `multiple` it is also possible to set the status on subEvent level.
The status on top event level will be derived from the statusses on the subEvent level.

When UiTdatabank calculates the status for the top event level, the following logic is being applied:

| status subEvents | Derived status on top event level |
| ------------- | ---------------- | 
| All available | available | 
| All unavailable | unavailable | 
| All temporarilyUnavailable | temporarilyUnavailable | 
| Mixed, but one or more available | available | 
| Mixed, but one or more temporarilyUnavailable | temporarilyUnavailable | 

**Example 1**

Event with calendarType `single` (containing one subEvent)

```
"subEvent":[
   {
      "@type":"Event",
      "endDate":"2022-04-01T22:00:00+01:00",
      "startDate":"2022-04-01T20:00:00+01:00",
      "status":{
         "type":"TemporarilyUnavailable",
         "reason":{
            "nl":"Door ziekte van de zanger is het concert van 01/04 uitgesteld. We zoeken samen met de band naar een nieuwe datum",
            "en":"The concert on 01/04 has been postponed due to illness of the lead vocalist. We are looking for a new date together with the band"
         }
      }
   }
]
```
For events with calendarType `single`, the derived status and reason (if applicable) for the top event will always be equal to the status (and reason) of the subEvent. Thus, in the example above the derived status for the top event will become `TemporarilyUnavailable`

**Example 2**

Event with calendarType `multiple` (containing 3 subEvents)

```
"subEvent":[
   {
      "@type":"Event",
      "endDate":"2022-04-01T22:00:00+01:00",
      "startDate":"2022-04-01T20:00:00+01:00",
      "status":{
         "type":"Unavailable",
         "reason":{
            "nl":"Door ziekte van de zanger is het concert van 01/04 geannuleerd. We zoeken samen met de band naar een nieuwe datum",
            "en":"The concert on 01/04 has been canceled due to illness of the lead vocalist. We are looking for a new date together with the band"
         }
      }
   },
   {
      "@type":"Event",
      "endDate":"2022-04-02T22:00:00+01:00",
      "startDate":"2022-04-02T20:00:00+01:00",
      "status":{
         "type":"Unavailable",
         "reason":{
            "nl":"Door ziekte van de zanger is het concert van 02/04 geannuleerd. We zoeken samen met de band naar een nieuwe datum",
            "en":"The concert on 02/04 has been canceled due to illness of the lead vocalist. We are looking for a new date together with the band"
         }
      }
   },
   {
      "@type":"Event",
      "endDate":"2022-04-03T22:00:00+01:00",
      "startDate":"2022-04-03T20:00:00+01:00",
      "status":{
         "type":"Unavailable",
         "reason":{
            "nl":"Door ziekte van de zanger is het concert van 03/04 geannuleerd. We zoeken samen met de band naar een nieuwe datum",
            "en":"The concert on 03/04 has been canceled due to illness of the lead vocalist. We are looking for a new date together with the band"
         }
      }
   }
]
```
Since all 3 subEvents have the status `Unavailable`, the derived status for the top event will become `Unavailable` too. For the top event, no reason will be derived.
