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
PUT /events/{eventId}/bookingInfo
```

Update the bookingInfo for an offer

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
| eventId	| uuid | unique identifier for an event | d595414a-13e0-4dd2-b4bd-706598427351 |

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

* `204 No Content` : request successful
* `400 Bad Request` : incorrect method, payload or URI
* `401 Unauthorized` : expired JWT or the user behind the JWT does not have permission to perform this request

## Example

**request**

The following is an example of the request

```
PUT https://io-test.uitdatabank.be/events/03116768-1abc-405a-93d7-ba6ede52fe09/bookingInfo
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

**Response**

The following are example responses.

```
204 No Content
```

```
400 Bad Request

{
    "title": "No route found for \"POST /events/12345678-abcd-1234-12ab-123abc123abc/bookingInfo\": Method Not Allowed (Allow: PUT, OPTIONS)",
    "type": "about:blank",
    "status": 400
}
```

```
400 Bad request

{
    "validation_messages": {
        "bookingInfo": "Required but could not be found."
    },
    "title": "Invalid payload.",
    "type": "about:blank"
}
```

```
401 Unauthorized

Token claims validation failed. This most likely means the token is expired.
```

```
401 Unauthorized

{
    "title": "User with id: 12345678-abcd-1234-12ab-123abc123abc has no permission: \"Aanbod bewerken\" on item: 12345678-abcd-1234-12ab-123abc123abc when executing command: CultuurNet\\UDB3\\Event\\Commands\\UpdateBookingInfo",
    "type": "about:blank",
    "status": 401
}
```
