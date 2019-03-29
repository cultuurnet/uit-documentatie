---
---

# Age

You can search by age using two methods:

* URL parameters
* Advanced queries

## Url parameters

### minAge and maxAge

You can filter by minimum and maximum age like this:

```
GET https://search.uitdatabank.be/offers/?minAge=12&maxAge=16
```

This will look for all events and places that have an age range that overlaps with the given range.

Because of this, the query above will also match with documents with an age range of \(for example\) `10-14` because the two overlap partially.

Both `minAge` and `maxAge` are optional and can be used on their own, or together.

For example, you could search for all 16+ events, without having to specify a maximum age:

```
GET https://search.uitdatabank.be/offers/?minAge=16
```

### allAges

Additionally you can filter out any events and places that are (not) suitable for all ages:

```
GET https://search.uitdatabank.be/offers/?allAges=true
```
Setting `allAges` to `true` only returns events and places that are suitable for **all** ages.

```
GET https://search.uitdatabank.be/offers/?allAges=false
```
Setting `allAges` to `false` only returns events and places that are **not** suitable for **all** ages.

```
GET https://search.uitdatabank.be/offers/?allAges=*
```
Setting `allAges` to `*` returns both events and places that are suitable for all ages and those that are only suitable for a specific age range (default).

### Combined

You can combine the `allAges` parameter with `minAge` and/or `maxAge`. For example, the following query will return all events for children between 6 and 12 years old, without events that are suited for all ages:
```
GET https://search.uitdatabank.be/offers/?minAge=6&maxAge=12&allAges=false
```

## Advanced queries

Using the `q` parameter, you can execute more [advanced queries]({% link content/search_api_3/latest/reference/advanced-queries.md %}) than by using the `minAge` and/or `maxAge` URL parameter.

For example:

```
GET https://search.uitdatabank.be/offers/?q=typicalAgeRange:[12 TO 14] OR typicalAgeRange:[* TO 8]
```

You can also use the same `allAges` parameter as mentioned above:
```
GET https://search.uitdatabank.be/offers/?q=allAges:false
```

For more info, see the [advanced queries documentation]({% link content/search_api_3/latest/reference/advanced-queries.md %}).
