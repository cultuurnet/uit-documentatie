---
---

# Status opvragen financieel rapport

_Method_
GET

_URL_
{prefix}/uitpas/report/financialoverview/organiser/{statusReportId}/status
waarbij {statusReportId} de id is van het status rapport

Parameters:

| **Naam** | **Type** | **Omschrijving** | **Verplicht** |
| --- | --- | --- | --- |
| balieConsumerKey | String | ConsumerKey van de balie waarvoor deze request wordt uitgevoerd. | x |

_Authenticatie_
[User access token]({% link content/authenticatie-autorisatie/latest/authenticatie-XML-apis/authenticatie-via-useraccesstoken.md %}) van de balie medewerker die de actie uitvoert

**Response**

<u>Bij succes</u>
HTTP 200 met een response body in XML formaat:

| code | ACTION_SUCCEEDED |
| --- | --- |
| message | wanneer generatie nog bezig is: Export in progress.<br> wanneer generatie klaar is: Export completed. |
| resource | wanneer generatie nog bezig is: URL om de status van het gestarte rapport op te vragen: {prefix}/uitpas/report/financialoverview/organiser/{REPORT_ID}/status<br> wanneer generatie klaar is: URL om het rapport te downloaden: {prefix}/uitpas/report/financialoverview/organiser/{REPORT_ID}/download<br>Indien de balieConsumerKey werd meegegeven, zal deze ook in de resource url gezet worden. |

<u>Bij fouten</u>
HTTP 400 met een response body in XML formaat:

| code | ErrorCode van de fout:<br>UNKNOWN_BALIE_CONSUMERKEY<br>ACCESS_DENIED<br>UNKNOWN_REPORT_ID<br>ACTION_FAILED |
| message | Beschrijving van de fout |

_Voorbeeld request_

GET {prefix}/uitpas/report/financialoverview/organiser/19/status?balieConsumerKey=57588868-EA2A-3A56-0AC173415A6D1BE7

_Voorbeeld response_


~~~xml
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response>
    <code>ACTION_SUCCEEDED</code>
    <message>Export completed.</message>
    <resource>/uitpas/report/financialoverview/organiser/19/download?consumerKey=57588868-EA2A-3A56-0AC173415A6D1BE7</resource>
</response>
~~~
