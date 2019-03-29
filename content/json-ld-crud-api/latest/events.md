---
---

# Add and update Events

## Create an event with new id

**URI & method**

```
POST /imports/events/
```

If successful, this returns a 200 response code with a new unique id in response body

**Example response**

```
{
  "id": "54646d8f-994e-4509-8a8c-01fed8f9a241"
}
```

## Create or update an event with existing id

**URI & method**

```
PUT /imports/events/{cdbid}
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
  * `startDate`: in combination with `single`, `multiple`, `periodic`
  * `endDate`: in combination with `single`, `multiple`, `periodic`
  * `subEvents`: in combination with `multiple`
4. `terms`
5. `location`


**Optional properties**

1. `audience`
2. `availableFrom`
3. `bookingInfo`
4. `contactPoint`
5. `description`
6. `labels`
7. `mediaObjects`
8. `organizer`
9. `priceInfo`
10. `typicalAgeRange`

### Example request - complete event

```
curl -X "POST" "https://io-test.uitdatabank.be/imports/events/" \
     -H 'Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9jdWx1ZGItand0LXByb3ZpZGVyLmRldiIsInVpZCI6Ijk2ZmQ2YzEzLWVhYWItNGRkMS1iYjZhLTFjNDgzZDVlNDBjYyIsIm5pY2siOiJiZXJ0MmRvdHN0d2ljZSIsImVtYWlsIjoiYmVydEAyZG90c3R3aWNlLmJlIiwiaWF0IjoxNTIxMjE1NTM0LCJleHAiOjE1MjEyMTkxMzQsIm5iZiI6MTUyMTIxNTUzNH0.pQzQw1Qr1JB4KYo_rxHJ3ZBH_L0JdabvuG1Lkwcwp0Vjh8B6FYR4GzWe34gykH8rZBtUyVRbupPSmCQMxuUJvzcOdpfFYkdGGBov1Nb1jJ-tmRFvKkFJOeDpylMhadckUF1qGNIZ0zR2jZS2fKSd5ZhNUUta-zknyo5gGCjbT7DiZy1Psn4HBqLKGSB9mOE9CmRxytQqUq5VKHhCjtlXMz-Iw93aT3v7yHELHbrpFdkQYahUY1PoEr3d06Ze8tAB2Rn4pAPlZ27TOLKxlVZMYq8ZjkD_tg0y7Iy6rXjyWJ8dGJ2Y8hOKbx9u-L0iEHj8gAcBom8vQbCTy8mtULAuDw' \
     -H 'x-api-key: deb306a6-6f46-4c98-89ce-b03ec4f121e' \
     -H 'Content-Type: application/json; charset=utf-8' \
     -d $'{
    "bookingInfo": {
    "availabilityEnds": "2019-12-30T01:02:03+01:00",
    "availabilityStarts": "2018-12-30T01:02:03+01:00",
    "email": "test@test.com",
    "phone": "123",
    "url": "https://www.test.com",
    "urlLabel": {
      "nl": "Reserveer plaatsen",
      "fr": "Réservez des places",
      "en": "Reserve places",
      "de": "Platzieren Sie eine Reservierung"
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
  "location": {
    "@id": "https://io-test.uitdatabank.be/place/aa757579-66fb-47f8-ae2c-99a9d88976af"
  },
  "mainLanguage": "nl",
  "name": {
    "en": "event name in EN",
    "nl": "event name in NL",
    "fr": "event name in FR"
  },
  "organizer": {
    "@id": "https://io-test.uitdatabank.be/organizers/10cfb8c6-8e2e-4fdb-8119-5b9057cf33d7"
  },
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
  "calendarType": "multiple",
  "startDate": "2019-04-01T14:45:00+01:00",
  "endDate": "2019-06-01T18:45:00+01:00",
  "subEvent": [
    {
      "@type": "Event",
      "endDate": "2019-04-01T18:45:00+01:00",
      "startDate": "2019-04-01T14:45:00+01:00"
    },
    {
      "@type": "Event",
      "endDate": "2019-05-01T18:45:00+01:00",
      "startDate": "2019-05-01T14:45:00+01:00"
    },
    {
      "@type": "Event",
      "endDate": "2019-06-01T18:45:00+01:00",
      "startDate": "2019-06-01T14:45:00+01:00"
    }
  ],
  "terms": [
    {
      "id": "0.50.4.0.0"
    },
    {
      "id": "1.8.2.0.0"
    }
  ],
  "typicalAgeRange": "3-15",
  "audience": {
    "audienceType": "everyone"
    },
  "mediaObject": [
    {
      "@id": "https://io-test.uitdatabank.be/images/58eb2257-6dee-45c8-b189-3ba942d5331b",
      "@type": "schema:ImageObject",
      "contentUrl": "https://io-test.uitdatabank.be/images/58eb2257-6dee-45c8-b189-3ba942d5331b.png",
      "thumbnailUrl": "https://io-test.uitdatabank.be/images/58eb2257-6dee-45c8-b189-3ba942d5331b.png",
      "description": "publiq - maak het mee",
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
