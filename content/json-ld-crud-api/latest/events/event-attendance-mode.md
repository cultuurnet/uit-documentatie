---
---

# Attendance mode

Indicates if an event is happening online, offline, or both (mixed):

* `offline`: the event takes places on a real location
* `online`: the events takes places on a virtual location
* `mixed`: the event takes places both on a real location and a virtual location

**example**
```
"attendanceMode": "mixed"
```

When the attendance mode is not set, UiTdatabank will assume the event has the attendance mode `offline`.

Also note that when changing from attendance mode online to either `offline` or `mixed` it is required to include the location property with the URI of the (physical) location that the event is taking place at.

For events with attendance mode `mixed` or `online` it can be useful to add an [online url]({% link content/json-ld/latest/events/event-online-url.md %})

