---
---

# Terms

You can search by term id\(s\) and term label\(s\) using two methods:

* URL parameter
* Advanced queries

> ! The label of a term might change over time, so we strongly advice to search by termIds / terms.id. 

## Url parameter

You can filter by one or more term ids or term labels using the `termIds` and/or `termLabels` URL parameters.

```
GET https://search.uitdatabank.be/offers/?termIds[]=JCjA0i5COUmdjMwcyjNAFA
```

```
GET https://search.uitdatabank.be/offers/?termLabels[]=Jeugdhuis of jeugdcentrum
```

You will only get results with complete matches. For example, an event with the term label `Jeugdhuis of jeugdcentrum` will not be returned when searching by term label `Jeugdhuis`. Wildcards are not supported using the URL parameter!

Note that this method always uses the `AND` operator.

To filter by term ids and/or term labels on embedded location, you can use the `locationTermIds` and `locationTermLabels` URL parameters.

```
GET https://search.uitdatabank.be/offers/?locationTermIds[]=JCjA0i5COUmdjMwcyjNAFA
```

```
GET https://search.uitdatabank.be/offers/?locationTermLabels[]=Jeugdhuis of jeugdcentrum
```

## Advanced queries

Using the `q` parameter, you can execute more [advanced queries]({% link content/search_api_3/latest/reference/advanced-queries.md %}) than by using the URL parameters mentioned above.

For example:

```
GET https://search.uitdatabank.be/offers/?q=terms.id:"0.7.0.0.0" OR location.terms.id:JCjA0i5COUmdjMwcyjNAFA
```

Searching by term ids and/or term labels in advanced queries still looks for complete matches, but contrary to the URL parameters, wildcards are supported.

When searching for term ids or term labels with spaces, be sure to encapsulate the values in quotation marks:

```
GET https://search.uitdatabank.be/offers/?q=terms.label:"Begeleide rondleiding" OR location.terms.label:"Jeugdhuis of jeugdcentrum"
```

For more info, see the [advanced queries documentation]({% link content/search_api_3/latest/reference/advanced-queries.md %}).

For a list of available terms, see [UiTdatabank taxonomy](http://taxonomy.uitdatabank.be/api/domain):
* All terms in domain [eventtype](https://documentatie.uitdatabank.be/content/uitdatabank/latest/categorisatie/type_aanbod.html)
* All terms in domain [theme](https://documentatie.uitdatabank.be/content/uitdatabank/latest/categorisatie/themas.html)
* Recommended [combinations between eventtypes and themes](https://documentatie.uitdatabank.be/content/uitdatabank/latest/categorisatie/combinatie_type_thema.html)
