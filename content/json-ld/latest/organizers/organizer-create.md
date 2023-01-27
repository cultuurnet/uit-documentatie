---
---

# Add organizer

## HTTP request

It is important to re-use existing organizers and avoid creating duplicates. UiTdatabank is continuously monitored and duplicate entries will be removed. To search for existing organizers, [see here]({% link content/json-ld/latest/organizers/organizer-list.md %})

```
POST /organizers/
```

## Request headers

| Header        | Value            | Required? |
| ------------- | ---------------- | --------- |
| Authorization | Bearer {token}   | true      |
| X-Api-Key     | {apiKey}         | true      |
| Content-Type  | application/json | false     |

## Request body

To create a new organizer the object-body can contain the following properties:
- mainLanguage (mandatory)
- website (mandatory)
- name (mandatory)
- address
- contact

The initial POST request must contain a JSON body with (at least) all mandatory fields. These fields can be edited separately with individual PUT requests.

See specific PUT requests for definitions of each property

## Response

If successful, this method returns a `201` response code and a organizerId and url in the response body.
Keep this organizerId in order to perform other requests on this specific organizer later on (publish, update or delete).

## Example

**request**

The following is an example of the request

```
POST https://io-test.uitdatabank.be/organizers/
Content-Type: application/json
Authorization: Bearer {token}
X-Api-Key: {apiKey}

{
  "mainLanguage": "nl",
  "website": "http://www.stuk.be/",
  "name": "STUK",
  "address": {
    "addressCountry": "BE",
    "addressLocality": "Leuven",
    "postalCode": "3000",
    "streetAddress": "Sluisstraat 79"
  },
  "contact": [
    {
      "type": "url",
      "value": "https://www.facebook.com/STUKLeuven"
    }
  ]
}
```

**Response**

The following is an example of the response.

```
201 Created

{
  "organizerId": "6b476d79-c404-425f-8b1c-357e39a60410",
  "url": "https://udb-silex-acc.uitdatabank.be/organizers/6b476d79-c404-425f-8b1c-357e39a60410"
}
```
