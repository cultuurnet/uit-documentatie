---
---

# URL

It is possible to search for organizers with a specific url.


## website

Every organizer in UiTdatabank must have a unique url, so to add a new organizer in UiTdatabank, you must verify if the provided url is already used by another organizer.

The URL parameter `website` Searches in the JSON-LD url property for exact matches

```
GET https://search.uitdatabank.be/organizers/?website=https://www.organizergent.be
```
**Important notes:**

* only exact matches are returned
* wildcards are not supported

## domain

Returns an exact match on domain name part of the JSON-LD url property.

When `www.`is added, it will be ignored. So searching for `www.publiq.be` will match with urls with domainname `publiq.be` as `www.publiq.be` and vice versa.

For example:

```
GET https://search.uitdatabank.be/organizers/?domain=publiq.be
```

Will generate the same results as

```
GET https://search.uitdatabank.be/organizers/?domain=www.publiq.be

```
