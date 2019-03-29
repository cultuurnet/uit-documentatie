---
---

## Reference

| URL param | Value | Example & reference |
| :----- | :----- | :----- |
| addressCountry | ISO 3166-1 alpha-2 country code (Default = BE) | addressCountry=NL<br/> See [offers/address]({% link content/search_api_3/latest/searching/offers/address.md %}) and [organizers/address]({% link content/search_api_3/latest/searching/organizers/address.md %}) |
| audienceType | Supported values: everyone (default), members, education | audienceType=members <br/> See [Audience type]({% link content/search_api_3/latest/searching/offers/audience-type.md %}) |
| allAges | Boolean (true/false/*) | allAges=false <br/> See [Age]({% link content/search_api_3/latest/searching/offers/age.md %}) |
| availableFrom | ISO-8601 datetime (default = current date)| availableFrom=2017-04-01T00:00:00+01:00 <br/> See [Availability]({% link content/search_api_3/latest/searching/offers/availability.md %}) |
| availableTo | ISO-8601 datetime (default = current date) | availableTo=2017-04-30T23:59:59+01:00 <br/> See [Availability]({% link content/search_api_3/latest/searching/offers/availability.md %}) |
| calendarType | permanent, periodic, multiple, single | calendarType=single,multiple <br/> See [Calendar type]({% link content/search_api_3/latest/searching/offers/calendar-type.md %}) |
| createdFrom | ISO-8601 datetime | createdFrom=2017-01-01T00:00:00+01:00 <br/> See [Created and modified]({% link content/search_api_3/latest/searching/offers/created-and-modified.md %}) |
| createdTo | ISO-8601 datetime | createdTo=2017-01-01T00:00:00+01:00 <br/> See [Created and modified]({% link content/search_api_3/latest/searching/offers/created-and-modified.md %}) |
| creator | string | creator=86a02c65-696d-4d16-a9b1-9e3bc8e6303c <br/> See [offers/creator]({% link content/search_api_3/latest/searching/offers/creator.md %}) and [organizers/creator]({% link content/search_api_3/latest/searching/organizers/creator.md %}) |
| completedLanguages | Supported values: nl, fr, de, en | completedLanguages[]=fr <br/> See [Languages]({% link content/search_api_3/latest/searching/offers/languages.md %}) |
| coordinates | decimal representation of latitude & longitude | coordinates=50.8511740,4.3386740 <br/> See [Geo distance]({% link content/search_api_3/latest/searching/offers/geosearch/distance.md %}) |
| dateFrom | ISO-8601 datetime | dateFrom=2017-01-01T00:00:00+01:00 <br/> See [Date & time]({% link content/search_api_3/latest/searching/offers/date.md %}) |
| dateTo | ISO-8601 datetime | dateTo=2017-01-01T23:59:59+01:00 <br/> See [Date & time]({% link content/search_api_3/latest/searching/offers/date.md %}) |
| disableDefaultFilters | Boolean | disableDefaultFilters=true <br/> See [Default filters]({% link content/search_api_3/latest/getting-started/default-filters.md %}) |
| distance | ElasticSearch distance units| coordinates=50.8511740,4.3386740&distance=10km <br/> See [Geo distance]({% link content/search_api_3/latest/searching/offers/geosearch/distance.md %}) |
| domain | string | domain=publiq.be <br/> See [organizers/url]({% link content/search_api_3/latest/searching/organizers/url.md %}) |
| embed | Boolean (default=false) | embed=true <br/> See [Embedding result bodies]({% link content/search_api_3/latest/getting-started/embedding-full-result-bodies.md %}) |
| facets | Supported values: regions, types, themes, facilities, labels | facets[]=regions <br/> See [Facet counts]({% link content/search_api_3/latest/searching/offers/facet-counts.md %}) |
| hasMediaObjects| boolean | hasMediaObjects=true <br/> See [Media objects]({% link content/search_api_3/latest/searching/offers/media-objects.md %}) |
| id | uuid | id=f29d2182-2db0-4f99-831a-8e6a64c1c9c1 <br/> See [Id]({% link content/search_api_3/latest/searching/offers/id.md %}) |
| labels | string | labels[]=paspartoe <br/> See [offers/labels]({% link content/search_api_3/latest/searching/offers/labels.md %}) and See [organizers/labels]({% link content/search_api_3/latest/searching/organizers/labels.md %}) |
| languages | Supported values: nl, fr, de, en | languages[]=fr <br/> See [Languages]({% link content/search_api_3/latest/searching/offers/languages.md %}) |
| limit | integer | limit=5 <br/> See [Pagination]({% link content/search_api_3/latest/getting-started/pagination.md %})|
| locationId | uuid | locationId=b8bff8fa-988a-44db-8dd8-70bef77f3933 <br/> See [Id]({% link content/search_api_3/latest/searching/offers/id.md %}) |
| locationTermIds | UiTdatabank taxonomy | locationTermIds[]=JCjA0i5COUmdjMwcyjNAFA <br/> See [Terms]({% link content/search_api_3/latest/searching/offers/terms.md %}) |
| locationTermLabels | UiTdatabank taxonomy | locationTermLabels[]=Jeugdhuis of jeugdcentrum <br/> See [Terms]({% link content/search_api_3/latest/searching/offers/terms.md %}) |
| mainLanguage | Supported values: nl (default), fr, de, en | mainLanguage=nl <br/> See [Languages]({% link content/search_api_3/latest/searching/offers/languages.md %}) |
| maxAge | integer | maxAge=21 <br/> See [Age]({% link content/search_api_3/latest/searching/offers/age.md %}) |
| maxPrice | numeric | maxPrice=25 <br/> See [Price]({% link content/search_api_3/latest/searching/offers/price.md %}) |
| modifiedFrom | ISO-8601 datetime | modifiedFrom=2017-01-01T00:00:00+01:00 <br/> See [Created and modified]({% link content/search_api_3/latest/searching/offers/created-and-modified.md %}) |
| modifiedTo | ISO-8601 datetime | modifiedTo=2017-01-01T00:00:00+01:00 <br/> See [Created and modified]({% link content/search_api_3/latest/searching/offers/created-and-modified.md %}) |
| minAge | integer | minAge=12 <br/> See [Age]({% link content/search_api_3/latest/searching/offers/age.md %}) |
| minPrice | numeric | minPrice=9.99 <br/> See [Price]({% link content/search_api_3/latest/searching/offers/price.md %}) |
| organizerId | uuid | organizerId=7d1f485d-dab5-4ad2-8894-322060a2bc52 <br/> See [Id]({% link content/search_api_3/latest/searching/offers/id.md %}) |
| postalCode | integer or string | postalCode=3000 <br/> See [offers/address]({% link content/search_api_3/latest/searching/offers/address.md %}) and [organizers/address]({% link content/search_api_3/latest/searching/organizers/address.md %}) |
| price | numeric | price=5 <br/> See [Price]({% link content/search_api_3/latest/searching/offers/price.md %}) |
| q | Query string syntax| q=(wandeling OR wandelen) AND femma <br/> See [Advanced queries]({% link content/search_api_3/latest/reference/advanced-queries.md %}) and [offers/free-text-search]({% link content/search_api_3/latest/searching/offers/free-text-search.md %}) and [organizers/free-text-search]({% link content/search_api_3/latest/searching/organizers/free-text-search.md %}) |
| regions | region id | regions=nis-24062 <br/> See [Geosearch]({% link content/search_api_3/latest/searching/offers/geosearch.md %}) |
| start | integer | start=10 <br/> See [Pagination]({% link content/search_api_3/latest/getting-started/pagination.md %}) |
| sort | supported values: score, availableTo / order: asc, desc | sort[availableTo]=asc <br/> See [Sorting]({% link content/search_api_3/latest/searching/offers/sorting.md %}) |
| termIds | UiTdatabank taxonomy | termIds[]=0.55.0.0.0 <br/> See See See [Terms]({% link content/search_api_3/latest/searching/offers/terms.md %}) |
| termLabels | UiTdatabank taxonomy | termLabels[]=Theatervoorstelling <br/> See [Terms]({% link content/search_api_3/latest/searching/offers/terms.md %}) |
| text | Query string syntax | text=(wandeling OR wandelen) AND femma <br/> See [Free text search]({% link content/search_api_3/latest/searching/offers/free-text-search.md %}) |
| uitpas | Boolean (true/false/*) | uitpas=true <br/> See [UiTPAS]({% link content/search_api_3/latest/searching/offers/uitpas.md %}) |
| website | string | website=http://www.publiq.be Looks for complete matches <br/> See [organizers/url]({% link content/search_api_3/latest/searching/organizers/url.md %}) |
| workflowStatus | supported values: DRAFT, READY_FOR_VALIDATION, APPROVED, REJECTED, DELETED | workflowStatus=READY_FOR_VALIDATION,APPROVED (default) <br/> See [Workflow status]({% link content/search_api_3/latest/searching/offers/workflow-status.md %}) |
