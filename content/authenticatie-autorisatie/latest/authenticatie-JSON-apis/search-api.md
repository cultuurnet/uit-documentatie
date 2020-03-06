---
---

# Authentication

To use Search API v3, you need to authenticate using an API key on every request.

You can add your API key to a request in two ways:

* As a query parameter
* In a custom `X-Api-Key` header

To apply for you personal API key you must register via the [UiTdatabank projectaanvraag platform](https://projectaanvraag.uitdatabank.be).

The API is available in a production and testing environment (See [environments]({% link content/search_api_3/latest/getting-started/environments.md %})), so keys can be obtainde for both environments.

Make sure to use the correct API key with the correct environment.

## Query parameter

You can add an `apiKey` parameter like this:

```
GET https://search.uitdatabank.be/offers/?apiKey=<your api key here>
```

For example:

```
GET https://search.uitdatabank.be/offers/?apiKey=c7c95c31-93b0-4a3b-8758-770e76d5ed46
```

## Request header

You can send your API key as a separate header like this \(for example using `curl`\):

```
curl -H "X-Api-Key: <your api key here>" http://udb-search.dev/offers/
```

For example:

```
curl -H "X-Api-Key: c7c95c31-93b0-4a3b-8758-770e76d5ed46" http://udb-search.dev/offers/
```
