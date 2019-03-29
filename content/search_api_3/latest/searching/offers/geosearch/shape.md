---
---

# Search by shape

publiq has a list of pre-indexed geographical shapes that represent the administrative state of Belgium.

The geographical coördinates of events and places are then matched with pre-indexed geographical shapes for:

* Provinces
* Regions
* Municipalities
* Submunicipalities

You can search by region using two methods:

* URL parameter
* Advanced query

An important difference between the two is that the filtering by region uses a cache in advanced queries, which is faster but may be slightly out of date. The URL parameter on the other hand does the filtering on-demand, which is slower but always up to date.

## URL parameter

You can use the `regions` URL parameter to filter all documents by one or more regions.

For example:

```
GET https://search.uitdatabank.be/offers/?regions=nis-24062
```

This will return all events and places located in **Leuven**.

If you want to filter multiple regions, pass them along as separate parameters
```
GET https://search.uitdatabank.be/offers/?regions[]=nis-20001&regions[]=nis-24062
```

This will return all events and places located in both **Provincie Vlaams-Brabant** and **Leuven**

The `regions` URL parameter only accepts complete region ids, and wildcards are not supported. Any incomplete id will return zero results.

Note that filtering the documents by region using the URL parameter does the filtering on-demand, which may be slower but up to date. This is contrary to advanced queries, which use a cached list of regions per document.

## Advanced queries

Using advanced queries, you can create more complex queries than by using the `regions` URL parameter.

For example:

```
GET https://search.uitdatabank.be/offers/?q=regions:nis-24062 OR regions:nis-44021
```

This will return all events and places located in **Leuven** and all events and places located in **Gent**.

Note that wildcards are supported:

```
GET https://search.uitdatabank.be/offers/?q=regions:reg-g*
```

This will return all events and places located in regions starting with "g". For example **reg-gent**, **reg-groene-gordel**, ...

The `regions` property is a cached list, so it may be slightly outdated, but it is faster than the `regions` URL parameter.
