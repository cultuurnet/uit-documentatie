---
---
# Sorts of school offers

We distinguish 3 sorts of school offers:
- **School performances** both have a date and a location. ```Example```: a theater performance aimed at a fourth degree.
- **Guided tours** do not have a specific date, but they do have a location. ```Example```: a guided tour in a museum.
- **Bookable offers** have no specific time, nor do they have a location. Both date and location are determined in mutual agreement between the organizer / artist and the consumer (school). ```Example```: As a school you can book Stijn Meuris for a school performance at your school, or at the local cultural center. 

| Type | Date | Place | 
| -- | -- | -- |
| School performances | x | x | 
| Guided tours |  | x | 
| Bookable events  |  |  | 


## Creation of school performances
School performances both have a date and a location. F.e. a theater performance aimed at a fourth degree

| Type | Date | Place | 
| -- | -- | -- |
| School performances | x | x | 

Since school performances both have a date and a location, these sort of school events are created as a regular event:
- With calendarInfo
- With a valid and existing location in UiTdatabank

## Creation of guided tours
Guided tours do not have a specific date, but they do have a location. F.e. a guided tour in a museum.

| Type | Date | Place | 
| -- | -- | -- |
| Guided tours |  | x | 

In order to create a guided school tour, you should use a valid an existing location for the event.

Since the exact date for the event is not known yet, your event should contain the calendarType ```permanent```.

> !You can only use the calendarType ```permanent``` for guided school tours, bookable school events and for locations!

## Creation of bookable events
Bookable offers have no specific date, nor they have a location. Both date and location are determined by mutual agreement between the organizer / artist and the consumer (school).

| Type | Date | Place | 
| -- | -- | -- |
| Bookable events  |  |  | 

Since the exact date for the event is not known yet, your event should contain the calendarType ```permanent```.

> !You can only use the calendarType ```permanent``` for guided school tours, bookable school events and for locations!

Embedding a valid and existing place for events is mandatory in the UiTdatabank event format. So, in order to create a bookable event you should embed the dummy place of Cultuurkuur. The following dummy place identifiers can be used for bookable events:
- Test environment: ```3b92c85b-a923-4895-85f5-ed056dae11e2```
- Production environment: ```c3f9278e-228b-4199-8f9a-b9716a17e58f```

Only if you use the dummy places correctly, your event will be recognized by UiTdatabank and cultuurkuur as a bookable event.


