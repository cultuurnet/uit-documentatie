---
---

# UiTdatabank Basics

## Content (resources) in UiTdatabank
* **event**: a cultural or leisure activity with a specific timestamp and location
* **place**: a unique location or point of interest (POI) where an event can take place
* **offer**: can be an event or a place, these resources share certain properties
* **organizer**: a unique organizer. Organizers are specifically used for the UiTPAS project
* **label**: a unique keyword used to combine specific resources with similar traits. A label can be public or private, visible or hidden.
* **mediaObject**: to add an image to an offer, you first create a unique mediaObject for the image and then add this mediaObject to the offer.
* **user**: all requests on the UiTdatabank APIs need a valid JWT from an authenticated user. UiTdatabank uses a specific permission model to see which user can update which content.

## UiTdatabank permission model
* Every authenticated user can create content in UiTdatabank
* Every authenticated user can edit the content they created
* Any authenticated user can add or remove public labels to any content in UiTdatabank
* Any authenticated user can add or remove translations to any content in UiTdatabank
* Content created in UiTdatabank is validated by admins and can be approved or denied for online publication
* Admins can edit all content in UiTdatabank

For more info on how UiTdatabank works, you can refer to the book [Zo werkt UiTdatabank]({% link content/uitdatabank/latest/start.md %}) **(dutch only)**
