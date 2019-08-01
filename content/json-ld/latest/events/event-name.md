---
---

# Update name

An object containing the name in the given language. UiTdatabanks default language is `nl`

## HTTP request

```
PUT /events/{eventId}/name/{lang}
```

## Request headers

| Header        | Value            | Required? |
| ------------- | ---------------- | --------- |
| Authorization | Bearer {token}   | true      |
| X-Api-Key     | {apiKey}         | true      |
| Content-Type  | application/json | false     |

## Resource properties

| Property	| Type | Description | Example |
|--|--|--|--|
| eventId	| uuid | unique identifier for an event | d595414a-13e0-4dd2-b4bd-706599427351 |
| lang	| string | 2-character language reference | nl |

## Request body

| Property	| Type | Description |
|--|--|--|
|name		| string | The name for your event |

## Response

* `204 No Content` : request successful
* `400 Bad Request` : incorrect method, payload or URI
* `401 Unauthorized` : expired JWT or the user behind the JWT does not have permission to perform this request

## Example

**request**

The following is an example of the request

```
PUT https://io-test.uitdatabank.be/events/03116768-1abc-405a-93d7-ba6ede52fe09/name/nl
Content-Type: application/json
Authorization: Bearer {token}
X-Api-Key: {apiKey}

{
"name": "Name example"
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
      "title": "No route found for \"POST /events/6e46cf33-dd9b-4bf9-9c32-259eab5b6cbd/name/nl\": Method Not Allowed (Allow: PUT, OPTIONS)",
      "type": "about:blank",
      "status": 400
  }
  ```

  ```
  400 Bad request

  {
      "title": "Missing value for \"name\".",
      "type": "about:blank",
      "status": 400
  }
  ```

  ```
  401 Unauthorized

  Token claims validation failed. This most likely means the token is expired.
  ```

  ```
  401 Unauthorized

  {
      "title": "User with id: 12345678-abcd-1234-12ab-123abc123abc has no permission: \"Aanbod bewerken\" on item: 12345678-abcd-1234-12ab-123abc123abc when executing command: CultuurNet\\UDB3\\Event\\Commands\\UpdateTitle",
      "type": "about:blank",
      "status": 401
  }
  ```
