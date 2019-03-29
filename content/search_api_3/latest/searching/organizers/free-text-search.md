---
---

# Free text search

Using either the `name` and the `q` URL parameters, you can search for text across multiple pre-defined fields:

```
GET https://search.uitdatabank.be/organizers/?name=femma
```

```
GET https://search.uitdatabank.be/organizers/?q=femma
```

The main difference between the two is that `q` allows you to search through other fields than the pre-defined free text search fields.

For example, the following queries will NOT return the same results:

```
GET https://search.uitdatabank.be/organizers/?name=labels:Paspartoe
```

```
GET https://search.uitdatabank.be/organizers/?q=labels:Paspartoe
```

In this example, the `name` parameter will look for documents that have the string `labels:Paspartoe` in them, while the `q` parameter will look for documents that actually have the label `Paspartoe`.

See [advanced queries]({% link content/search_api_3/latest/reference/advanced-queries.md %}) for more info on the `q` parameter.

## Fields

The following fields will be searched when using the `q` parameter with free text:

`id`, `name`, `labels`, `addressLocality`, `postalCode`, `streetAddress`, `organizer.id`, `organizer.name`

**Important notes:**

* IDs only return results if the complete ID is given in the free text input.
* Searching for a part of a word is not supported at the time of writing. For example, searching for `Theater` will not return an organizer with the title `Theatergezelschap STAN`.
* Wildcards are supported. For example, searching for `Theater*` will return results with `Theatergezelschap` or `Theatergroep` `Theaterhuis` ...

## Operators

By default the `AND` operator is used in between multiple given words.

So the query `grote post oostende` actually becomes `grote AND post AND oostende`.

It is possible to define the operator you want to use in the query itself.
You could, for example, search for:

```
GET https://search.uitdatabank.be/offers/?q=(grote OR post) AND oostende
```

See the [Query String Query syntax for ElasticSearch](https://www.elastic.co/guide/en/elasticsearch/reference/current/query-dsl-query-string-query.html#query-string-syntax) for more info, or more documentation on [advanced queries]({% link content/search_api_3/latest/reference/advanced-queries.md %}).

Note: if you want to specify the fields you want to search on, or search through fields that are not included by default, you should use the `q` parameter.

## Exact matches

By default the free text search looks for one or more matches with any of the given terms, regardless of their order and/or position in the document's text.

For example, both a document with the title `Lekker vegetarisch` and a different document with the title `Vegetarisch eten is niet lekker` would be returned as results when searching for `name=lekker vegetarisch`.

To limit the results to exact matches, encapsulate the given search terms with double quotes:

```
GET https://search.uitdatabank.be/organizers/?name="lekker vegetarisch"
```

This will only return results that have `lekker vegetarisch` in exactly that order in their text.

Encapsulated terms can still be combined with other terms, for example:

```
GET https://search.uitdatabank.be/organizers/?name="lekker vegetarisch" eten bereiden koken
```

## Localization \(Translations\)

By default the free text search looks for matching terms in both the original documents and their translations.

To limit your free text queries to one or more specific languages, you can use the `textLanguages` URL parameter.

```
GET https://search.uitdatabank.be/organizers/?name="the editors"&textLanguages[]=nl
```

You can search through multiple languages by repeating the same parameter with a different value:

```
GET https://search.uitdatabank.be/organizers/?name="the editors"&textLanguages[]=nl&textLanguages[]=fr
```

Note that the `textLanguages` parameter does not filter documents by their available languages. For example, when searching in both `nl` and `fr`, you can get results that only have either one language but still have a matching term in that specific language.

To actually filter documents by their available languages, see [Languages]({% link content/search_api_3/latest/searching/offers/languages.md %}).
