---
---

# Calendar summary
We provide two ways to get the calendar summary for an offer:
* calendar summary in the JSON response in SAPI 3
* separate calendar summary service

Regardless of the calendar summary you're using, the calendar summary will always include the status if applicable (see [status](https://documentatie.uitdatabank.be/content/search_api_3/latest/searching/offers/status.html))

## Calendar summary in SAPI 3
With the calendar summary in Search API 3 you can expand the JSON response with a calendar summary in a chosen format
* For one result (offer)
* For all results (offers) in the reponse

It is possible to request multiple formats at once.

### Recommended use
* You can use the `embedCalendarSummaries` parameter with or without `embed=true`
* We recommend to use the format `md` for the search results (and `lg` for events with calendarType `single`), and always use `lg` for the detailpage.
* In some cases (f.e. mobile apps) calendar summary `xs` can be useful 

### Base URL

```
https://search.uitdatabank.be/{events|places|offers}
```

### Parameters

| Parameter | required? | type    | value | Example |
| --------- | -------- | ------- | ----- | ------- |
| embedCalendarSummaries (text) | optional | string  | 'xs-text', 'sm-text', 'md-text' or 'lg-text' | ?embedCalendarSummaries[]=sm-text |
| embedCalendarSummaries (html) | optional | string  | 'xs-hmtl', 'sm-html', 'md-html' or 'lg-html' | ?embedCalendarSummaries[]=lg-html |

Past dates are hidden by default & the response will always be multilingual.
Note that is possible to request multiple formats at once (see examples below)

#### Examples
**xs-text**
```
GET https://search.uitdatabank.be/events/?embedCalendarSummaries[]=xs-text

"calendarSummary":{
   "nl":{
      "text":{
         "xs":"21 okt"
      }
   },
   "fr":{
      "text":{
         "xs":"21 oct"
      }
   },
   "de":{
      "text":{
         "xs":"21 Okt"
      }
   },
   "en":{
      "text":{
         "xs":"21 Oct"
      }
   }
}
```

**xs-html**

```
GET https://search.uitdatabank.be/events/?embedCalendarSummaries[]=xs-html

"calendarSummary":{
   "nl":{
      "html":{
         "xs":"<span class=\"cf-date\">21</span> <span class=\"cf-month\">okt</span>"
      }
   },
   "fr":{
      "html":{
         "xs":"<span class=\"cf-date\">21</span> <span class=\"cf-month\">oct</span>"
      }
   },
   "de":{
      "html":{
         "xs":"<span class=\"cf-date\">21</span> <span class=\"cf-month\">Okt</span>"
      }
   },
   "en":{
      "html":{
         "xs":"<span class=\"cf-date\">21</span> <span class=\"cf-month\">Oct</span>"
      }
   }
}

```


**sm-text (for a cancelled event)**

Note that the status of the event is added as a suffix in the calendar summary. 

```
GET https://search.uitdatabank.be/events/?embedCalendarSummaries[]=sm-text

"calendarSummary":{
   "nl":{
      "text":{
         "sm":"3 jun (geannuleerd)"
      }
   },
   "fr":{
      "text":{
         "sm":"3 juin (annulé)"
      }
   },
   "de":{
      "text":{
         "sm":"3 Juni (abgesagt)"
      }
   },
   "en":{
      "text":{
         "sm":"3 Jun (cancelled)"
      }
   }
}

```

**sm-html (for a cancelled event)**

Note that the status of the event is added as a suffix in the calendar summary

```
GET https://search.uitdatabank.be/events/?embedCalendarSummaries[]=sm-html

"calendarSummary":{
   "nl":{
      "html":{
         "sm":"<span class=\"cf-date\">3</span> <span class=\"cf-month\">jun</span> <span title=\"Deze activiteit is waarschijnlijk geannuleerd omwille van preventieve coronamaatregelen.\" class=\"cf-status\">(geannuleerd)</span>"
      }
   },
   "fr":{
      "html":{
         "sm":"<span class=\"cf-date\">3</span> <span class=\"cf-month\">juin</span> <span class=\"cf-status\">(annulé)</span>"
      }
   },
   "de":{
      "html":{
         "sm":"<span class=\"cf-date\">3</span> <span class=\"cf-month\">Juni</span> <span class=\"cf-status\">(abgesagt)</span>"
      }
   },
   "en":{
      "html":{
         "sm":"<span class=\"cf-date\">3</span> <span class=\"cf-month\">Jun</span> <span class=\"cf-status\">(cancelled)</span>"
      }
   }
}

```

