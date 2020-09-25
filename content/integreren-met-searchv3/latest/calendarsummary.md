---
---

# Calendar summary
The JSON body of each event contains a property _calendar summary_, but this property is deprecated. The calendar summary is now accessible as a microservice on a specific endpoint (see below).

## Use
You can use the calendar summary to display the summarized calendar information for an event or place object.

For the detail page, we don't recommend to display the calendar summary, but use the detailed calendarInfo from the JSON-LD projection instead.

## Base URL

```
https://io.uitdatabank.be/{events|places}/{id}/calsum
```

## calendarType
The Event or Place object has a calendarType property which can have one of the four following options:

* single
* multiple
* periodic
* permanent

## Parameters

| Parameter | required? | type    | value | Example |
| --------- | -------- | ------- | ----- | ------- |
| format    | required | string  | 'xs', 'sm', 'md' or 'lg' | ?format=md |
| style     | optional | string  | 'html' or 'text' (default: 'text') | ?style=html |
| langCode  | optional | string  | Format PHP locales, 'nl_BE', 'fr_BE', 'en_BE' or 'de_BE' (default: 'nl_BE') | ?langCode=fr_BE |
| hidePast  | optional | boolean | Default: false | ?hidePast=true |
| timeZone  | optional | string  | Default: 'Europe/Brussels' | ?timeZone=America/Detroit |

### format
(string) - required

We distinguish 4 output formats: extra small, small, medium and large.

**warning**
Not every output format is supported for every calendarType!

| calendarType  | xs | sm | md | lg |
| :---: | :---: | :---: | :---: | :---: |
| `single` | x | x | x | x |
| `multiple` | - | x | x | x |
| `periodic` | x | x | x | x |
| `permanent` | - | - | x | x |

Using an unsupported format will throw an exception.

#### Examples

**large**
```
GET https://io-test.uitdatabank.be/events/4ddcd176-5c1a-412d-b5d8-2398c10468aa/calsum?format=lg

vrijdag 28 juli 2017 van 22:00 tot 23:59
zaterdag 29 juli 2017 van 22:00 tot 23:59
zondag 30 juli 2017 van 17:00 tot 19:00
maandag 31 juli 2017 van 11:30 tot 13:30
```

**Medium**
```
GET https://io-test.uitdatabank.be/events/4ddcd176-5c1a-412d-b5d8-2398c10468aa/calsum?format=md

vrijdag 28 juli 2017
zaterdag 29 juli 2017
zondag 30 juli 2017
maandag 31 juli 2017
```

**Small**
```
GET https://io-test.uitdatabank.be/events/4ddcd176-5c1a-412d-b5d8-2398c10468aa/calsum?format=sm

Van 28 juli 2017 tot 31 juli 2017
```

### style
(string) - optional - Default value: text

It is possible to style the response in html or plaintext

#### Examples

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

### langCode
(string) - optional - Default value: 'nl_BE'

You can use this parameter to change the language of the output that the formatter will produce.

Currently works in nl, fr, de and en. The format here is standard PHP locales. For example 'fr_BE' or 'de_BE'.

### hidePastDates
(boolean) - optional - Default value: false

This parameter (when true) will only be used on offers with a calendarType 'multiple'. When 'true', dates in the past won't be included in the response.

### timeZone
(string) - optional - Default value: 'Europe/Brussels'

You can set a different timezone with this parameter. Supported timezones can be found in [this list](https://www.php.net/manual/en/timezones.php).
