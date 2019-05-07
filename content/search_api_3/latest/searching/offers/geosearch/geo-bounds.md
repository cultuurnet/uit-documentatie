---
---

# Geo bounds

Searching by geo bounds is based on the geographical coördinates of events and places. The difference with [searching by distance]({% link content/search_api_3/latest/searching/offers/geosearch/distance.md %}) is that a geo bounds query looks for all events and places in a specific geographical area defined by a pair of south-west coordinates and north-east coordinates. This allows you to find all events and places that are located on a specific Google Maps view, for example.

Currently the only way to search by geo bounds is using the `bounds` URL parameter.  
This parameter resembles the [bounds parameter from Google Maps](https://developers.google.com/maps/documentation/geocoding/intro#Viewports) and takes the south-west and north-east coordinates as a single string, separated by a `|` character.

For example:

```
GET https://search.uitdatabank.be/offers/?bounds=34.172684,-118.604794|34.236144,-118.500938
```

The coordinates should be decimal representations of latitude & longitude \(in that order\), separated by a comma.

**Note! **It's important that you pass the south-west coordinates first, and the north-east coordinates second.