**md-text for a single offer (place)**


```
GET https://search.uitdatabank.be/places/?embedCalendarSummaries[]=md-text

"calendarSummary":{
   "nl":{
      "text":{
         "md":"Open op ma, di, wo, do, vr"
      }
   },
   "fr":{
      "text":{
         "md":"Ouvert le lun., mar., mer., jeu., ven."
      }
   },
   "de":{
      "text":{
         "md":"öffnen Mo., Di., Mi., Do., Fr."
      }
   },
   "en":{
      "text":{
         "md":"Open at Mon, Tue, Wed, Thu, Fri"
      }
   }
}

```

**md-html for a single offer (place)**


```
GET https://search.uitdatabank.be/places/?embedCalendarSummaries[]=md-html

"calendarSummary":{
   "nl":{
      "html":{
         "md":"<span>Open op <span class=\"cf-weekdays\"><span class=\"cf-weekday-open\">ma</span>, <span class=\"cf-weekday-open\">di</span>, <span class=\"cf-weekday-open\">wo</span>, <span class=\"cf-weekday-open\">do</span>, <span class=\"cf-weekday-open\">vr</span></span></span>"
      }
   },
   "fr":{
      "html":{
         "md":"<span>Ouvert le <span class=\"cf-weekdays\"><span class=\"cf-weekday-open\">lun.</span>, <span class=\"cf-weekday-open\">mar.</span>, <span class=\"cf-weekday-open\">mer.</span>, <span class=\"cf-weekday-open\">jeu.</span>, <span class=\"cf-weekday-open\">ven.</span></span></span>"
      }
   },
   "de":{
      "html":{
         "md":"<span>öffnen <span class=\"cf-weekdays\"><span class=\"cf-weekday-open\">Mo.</span>, <span class=\"cf-weekday-open\">Di.</span>, <span class=\"cf-weekday-open\">Mi.</span>, <span class=\"cf-weekday-open\">Do.</span>, <span class=\"cf-weekday-open\">Fr.</span></span></span>"
      }
   },
   "en":{
      "html":{
         "md":"<span>Open at <span class=\"cf-weekdays\"><span class=\"cf-weekday-open\">Mon</span>, <span class=\"cf-weekday-open\">Tue</span>, <span class=\"cf-weekday-open\">Wed</span>, <span class=\"cf-weekday-open\">Thu</span>, <span class=\"cf-weekday-open\">Fri</span></span></span>"
      }
   }
}

```

**lg-text**


