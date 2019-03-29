---
---

# Update event theme

One of the available themes at http://taxonomy.uitdatabank.be/api/domain/theme/classification. Pick a theme that fits the chosen eventtype. For an overview of all eventtypes with appropriate themes, see [here]({% link content/uitdatabank/latest/categorisatie/themas.md %})

Theme is not required, but highly recommended. An event can only have one theme.

## HTTP request

```
PUT /events/{eventId}/theme/{themeId}
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
| themeId	| string | unique event theme-id | 1.8.3.5.0 |

## Request body

Do not supply a request body for this method

## Response

If successful, this method returns a `200` response code and a commandId in the response body.

## Example

**request**

The following is an example of the request

```
PUT https://io-test.uitdatabank.be/events/03116768-1abc-405a-93d7-ba6ede52fe09/theme/1.2.1.0.0
Content-Type: application/json
Authorization: Bearer {token}
X-Api-Key: {apiKey}
```

**Response**

The following is an example of the response.

```
200 OK

{
  "commandId": "a55486283a53a1e45041002c4887580f"
}
```
