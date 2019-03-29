---
---

# Possible exceptions and deprecated data

You can already discover all features available in publiq’s Search API v3 for UiTdatabank. However, there are some possible exceptions to handle in this pilot stage.

## Missing `@id` for location

* it is possible an event has **a place without `@id`**

```
"location": {
  "@type": "Place",
  "address": {
    "nl": {
      "addressCountry": "BE",
      "addressLocality": "Borgloon",
      "postalCode": "3840",
      "streetAddress": "Grootloonstraat 111a"
    }
  },
  "geo": {
    "latitude": 50.7925781,
    "longitude": 5.3658241
  }
```

We call this a dummy location; legacy data from the previous version of UiTdatabank. These places can't be ignored because they contain the address and geocoordinates needed to locate the event.


## Missing `@id` for organizer

* it is possible an event has **an organizer without `@id`**
```
"organizer": {
"name": "CodeFever VZW",
"@type": "Organizer"
},
```
We call this a dummy organizer; legacy data from the previous version of UiTdatabank. These organizers can be ignored or just used to print the name.

## availableTo

```
"availableTo": "2018-11-28T23:59:59+01:00",
```
It is possible that some events and places do not have an `availableTo` property. In that case it can be considered an event with `"availableTo": "2100-01-01T00:00:00+00:00"`.

**Important** Be mindful of the [Year 2038 problem](https://en.wikipedia.org/wiki/Year_2038_problem) when converting our dateTime to a signed 32-bit integer. The value `"2100-01-01T00:00:00+00:00"` can not be encoded to a signed 32-bit integer, please refer to one of the [possible solutions](https://en.wikipedia.org/wiki/Year_2038_problem#Possible_solutions) provided in online documentation.

## completedLanguages

```
"completedLanguages": [
  "nl",
  "en"
],
```
When an offer contains all the translatable fields in one specific language, this language is added to the `completeLanguages` property.

The translatable fields are different for every entity:

**Event**
* name
* description
* bookingInfo/urlLabel*
* priceInfo/name*


**Place**
* name
* description
* address
* bookingInfo/urlLabel*
* priceInfo/name*


**Organizer**
* name
* address*

Fields marked with an `*` are not yet indexed under the `completeLanguages` property and are not taken into account when calculating for completed languages.

## bookingInfo

```
"bookingInfo": {
  "availabilityEnds": "2017-11-28T12:36:11+01:00",
  "availabilityStarts": "2018-06-28T12:36:11+01:00",
  "email": "info@test.be",
  "phone": null,
  "url": "http://www.kasteelvanhorst.be/praktisch",
  "urlLabel": {
    "en": "Reserve seats",
    "nl": "Reserveer plaatsen"
  },
},
```

* The dateTime for `availabilityEnds` and `availabilityStarts` may contain a deprecated dateTime format `2018-02-20T15:11:26.034Z`

* The three properties `email`, `url`, `phone` are not validated by the API and can all contain any string.

* [UNDER DEVELOPMENT] urlLabel should be a translatable field.

* bookingInfo may contain deprecated properties, these will be deleted from existing offers and should **NOT** be used in future development: `name`, `description`, `price`, `currency`

## contactPoint

* The three properties `email`, `url`, `phone` are not validated by the API and can all contain any string.
* It is possible to find an emailaddress under `phone` and vice versa.

```
"contactPoint": {
  "email": [],
  "phone": [
    "016 62 33 45"
  ],
  "url": [
    "http://www.kasteelvanhorst.be/families",
    "http://www.herita.be"
  ]
}
```


## creator

* The creator should contain the nickname for the UiTiD user that created the offer.

```
"creator": "Stiksels"
```

* It is possible that this field contains an emailaddress (for events and places) or a `UUID (nick)` for organizers

```
"creator": "user@info.org"
```

```
"creator": "86a02c65-696d-5b12-a9b1-9e3bc8e6303c (Stiksels)"
```

## creatorId

* [UNDER DEVELOPMENT] This field will contain the UUID for the UiTiD user that created the offer.

```
"creatorId": "86a02c65-696d-5b12-a9b1-9e3bc8e6303c"
```

## address without language property

* It is possible that an address does not have a language property yet.

```
"address": {
  "addressCountry": "BE",
  "addressLocality": "Holsbeek",
  "postalCode": "3220",
  "streetAddress": "Horststraat 28"
}
  ```


## Missing geo-coordinates

* It is possible that not every place address has geo-coordinates.

* Geocoordinates are not calculated for an organizer.

```
"geo": {
  "latitude": 50.9321713,
  "longitude": 4.8320582
},
```


## priceInfo - translate name

* the name for a price should be a translatable field.

```
"priceInfo": [
  {
    "category": "base",
    "name": {
      "nl": "Basistarief",
      "fr": "Tarif de base",
      "en": "Base tariff",
      "de": "Basisrate"
      },
    "price": 6,
    "priceCurrency": "EUR"
  }
]
```
* It is possible that some older offers don't have translated names

```
"priceInfo": [
  {
    "category": "base",
    "name": "Basistarief",
    "price": 10.65,
    "priceCurrency": "EUR"
  },
  {
    "category": "tariff",
    "name": "Kortingstarief",
    "price": 9.65,
    "priceCurrency": "EUR"
  },
  {
    "category": "tariff",
    "name": "Kinepolis Student Card",
    "price": 7.95,
    "priceCurrency": "EUR"
  }
]
```