```
GET https://search.uitdatabank.be/events/?embedCalendarSummaries[]=lg-text

"calendarSummary":{
   "nl":{
      "text":{
         "lg":"Vrijdag 30 april 2021 van 14:00 tot 15:00\nVrijdag 7 mei 2021 van 14:00 tot 15:00\nVrijdag 14 mei 2021 van 14:00 tot 15:00\nVrijdag 21 mei 2021 van 14:00 tot 15:00\nVrijdag 28 mei 2021 van 14:00 tot 15:00\nVrijdag 4 juni 2021 van 14:00 tot 15:00\nVrijdag 11 juni 2021 van 14:00 tot 15:00\nVrijdag 18 juni 2021 van 14:00 tot 15:00\nVrijdag 25 juni 2021 van 14:00 tot 15:00\nVrijdag 2 juli 2021 van 14:00 tot 15:00\nVrijdag 9 juli 2021 van 14:00 tot 15:00\nVrijdag 16 juli 2021 van 14:00 tot 15:00\nVrijdag 23 juli 2021 van 14:00 tot 15:00\nVrijdag 30 juli 2021 van 14:00 tot 15:00\nVrijdag 6 augustus 2021 van 14:00 tot 15:00\nVrijdag 13 augustus 2021 van 14:00 tot 15:00\nVrijdag 20 augustus 2021 van 14:00 tot 15:00\nVrijdag 27 augustus 2021 van 14:00 tot 15:00\nVrijdag 3 september 2021 van 14:00 tot 15:00\nVrijdag 10 september 2021 van 14:00 tot 15:00\nVrijdag 17 september 2021 van 14:00 tot 15:00\nVrijdag 24 september 2021 van 14:00 tot 15:00\nVrijdag 1 oktober 2021 van 14:00 tot 15:00\nVrijdag 8 oktober 2021 van 14:00 tot 15:00\nVrijdag 15 oktober 2021 van 14:00 tot 15:00\nVrijdag 22 oktober 2021 van 14:00 tot 15:00\nVrijdag 29 oktober 2021 van 14:00 tot 15:00\nVrijdag 5 november 2021 van 14:00 tot 15:00\nVrijdag 12 november 2021 van 14:00 tot 15:00\nVrijdag 19 november 2021 van 14:00 tot 15:00\nVrijdag 26 november 2021 van 14:00 tot 15:00\nVrijdag 3 december 2021 van 14:00 tot 15:00\nVrijdag 10 december 2021 van 14:00 tot 15:00\nVrijdag 17 december 2021 van 14:00 tot 15:00\nVrijdag 24 december 2021 van 14:00 tot 15:00\nVrijdag 31 december 2021 van 14:00 tot 15:00"
      }
   },
   "fr":{
      "text":{
         "lg":"Vendredi 30 avril 2021 du 14:00 au 15:00\nVendredi 7 mai 2021 du 14:00 au 15:00\nVendredi 14 mai 2021 du 14:00 au 15:00\nVendredi 21 mai 2021 du 14:00 au 15:00\nVendredi 28 mai 2021 du 14:00 au 15:00\nVendredi 4 juin 2021 du 14:00 au 15:00\nVendredi 11 juin 2021 du 14:00 au 15:00\nVendredi 18 juin 2021 du 14:00 au 15:00\nVendredi 25 juin 2021 du 14:00 au 15:00\nVendredi 2 juillet 2021 du 14:00 au 15:00\nVendredi 9 juillet 2021 du 14:00 au 15:00\nVendredi 16 juillet 2021 du 14:00 au 15:00\nVendredi 23 juillet 2021 du 14:00 au 15:00\nVendredi 30 juillet 2021 du 14:00 au 15:00\nVendredi 6 août 2021 du 14:00 au 15:00\nVendredi 13 août 2021 du 14:00 au 15:00\nVendredi 20 août 2021 du 14:00 au 15:00\nVendredi 27 août 2021 du 14:00 au 15:00\nVendredi 3 septembre 2021 du 14:00 au 15:00\nVendredi 10 septembre 2021 du 14:00 au 15:00\nVendredi 17 septembre 2021 du 14:00 au 15:00\nVendredi 24 septembre 2021 du 14:00 au 15:00\nVendredi 1 octobre 2021 du 14:00 au 15:00\nVendredi 8 octobre 2021 du 14:00 au 15:00\nVendredi 15 octobre 2021 du 14:00 au 15:00\nVendredi 22 octobre 2021 du 14:00 au 15:00\nVendredi 29 octobre 2021 du 14:00 au 15:00\nVendredi 5 novembre 2021 du 14:00 au 15:00\nVendredi 12 novembre 2021 du 14:00 au 15:00\nVendredi 19 novembre 2021 du 14:00 au 15:00\nVendredi 26 novembre 2021 du 14:00 au 15:00\nVendredi 3 décembre 2021 du 14:00 au 15:00\nVendredi 10 décembre 2021 du 14:00 au 15:00\nVendredi 17 décembre 2021 du 14:00 au 15:00\nVendredi 24 décembre 2021 du 14:00 au 15:00\nVendredi 31 décembre 2021 du 14:00 au 15:00"
      }
   },
   "de":{
      "text":{
         "lg":"Freitag 30 April 2021 von 14:00 bis 15:00\nFreitag 7 Mai 2021 von 14:00 bis 15:00\nFreitag 14 Mai 2021 von 14:00 bis 15:00\nFreitag 21 Mai 2021 von 14:00 bis 15:00\nFreitag 28 Mai 2021 von 14:00 bis 15:00\nFreitag 4 Juni 2021 von 14:00 bis 15:00\nFreitag 11 Juni 2021 von 14:00 bis 15:00\nFreitag 18 Juni 2021 von 14:00 bis 15:00\nFreitag 25 Juni 2021 von 14:00 bis 15:00\nFreitag 2 Juli 2021 von 14:00 bis 15:00\nFreitag 9 Juli 2021 von 14:00 bis 15:00\nFreitag 16 Juli 2021 von 14:00 bis 15:00\nFreitag 23 Juli 2021 von 14:00 bis 15:00\nFreitag 30 Juli 2021 von 14:00 bis 15:00\nFreitag 6 August 2021 von 14:00 bis 15:00\nFreitag 13 August 2021 von 14:00 bis 15:00\nFreitag 20 August 2021 von 14:00 bis 15:00\nFreitag 27 August 2021 von 14:00 bis 15:00\nFreitag 3 September 2021 von 14:00 bis 15:00\nFreitag 10 September 2021 von 14:00 bis 15:00\nFreitag 17 September 2021 von 14:00 bis 15:00\nFreitag 24 September 2021 von 14:00 bis 15:00\nFreitag 1 Oktober 2021 von 14:00 bis 15:00\nFreitag 8 Oktober 2021 von 14:00 bis 15:00\nFreitag 15 Oktober 2021 von 14:00 bis 15:00\nFreitag 22 Oktober 2021 von 14:00 bis 15:00\nFreitag 29 Oktober 2021 von 14:00 bis 15:00\nFreitag 5 November 2021 von 14:00 bis 15:00\nFreitag 12 November 2021 von 14:00 bis 15:00\nFreitag 19 November 2021 von 14:00 bis 15:00\nFreitag 26 November 2021 von 14:00 bis 15:00\nFreitag 3 Dezember 2021 von 14:00 bis 15:00\nFreitag 10 Dezember 2021 von 14:00 bis 15:00\nFreitag 17 Dezember 2021 von 14:00 bis 15:00\nFreitag 24 Dezember 2021 von 14:00 bis 15:00\nFreitag 31 Dezember 2021 von 14:00 bis 15:00"
      }
   },
   "en":{
      "text":{
         "lg":"Friday 30 April 2021 from 14:00 till 15:00\nFriday 7 May 2021 from 14:00 till 15:00\nFriday 14 May 2021 from 14:00 till 15:00\nFriday 21 May 2021 from 14:00 till 15:00\nFriday 28 May 2021 from 14:00 till 15:00\nFriday 4 June 2021 from 14:00 till 15:00\nFriday 11 June 2021 from 14:00 till 15:00\nFriday 18 June 2021 from 14:00 till 15:00\nFriday 25 June 2021 from 14:00 till 15:00\nFriday 2 July 2021 from 14:00 till 15:00\nFriday 9 July 2021 from 14:00 till 15:00\nFriday 16 July 2021 from 14:00 till 15:00\nFriday 23 July 2021 from 14:00 till 15:00\nFriday 30 July 2021 from 14:00 till 15:00\nFriday 6 August 2021 from 14:00 till 15:00\nFriday 13 August 2021 from 14:00 till 15:00\nFriday 20 August 2021 from 14:00 till 15:00\nFriday 27 August 2021 from 14:00 till 15:00\nFriday 3 September 2021 from 14:00 till 15:00\nFriday 10 September 2021 from 14:00 till 15:00\nFriday 17 September 2021 from 14:00 till 15:00\nFriday 24 September 2021 from 14:00 till 15:00\nFriday 1 October 2021 from 14:00 till 15:00\nFriday 8 October 2021 from 14:00 till 15:00\nFriday 15 October 2021 from 14:00 till 15:00\nFriday 22 October 2021 from 14:00 till 15:00\nFriday 29 October 2021 from 14:00 till 15:00\nFriday 5 November 2021 from 14:00 till 15:00\nFriday 12 November 2021 from 14:00 till 15:00\nFriday 19 November 2021 from 14:00 till 15:00\nFriday 26 November 2021 from 14:00 till 15:00\nFriday 3 December 2021 from 14:00 till 15:00\nFriday 10 December 2021 from 14:00 till 15:00\nFriday 17 December 2021 from 14:00 till 15:00\nFriday 24 December 2021 from 14:00 till 15:00\nFriday 31 December 2021 from 14:00 till 15:00"
      }
```

