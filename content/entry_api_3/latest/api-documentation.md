---
---

# API documentation

UiTdatabank provides 2 Entry API's that can be used for specific cases and are interchangeable: you can create an offer with the JSON-LD CRUD API and update a specific property of this offer with the JSON-LD API.

## JSON-LD API

With the JSON-LD API you can mimick the entry form on uitdatabank.be to create and update an offer. With this API it is  possible to update specific properties from existing offers, like adding a French translation for the `description` of an event or adding a label to a place.

**Specifics**
* Create an offer with only the mandatory properties (what, where, when...)
* Incrementally update specific properties of an offer
* Publish your event by updating the workflowstatus from "draft" to "ready for validation"

**Steps necessary to create and publish an offer via JSON-LD API**
* Step 1: Create event (`POST /events/`)
* Step 2: Update event (`PUT /events/{eventid}/contactPoint`, `PUT /events/{eventid}/description`...)
* Step 3: Publish event (`PATCH /event/{eventid}`)

**Documentation**

> [Find the latest version of the JSON-LD API documentation here]({% link content/json-ld/latest/start.md %})!


## JSON-LD CRUD API

With the JSON-LD CRUD API you create a JSON-LD document for an entire offer and send it as a whole to UiTdatabank, instead of sending updates for every property.

Offers created via the JSON-LD CRUD API are instantly published with workflowstatus "Ready for validation", so you don't have to manually publish each event like with the JSON-LD API. Specific trusted partners can get the permission to import events with workflowstatus "Approved", thus bypassing the validation by UiTdatabank admins.

**Only one step necessary to create and publish an offer via CRUD API**
* Create event (`POST /imports/events/`)

**Documentation**

> [Read the latest version of the JSON-LD CRUD API documentation here]({% link content/json-ld-crud-api/latest/start.md %})!
