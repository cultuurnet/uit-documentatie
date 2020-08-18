---
---

# Opvragen financiele rapporteringsperiodes voor een balie

_Method_
GET

_URL_
{prefix}/uitpas/report/financialoverview/organiser/periods

Geeft een omgekeerd chronologische lijst van voorbije rapporteringsperiodes terug voor de opgegeven balie in de laatste 2 jaar.

Parameters:

| **Naam** | **Type** | **Omschrijving** | **Verplicht** |
| --- | --- | --- | --- |
| balieConsumerKey | String | ConsumerKey van de balie waarvoor deze request wordt uitgevoerd. | verplicht |

_Authenticatie_
User access token van de balie medewerker die de actie uitvoert

**Response**

<u>Bij succes</u>
HTTP 200 met een response body in XML formaat:

| naam | type |  omschrijving |
| --- | --- | --- |
| code | string | ACTION_SUCCEEDED |
| periods | lijst van Period objecten | anti-chronologische lijst van periodes uit de afgelopen 2 jaar.

Period object:

| naam | type |  omschrijving |
| --- | --- | --- |
| startDate | W3CDate | start van de periode |
| endDate | W3CDate | einde van de periode |


<u>Bij fouten</u>
HTTP 400 met een response body in XML formaat:

| naam | omschrijving
| --- | --- | 
| code | ErrorCode van de fout:<br>UNKNOWN_BALIE_CONSUMERKEY<br>ACCESS_DENIED<br>ACTION_FAILED |
| message | Beschrijving van de fout |

_Voorbeeld request_

~~~
GET {prefix}/uitpas/report/financialoverview/organiser/periods?balieConsumerKey=57588868-EA2A-3A56-0AC173415A6D1BE7
~~~

_Voorbeeld response_

~~~xml
<?xml version="1.0" encoding="UTF-8"?>
<response>
   <code>ACTION_SUCCEEDED</code>
   <periods>
      <period>
         <endDate>2020-06-30T23:59:59.999+02:00</endDate>
         <startDate>2020-04-01T00:00:00+02:00</startDate>
      </period>
      <period>
         <endDate>2020-03-31T23:59:59.999+02:00</endDate>
         <startDate>2020-01-01T00:00:00+01:00</startDate>
      </period>
      <period>
         <endDate>2019-12-31T23:59:59.999+01:00</endDate>
         <startDate>2019-10-01T00:00:00+02:00</startDate>
      </period>
      <period>
         <endDate>2019-09-30T23:59:59.999+02:00</endDate>
         <startDate>2019-07-01T00:00:00+02:00</startDate>
      </period>
      <period>
         <endDate>2019-06-30T23:59:59.999+02:00</endDate>
         <startDate>2019-04-01T00:00:00+02:00</startDate>
      </period>
      <period>
         <endDate>2019-03-31T23:59:59.999+02:00</endDate>
         <startDate>2019-01-01T00:00:00+01:00</startDate>
      </period>
      <period>
         <endDate>2018-12-31T23:59:59.999+01:00</endDate>
         <startDate>2018-10-01T00:00:00+02:00</startDate>
      </period>
      <period>
         <endDate>2018-09-30T23:59:59.999+02:00</endDate>
         <startDate>2018-07-01T00:00:00+02:00</startDate>
      </period>
   </periods>
</response>
~~~