**lg-html**

```
GET https://search.uitdatabank.be/events/?embedCalendarSummaries[]=lg-html

"calendarSummary":{
   "nl":{
      "html":{
         "lg":"<p class=\"cf-period\"> <time itemprop=\"startDate\" datetime=\"2020-09-01\"> <span class=\"cf-date\">1 september 2020</span> </time> <span class=\"cf-to cf-meta\">tot</span> <time itemprop=\"endDate\" datetime=\"2021-06-30\"> <span class=\"cf-date\">30 juni 2021</span> </time> </p>"
      }
   },
   "fr":{
      "html":{
         "lg":"<p class=\"cf-period\"> <time itemprop=\"startDate\" datetime=\"2020-09-01\"> <span class=\"cf-date\">1 septembre 2020</span> </time> <span class=\"cf-to cf-meta\">au</span> <time itemprop=\"endDate\" datetime=\"2021-06-30\"> <span class=\"cf-date\">30 juin 2021</span> </time> </p>"
      }
   },
   "de":{
      "html":{
         "lg":"<p class=\"cf-period\"> <time itemprop=\"startDate\" datetime=\"2020-09-01\"> <span class=\"cf-date\">1 September 2020</span> </time> <span class=\"cf-to cf-meta\">bis</span> <time itemprop=\"endDate\" datetime=\"2021-06-30\"> <span class=\"cf-date\">30 Juni 2021</span> </time> </p>"
      }
   },
   "en":{
      "html":{
         "lg":"<p class=\"cf-period\"> <time itemprop=\"startDate\" datetime=\"2020-09-01\"> <span class=\"cf-date\">1 September 2020</span> </time> <span class=\"cf-to cf-meta\">till</span> <time itemprop=\"endDate\" datetime=\"2021-06-30\"> <span class=\"cf-date\">30 June 2021</span> </time> </p>"
      }
   }
}

```

