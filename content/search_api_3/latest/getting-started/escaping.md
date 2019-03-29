---
---

# Escaping

## Double quotes in field values

A valid label in UiTdatabank could be `"dag van de fiets"` \(with quotes!\).

To search for this label in an advanced query, it should be escaped and encapsulated like this:

```
GET https://search.uitdatabank.be/offers/?q=labels:"\"dag van de fiets\""
```

## Wildcards in field names

`{lang}` should always be replaced by either a specific language (`nl`, `fr`, ...) or an **escaped** wildcard (`\*`)

| Field | Type | Comments |
| :--- | :--- | :--- |
| organizer.name.{[lang]({% link content/search_api_3/latest/searching/offers/languages.md %})} | String |  |
| name.{[lang]({% link content/search_api_3/latest/searching/offers/languages.md %})} | String |  |
| description.{[lang]({% link content/search_api_3/latest/searching/offers/languages.md %})} | String |  |
| location.name.{[lang]({% link content/search_api_3/latest/searching/offers/languages.md %})} | String |  |
| address.{[lang]({% link content/search_api_3/latest/searching/offers/languages.md %})}.addressCountry | Enum | See [Address]({% link content/search_api_3/latest/searching/offers/address.md %}) |
| address.{[lang]({% link content/search_api_3/latest/searching/offers/languages.md %})}.addressLocality | String | See [Address]({% link content/search_api_3/latest/searching/offers/address.md %}) |
| address.{[lang]({% link content/search_api_3/latest/searching/offers/languages.md %})}.postalCode | String | See [Address]({% link content/search_api_3/latest/searching/offers/address.md %}) |
| address.{[lang]({% link content/search_api_3/latest/searching/offers/languages.md %})}.streetAddress | String | See [Address]({% link content/search_api_3/latest/searching/offers/address.md %}) |

When you use wildcards in field names to search across multiple translated versions, the wildcard should be escaped using a backslash. \(`\`\). For example:

```
GET https://search.uitdatabank.be/offers/?addressCountry=*&q=address.\*.addressCountry:BE AND address.\*.postalCode:1000 AND address.\*.addressLocality:Bruxelles AND address.\*.streetAddress:Boulevard Anspach*
```
