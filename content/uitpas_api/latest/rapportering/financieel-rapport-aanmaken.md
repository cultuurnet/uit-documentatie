---
---

# Financieel rapport aanmaken

_Method_
POST

_URL_
{prefix}/uitpas/report/financialoverview/organiser

Parameters:

| **Naam** | **Type** | **Omschrijving** | **Verplicht** |
| --- | --- | --- | --- |
| balieConsumerKey | String | ConsumerKey van de balie waarvoor deze request wordt uitgevoerd. | x |
| startDate | W3C Date | Begindatum van de ticket sales die in het rapport komen. De datum wordt omgezet naar het begin van de dag. | x |
| endDate | W3C Date | Einddatum van de ticket sales die in het rapport komen. De datum wordt omgezet naar het einde van de dag. | x |

_Authenticatie_
[User access token]({% link content/authenticatie-autorisatie/latest/authenticatie-XML-apis/authenticatie-via-useraccesstoken.md %}) van de balie medewerker die de actie uitvoert

_Optional permission_
De volgende permissie kan aan een groep worden toegekend om de volledige namen in het rapport weer te geven: “namen weergeven in financiële rapporten”

**Response**

<u>Bij succes</u>
HTTP 200 met een response body in XML formaat:

| code | ACTION_SUCCEEDED |
| --- | --- |
| message | Export in progress. |
| resource | URL om de status van het gestarte rapport op te vragen: {prefix}/uitpas/report/financialoverview/organiser/{REPORT_ID}/status |

<u>Bij fouten</u>
HTTP 400 met een response body in XML formaat:

| code | ErrorCode van de fout:<br>UNKNOWN_BALIE_CONSUMERKEY<br>ACCESS_DENIED<br>MISSING_REQUIRED_FIELDS<br>PARSE_INVALID_DATE |
| message | Beschrijving van de fout |

_Voorbeeld request_

POST {prefix}/uitpas/report/financialoverview/organiser
balieConsumerKey=57588868-EA2A-3A56-0AC173415A6D1BE7&startDate=2014-08-01&endDate=2014-08-31

_Voorbeeld response_


~~~xml
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response>
    <code>ACTION_SUCCEEDED</code>
    <message>Export in progress.</message>
    <resource>/uitpas/report/financialoverview/organiser/19/status?consumerKey=57588868-EA2A-3A56-0AC173415A6D1BE7</resource> +
</response>
~~~
