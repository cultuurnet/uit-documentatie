---
---

# Address

You can filter by address-related fields using two methods:

* URL parameter
* Advanced queries

By default, the search API will only return results that are in Belgium. You can reset this default as described in [Default filters]({% link content/search_api_3/latest/getting-started/default-filters.md %}).

## URL parameter

Currently, the only URL parameters for address fields are `postalCode` and `addressCountry`.

While `postalCode` can be any integer or string, `addressCountry` should always be an [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) country code.

Example usage:

```
GET https://search.uitdatabank.be/offers/?postalCode=3000
```

```
GET https://search.uitdatabank.be/offers/?addressCountry=BE
```

These URL parameters look for complete matches, but are case insensitive.

Note that a document can have multiple addresses, one for each language. The `postalCode` and `addressCountry` URL parameters look for a match in any of these addresses.

## Advanced queries

Using advanced queries, you can not only filter by `postalCode` or `addressCountry`, but also by `addressLocality` and `streetAddress`.

Because a document can have address translations, you can search by a specific language or alternatively use a wildcard instead of specifying a language.

For example:

```
GET https://search.uitdatabank.be/offers/?addressCountry=*&q=address.fr.addressCountry:BE AND address.fr.postalCode:1000 AND address.fr.addressLocality:Bruxelles AND address.fr.streetAddress:Boulevard Anspach*
```

The query above will look for specific matches in the `fr` address.

The following example looks for matches in any language:

```
GET https://search.uitdatabank.be/offers/?addressCountry=*&q=address.\*.addressCountry:BE AND address.\*.postalCode:1000 AND address.\*.addressLocality:Bruxelles AND address.\*.streetAddress:Boulevard Anspach*
```

Note that wildcards in field names should be escaped using a backslash. \(`\`\)

Note that `streetAddress` also includes the street number, so make sure to add a wildcard to the field value to filter by a street name. Like so:

```
address.\*.streetAddress:Bondgenotenlaan*
```

For more information, see [advanced queries]({% link content/search_api_3/latest/reference/advanced-queries.md %}).
