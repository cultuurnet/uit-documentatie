---
---
# UiTPAS
In order to have your event automatically recognized and registered as an UiTPAS-event, a number of additional fields are required:
- Organizer
- Price

Also make sure your calendar info corresponds with the actual (opening) hours of the event, so that card holders can check in at the event with their UiTPAS.


## Organizer
The organizer field is mandatory for UiTPAS events. Therefore you should use an existing UiTPAS-organizer. For a list of all organizers, see [list organizers](https://documentatie.uitdatabank.be/content/json-ld/latest/organizers/organizer-list.html) documentation.

Update the organizer of an event:
- using the [JSON-LD API](https://documentatie.uitdatabank.be/content/json-ld/latest/events/event-organizer.html)
- using the [JSON-LD CRUD API](https://documentatie.uitdatabank.be/content/json-ld-crud-api/latest/events/event-organizer.html)


## Price
Price information is mandatory for UiTPAS events. Only the standard tariff is required.
The UiTPAS social discount tariff will be calculated by UiTdatabank, based on the standard tariff of the event.

Update price information of an event:
- using the [JSON-LD API](https://documentatie.uitdatabank.be/content/json-ld/latest/events/event-price-info.html)
- using the [JSON-LD CRUD API](https://documentatie.uitdatabank.be/content/json-ld-crud-api/latest/events/event-priceInfo.html)

## Calendar
It is mandatory to include the start time and end time of the event.

UiTdatabank will fill up missing start and end hours as follows:
- missing start time: ```00:00:00```
- missing end time: ```23:59:59```

The UiTPAS check-in devices will take this information into account.