**xs-text & lg-html**

```
GET https://search.uitdatabank.be/events/?embedCalendarSummaries[]=sm-text&embedCalendarSummaries[]=lg-html

"calendarSummary":{
   "nl":{
      "text":{
         "sm":"Tot 30 jun 2021"
      },
      "html":{
         "lg":"<p class=\"cf-period\"> <time itemprop=\"startDate\" datetime=\"2020-09-01\"> <span class=\"cf-date\">1 september 2020</span> </time> <span class=\"cf-to cf-meta\">tot</span> <time itemprop=\"endDate\" datetime=\"2021-06-30\"> <span class=\"cf-date\">30 juni 2021</span> </time> </p>"
      }
   },
   "fr":{
      "text":{
         "sm":"Au 30 juin 2021"
      },
      "html":{
         "lg":"<p class=\"cf-period\"> <time itemprop=\"startDate\" datetime=\"2020-09-01\"> <span class=\"cf-date\">1 septembre 2020</span> </time> <span class=\"cf-to cf-meta\">au</span> <time itemprop=\"endDate\" datetime=\"2021-06-30\"> <span class=\"cf-date\">30 juin 2021</span> </time> </p>"
      }
   },
   "de":{
      "text":{
         "sm":"Bis 30 Juni 2021"
      },
      "html":{
         "lg":"<p class=\"cf-period\"> <time itemprop=\"startDate\" datetime=\"2020-09-01\"> <span class=\"cf-date\">1 September 2020</span> </time> <span class=\"cf-to cf-meta\">bis</span> <time itemprop=\"endDate\" datetime=\"2021-06-30\"> <span class=\"cf-date\">30 Juni 2021</span> </time> </p>"
      }
   },
   "en":{
      "text":{
         "sm":"Till 30 Jun 2021"
      },
      "html":{
         "lg":"<p class=\"cf-period\"> <time itemprop=\"startDate\" datetime=\"2020-09-01\"> <span class=\"cf-date\">1 September 2020</span> </time> <span class=\"cf-to cf-meta\">till</span> <time itemprop=\"endDate\" datetime=\"2021-06-30\"> <span class=\"cf-date\">30 June 2021</span> </time> </p>"
      }
   }
}
```


## Separate calendar summary service
With the separate calendar summary service you can expand the JSON response with a calendar summary in a chosen format, for only one result (offer) at a time. 

### Recommended use
* We recommend to use the format `md` for the search results (and `lg` for events with calendarType `single`), and always use `lg` for the detailpage
* By default, past dates are **not** excluded from the calendar summary. To hide past dates, you can use the `hidePast` parameter.
(and hide past dates)
* In some cases (f.e. mobile apps) calendar summary `xs` can be useful 
 
### Base URL

```
https://io.uitdatabank.be/{events|places}/{id}/calsum
```

### Parameters

| Parameter | required? | type    | value | Example |
| --------- | -------- | ------- | ----- | ------- |
| format    | required | string  | 'xs', 'sm', 'md' or 'lg' | ?format=md |
| style     | optional | string  | 'html' or 'text' (default: 'text') | ?style=html |
| langCode  | optional | string  | Format PHP locales, 'nl_BE', 'fr_BE', 'en_BE' or 'de_BE' (default: 'nl_BE') | ?langCode=fr_BE |
| hidePast  | optional | boolean | Default: false | ?hidePast=true |
| timeZone  | optional | string  | Default: 'Europe/Brussels' | ?timeZone=America/Detroit |

### format
(string) - required

