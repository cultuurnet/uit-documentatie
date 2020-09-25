---
---

# Sorting

You can sort organizers by a combination of:

* `score` \(relevance\)
* `created`
* `modified`

It is possible to change the sort `order`:

* Ascending order \(from smallest to biggest value\) by using `asc`
* Descending order \(from biggest to smallest value\) by using `desc`

For an in-depth look how relevance (`score`) is calculated, see the [elasticsearch documentation](https://www.elastic.co/guide/en/elasticsearch/guide/current/relevance-intro.html).

Example:

```
GET https://search.uitdatabank.be/organizers/?sort[modified]=desc
```

Example with multiple sort options:

```
GET https://search.uitdatabank.be/organizers/?sort[created]=desc&sort[score]=desc
```

Note that if you use multiple `sort` options,  the order of the `sort` options influences the order in which they are sorted. In the example above, all organizers will be sorted by `created` first,  and afterwards any organizers with the same `created` are sorted by `score`.
