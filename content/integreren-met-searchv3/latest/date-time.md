---
---

# Date & time

Date and time in the UiTdatabank JSON API are saved according to the ISO-8601 standard, with timezone offset, for example:

```
calendarType: "single",
startDate: "2020-04-25T13:00:00+00:00",
endDate: "2020-04-25T15:00:00+00:00",
subEvent: [
{
@type: "Event",
startDate: "2020-04-25T13:00:00+00:00",
endDate: "2020-04-25T15:00:00+00:00"
}
]
```

In order to avoid misinterpretation of date and time and display the correct time of the event along the frontend, you should take into account the timezone.

## Timezones in Belgium

Belgium time is in the Central European Time Zone (CET) during autumn and winter, which is 1 hour ahead of the Greenwich Mean Time (GMT). In spring and summer Belgium is in the Central European Summer Time Zone, which is 2 hours ahead of the Greenwich Mean Time zone.

| Offset | Timezone | Seasons | 
| --- | --- | --- | 
| UTC+1 | Central European Time (CET) | autumn, winter | 
| UTC+2 | Central European Summer Time (CEST) | spring, summer | 

The exact start and end date of the timezones can vary. For actual information about these dates we advice to check the [world clock information](https://www.timeanddate.com/time/dst/events.html) or you can use the [calendar summary of UiTdatabank](https://documentatie.uitdatabank.be/content/integreren-met-searchv3/latest/calendarsummary.html).