We distinguish 4 output formats: 
* `xs` (extra small)
* `sm` (small)
* `md` (medium)
* `lg` (large) 

#### Examples

**large**

In the example below the status of the event is included in the calendar summary of the event. 

```
GET https://io-test.uitdatabank.be/events/4ddcd176-5c1a-412d-b5d8-2398c10468aa/calsum?format=lg

Vrijdag 28 juli 2017 van 22:00 tot 23:59 
Zaterdag 29 juli 2017 van 22:00 tot 23:59 
Zondag 30 juli 2017 van 17:00 tot 19:00 
Maandag 31 juli 2017 van 11:30 tot 13:30
```

**Medium**

```
GET https://io-test.uitdatabank.be/events/8015d4dd-ec92-47ee-aa11-4e19685437e5/calsum?format=md

Vrijdag 1 april 2022 (geannuleerd)
```

In the example above the status of the event is other than 'Available', and thus included in the calendar summary of the event. 

**Small**
```
GET https://io-test.uitdatabank.be/events/4ddcd176-5c1a-412d-b5d8-2398c10468aa/calsum?format=sm

Van 28 juli 2017 tot 31 juli 2017
```

#### style
(string) - optional - Default value: text

It is possible to style the response in html or plaintext

##### Examples

**text**
```
GET  https://io-test.uitdatabank.be/events/4ddcd176-5c1a-412d-b5d8-2398c10468aa/calsum?format=lg&style=text

vrijdag 28 juli 2017 van 22:00 tot 23:59
zaterdag 29 juli 2017 van 22:00 tot 23:59
zondag 30 juli 2017 van 17:00 tot 19:00
maandag 31 juli 2017 van 11:30 tot 13:30
```

**html**
```
GET https://io-test.uitdatabank.be/events/4ddcd176-5c1a-412d-b5d8-2398c10468aa/calsum?format=lg&style=html

<ul class="cnw-event-date-info">
    <li>
        <time itemprop="startDate" datetime="2017-07-28T22:00:00+02:00"><span class="cf-weekday cf-meta">vrijdag</span>
            <span class="cf-date">28 juli 2017</span> <span class="cf-from cf-meta">van</span>
            <span class="cf-time">22:00</span></time> <span class="cf-to cf-meta">tot</span>
        <time itemprop="endDate" datetime="2017-07-28T23:59:00+02:00"><span class="cf-time">23:59</span></time>
    </li>
    <li>
        <time itemprop="startDate" datetime="2017-07-29T22:00:00+02:00"><span class="cf-weekday cf-meta">zaterdag</span>
            <span class="cf-date">29 juli 2017</span> <span class="cf-from cf-meta">van</span>
            <span class="cf-time">22:00</span></time> <span class="cf-to cf-meta">tot</span>
        <time itemprop="endDate" datetime="2017-07-29T23:59:00+02:00"><span class="cf-time">23:59</span></time>
    </li>
    <li>
        <time itemprop="startDate" datetime="2017-07-30T17:00:00+02:00"><span class="cf-weekday cf-meta">zondag</span>
            <span class="cf-date">30 juli 2017</span> <span class="cf-from cf-meta">van</span>
            <span class="cf-time">17:00</span></time> <span class="cf-to cf-meta">tot</span>
        <time itemprop="endDate" datetime="2017-07-30T19:00:00+02:00"><span class="cf-time">19:00</span></time>
    </li>
    <li>
        <time itemprop="startDate" datetime="2017-07-31T11:30:00+02:00"><span class="cf-weekday cf-meta">maandag</span>
            <span class="cf-date">31 juli 2017</span> <span class="cf-from cf-meta">van</span>
            <span class="cf-time">11:30</span></time> <span class="cf-to cf-meta">tot</span>
        <time itemprop="endDate" datetime="2017-07-31T13:30:00+02:00"><span class="cf-time">13:30</span></time>
    </li>
</ul>
```

#### langCode
(string) - optional - Default value: 'nl_BE'

You can use this parameter to change the language of the output that the formatter will produce.

Currently works in nl, fr, de and en. The format here is standard PHP locales. For example 'fr_BE' or 'de_BE'.

#### hidePastDates
(boolean) - optional - Default value: false

This parameter (when true) will only be used on offers with a calendarType 'multiple'. When 'true', dates in the past won't be included in the response.

#### timeZone
(string) - optional - Default value: 'Europe/Brussels'

You can set a different timezone with this parameter. Supported timezones can be found in [this list](https://www.php.net/manual/en/timezones.php).
