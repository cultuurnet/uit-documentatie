---
---

# Add and update Places

## Create a place with new id

**URI & method**

```
POST /imports/places/
```

If successful, this returns a 200 response code with a new unique id in response body

**Example response**

```
{
  "id": "54646d8f-994e-4509-8a8c-01fed8f9a241"
}
```

## Create or update a place with existing id

**URI & method**

```
PUT /imports/places/{cdbid}
```

If successful, this returns a 200 response code with the used id in response body

**Example response**

```
{
  "id": "54646d8f-994e-4509-8a8c-01fed8f9a241"
}
```

## Properties

**Mandatory properties**

1. `mainLanguage`
2. `name`
3. `calendarType`
  * `startDate`: in combination with calendarType `periodic`
  * `endDate`: in combination with calendarType `periodic`
4. `terms`
5. `address`

**Optional properties**

1. `availableFrom`
2. `bookingInfo`
3. `contactPoint`
4. `description`
5. `labels`
6. `mediaObject`
7. `organizer`
8. `priceInfo`
9. `typicalAgeRange`


### Example request - full place

```
curl -X "POST" "http://io-test.uitdatabank.be/imports/places/" \
     -H 'Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9jdWx1ZGItand0LXByb3ZpZGVyLmRldiIsInVpZCI6Ijk2ZmQ2YzEzLWVhYWItNGRkMS1iYjZhLTFjNDgzZDVlNDBjYyIsIm5pY2siOiJiZXJ0MmRvdHN0d2ljZSIsImVtYWlsIjoiYmVydEAyZG90c3R3aWNlLmJlIiwiaWF0IjoxNTIxMjExNzE2LCJleHAiOjE1MjEyMTUzMTYsIm5iZiI6MTUyMTIxMTcxNn0.Ng2RLO-n-4cmvvbOPPNiHxT3vGlHAPgUlARpVnaeyuJ2pyH45sOVmrtxRivbDPpgIWhozulwmcjvNeZ-fH1VKGGUJsnNmre2fxlinj2AmCgOZ_P83xCWSN-Lcl_7AzMxzminRFOGG7PE7ilAZ3wWlbFUFRkAhDs83BeTOHuHyM9bLVuXmxVZgtPEmapMTEdogxQ5PiR8FPLpOVYCbmQkSddfqs0KA1pVuGYFHm6tRiNd5WRd962_Hg2caw6vxccNyMQ17zYiI7lJDZpoQfp6v-yGjFBNOIroWSA8wOG12h62OyDp3YnRb9v40m35FERzqs70uBc3DMk1q80cG2VnEA' \
     -H 'x-api-key: deb306a6-6f46-4c98-89ce-b03ec4f121e' \
     -H 'Content-Type: text/plain; charset=utf-8' \
     -d $'{
  "mainLanguage": "nl",
  "name": {
    "en": "Publiq",
    "fr": "Publiq",
    "nl": "Publiq"
  },
  "address": {
    "en": {
      "addressCountry": "BE",
      "addressLocality": "Brussels",
      "postalCode": "1080",
      "streetAddress": "Henegouwenkaai 41-43"
    },
    "fr": {
      "addressCountry": "BE",
      "addressLocality": "Bruxelles",
      "postalCode": "1080",
      "streetAddress": "Quai du Hainaut 41-43"
    },
    "nl": {
      "addressCountry": "BE",
      "addressLocality": "Brussel",
      "postalCode": "1080",
      "streetAddress": "Henegouwenkaai 41-43"
    }
  },
  "contactPoint": {
    "email": [
      "info@test.be",
      "contact@test.be"
    ],
    "phone": [
      "002345678900",
      "003188987689"
    ],
    "url": [
      "https://www.t3.com"
    ]
  },
  "description": {
    "nl": "Dit is de beschrijving",
    "fr": "C'est la description",
    "en": "This is a description"
  },
  "calendarType": "permanent",
  "openingHours": [
    {
      "closes": "16:30",
      "dayOfWeek": [
        "monday",
        "saturday",
        "sunday"
      ],
      "opens": "10:00"
    }
  ],
  "priceInfo": [
    {
      "category": "base",
      "name": {
        "nl": "Basistarief",
        "fr": "Tarif de base",
        "en": "Base tariff"
      },
      "price": 11,
      "priceCurrency": "EUR"
    },
    {
      "category": "tariff",
      "name": {
        "nl": "Senioren",
        "fr": "Aînés",
        "en": "Elderly"
      },
      "price": 6,
      "priceCurrency": "EUR"
    }
  ],
  "terms": [
    {
      "id": "Yf4aZBfsUEu2NsQqsprngw"
    }
  ],
  "typicalAgeRange": "3-73",
  "mediaObject": [
    {
      "@id": "https://io-test.uitdatabank.be/images/e48191eb-dd23-4338-a546-4893dac37096",
      "@type": "schema:ImageObject",
      "contentUrl": "https://io-test.uitdatabank.be/images/e48191eb-dd23-4338-a546-4893dac37096.png",
      "thumbnailUrl": "https://io-test.uitdatabank.be/images/e48191eb-dd23-4338-a546-4893dac37096.png",
      "description": "publiq kanaal Molenbeek",
      "copyrightHolder": "publiq vzw",
      "inLanguage": "nl"
    }
  ],
  "labels": [
    "label1",
    "label2"
  ],
  "hiddenLabels": [
    "hiddenLabel1",
    "hiddenLabel2"
  ]
}'
```
