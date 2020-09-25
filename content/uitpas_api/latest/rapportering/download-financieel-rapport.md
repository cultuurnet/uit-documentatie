---
---

# Download financieel rapport

_Method_
GET

_URL_
{prefix}/uitpas/report/financialoverview/organiser/{statusReportId}/download
waarbij {statusReportId} de id is van het status rapport

Parameters:

| **Naam** | **Type** | **Omschrijving** | **Verplicht** |
| --- | --- | --- | --- |
| balieConsumerKey | String | ConsumerKey van de balie waarvoor deze request wordt uitgevoerd. Deze parameter is niet verplicht. Standaard wordt de consumer key uit de oauth request gebruikt. Zie gebruik van andere balies door Service Consumer in punt 2.4 |  |

_Authenticatie_
[User access token]({% link content/authenticatie-autorisatie/latest/authenticatie-XML-apis/authenticatie-via-useraccesstoken.md %}) van de balie medewerker die de actie uitvoert

**Response**

<u>Bij succes</u>
HTTP 200 met een zip bestand en volgende HTTP headers:

| Content-Type | application/x-zip-compressed |
| --- | --- |
| Content-Disposition | attachment; filename=financialOverview_{BALIE_NAME}_{COMPLETION_DATE}.zip |

<u>Bij fouten</u>
HTTP 400 met een response body in XML formaat:

| code | ErrorCode van de fout:<br>UNKNOWN_BALIE_CONSUMERKEY<br>ACCESS_DENIED<br>UNKNOWN_REPORT_ID<br>INVALID_REPORT_STATUS |
| message | Beschrijving van de fout |

_Voorbeeld request_

GET {prefix}/uitpas/report/financialoverview/organiser/19/download?balieConsumerKey=57588868-EA2A-3A56-0AC173415A6D1BE7

_Voorbeeld response_

Een zip bestand dat een excel bestand bevat met het financieel rapport.
