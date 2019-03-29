---
---

# Update booking info

Booking info can contain one or more of the following properties, limited to one of each:
- url & urlLabel: Deeplink to online ticketlink, urlLabel is used for copy to print on ticket-link button
- email
- phone
- availabilityStarts & availabilityEnds: Used to define a date range during which it is possible to make reservations or book tickets

## HTTP request

```
PUT /places/{placeId}/bookingInfo
```

**HTTP DELETE**

Not supported: to remove (specific) bookingInfo perform a PUT request with empty properties

## Request headers

| Header        | Value            | Required? |
| ------------- | ---------------- | --------- |
| Authorization | Bearer {token}   | true      |
| X-Api-Key     | {apiKey}         | true      |
| Content-Type  | application/json | false     |

## Resource properties

| Property	| Type | Description | Example |
|--|--|--|--|
| placeId	| uuid | unique identifier for a place | d595414a-13e0-4dd2-b4bd-706598427351 |


## Request body

| Property	| Type | Description | Example |
|--|--|--|--|
| bookingInfo | object | object containing one or more properties | |
| url | url | ticketlink | https://www.domain.be/reservations/eventname |
| urlLabel | object | only to be used in combination with `url`, must contain at least translation for the mainLanguage. | See below for suggestions |
| email | email | emailaddress used for booking | user@example.com |
| phone | string | phonenumber used for booking | 0123456789 |
| availabilityStarts | date-time | the starttime for bookings | 2015-05-07T12:02:53+00:00 |
| availabilityEnds | date-time | the endtime for bookings | 2015-05-07T12:02:53+00:00 |

### urlLabel - suggested translations
It is advised to use the following combo's for adding urlLabels to a bookingInfo url. These are the default translations used by UiTdatabank.

| nl | fr | en | de |
| -- | -- | -- | -- |
| Koop tickets | Achetez des tickets| Buy tickets | Tickets kaufen |
| Reserveer plaatsen | Réservez des places | Reserve places | Platzieren Sie eine Reservierung |
| Controleer beschikbaarheid | Controlez la disponibilité | Check availability | Verfügbarkeit prüfen |
| Schrijf je in | Inscrivez-vous | Subscribe | Melde dich an |

## Response

If successful, this method returns a `200` response code and a commandId in the response body.

## Example

**request**

The following is an example of the request

```
PUT https://io-test.uitdatabank.be/places/18717eeb-4ff0-4de5-afa8-5170b58e335d/bookingInfo
Content-Type: application/json
Authorization: Bearer {token}
X-Api-Key: {apiKey}

{
  "bookingInfo": {
    "url": "https://www.domain.be/reservations/eventname",
    "urlLabel": {
      "nl": "Reserveer plaatsen",
      "fr": "Réservez des places",
      "en": "Reserve places",
      "de": "Platzieren Sie eine Reservierung"
    },
    "email": "user@example.com",
    "phone": "0123456789",
    "availabilityStarts": "2015-05-01T00:00:00+00:00",
    "availabilityEnds": "2015-07-01T00:00:00+00:00"
  }
}
```
