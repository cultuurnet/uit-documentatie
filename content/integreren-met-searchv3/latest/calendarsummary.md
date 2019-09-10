---
---

# Calendar summary
## Context

The JSON body of each event contains a property _calendar summary_ This 
You can use the calendar summary to display the calendar information in your search results. For the detail page, we recommend to use the detailed calendarInfo you'll find in the json body of each event.
  
## Endpoints for calendar summary

We distinguish 3 types of calendar summary: small, medium and large. 

For every event, all 3 types are available. You can request the calendar summary for each event individually, by using the following base url, and by adding the calsum-parameter
```https://io.uitdatabank.be/events/{cdbid}/```

| Size | Description | Parameter | Example | 
| --- | --- | --- | --- | 
| Small | Shows date | calsum?format=sm | 21 feb | 
| Medium | Shows day, month and year | calsum?format=md | donderdag 21 februari 2019 |
| Large | Shows day, month, year, start and end time  | calsum?format=lg | donderdag 21 februari 2019 van 19:30 tot 23:00 |


Om de calendar summary ergens te tonen, zoals in de widgets, zou er toch steeds een request uitgevoerd moeten worden naar het endpoint, met de nodige parameters?

De calendarSummary in de json-ld projectie is deprecated en zou niet gebruikt mogen worden in zo'n integraties....
