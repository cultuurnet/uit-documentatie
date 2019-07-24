---
---

# Update contact point
Contact point can contain one or more of the following properties, each property can contain multiple entries:
- url
- email
- phone

## HTTP request

```
PUT /organizers/{organizerId}/contactPoint
```

**HTTP DELETE**

Not supported: to remove specific contact-info, perform PUT request with empty contactPoint-property

## Request headers

| Header        | Value            | Required? |
| ------------- | ---------------- | --------- |
| Authorization | Bearer {token}   | true      |
| X-Api-Key     | {apiKey}         | true      |
| Content-Type  | application/json | false     |

## Resource properties

| Property	| Type | Description | Example |
|--|--|--|--|
| organizerId	| uuid | unique identifier for an organizer | d595414a-13e0-4dd2-b4bd-706598427351 |

## Request body

| Property	| Type | Description | Example |
|--|--|--|--|
| contactPoint | object | object containing one or more properties | |
| url | array | contactlink | https://www.domain.be/contact |
| email | array | emailaddress | user@example.com |
| phone | array | phonenumber | 0123456789 |

## Response

If successful, this method returns a `200` response code.

## Example

**request**

The following is an example of the request

```
PUT  https://io-test.uitdatabank.be/organizers/6d330801-41ac-43da-a4dd-7a97e5b3248a/contactPoint
Content-Type: application/json
Authorization: Bearer {token}
X-Api-Key: {apiKey}

[
  {
    "type": "phone",
    "value": "013/445566"
  },
  {
    "type": "url",
    "value": "https://www.test.be"
  },
  {
    "type": "email",
    "value": "info@test.be"
  }
]
```

**Response**

The following are example responses.

```
204 No Content
```

```
400 Bad Request

{
    "title": "No route found for \"POST /organizers/6d330801-41ac-43da-a4dd-7a97e5b3248a/contactPoint\": Method Not Allowed (Allow: PUT, OPTIONS)",
    "type": "about:blank",
    "status": 400
}
```

```
400 Bad request

{
    "validation_messages": {
        "addressCountry.type": "Required but could not be found.",
        "addressCountry.value": "Required but could not be found.",
        "addressLocality.type": "Required but could not be found.",
        "addressLocality.value": "Required but could not be found.",
        "postalCode.type": "Required but could not be found.",
        "postalCode.value": "Required but could not be found.",
        "streetAddress.type": "Required but could not be found.",
        "streetAddress.value": "Required but could not be found."
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
    "title": "User with id: 12345678-abcd-1234-12ab-123abc123abc has no permission: \"Organisaties bewerken\" on item: 12345678-abcd-1234-12ab-123abc123abc when executing command: CultuurNet\\UDB3\\Organizer\\Commands\\UpdateContactPoint",
    "type": "about:blank",
    "status": 401
}
```
