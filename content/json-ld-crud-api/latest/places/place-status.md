---
---

# Place - status

---
---

The status indicates whether a place is open (for visits for example), temporarily closed or permanently closed. The following values for 'status' are applicable:
* `available`: the place is 'open' and can be visited during opening hours. This is the default value when no status for the place is included.
* `temporarilyUnavailable`: the place is temporarily closed (due to renovations for example).
* `unavailable`: the place still exists (physically), but is permanently closed.

Optionally, a reason for the new status can be added. 

When the status is set back to `available`, the reasons (if present) will be automatically removed.

**Example**

```
"status":{
   "type":"Unavailable",
   "reason":{
      "nl":"Dadipark is sinds 2002 permanent gesloten"
   }
}
```
      
