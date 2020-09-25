---
---

# Endpoints

|  | Endpoint | Method | Beschrijving | Authenticatie |
| --- | --- | --- | --- | --- |
| 1 | /uitpas/balie/pos | GET | Points of Sale opzoeken | ConsumerRequest |
| 2 | /uitpas/balie/search | GET | Balies opzoeken | ConsumerRequest |
| 3 | /uitpas/balie/member | POST | Medewerker toevoegen aan balie | Balie medewerker |
| 4 | /uitpas/balie/removeMember | POST | Medewerker verwijderen van balie | Balie medewerker |
| 5 | /uitpas/balie/list | GET | Balies voor een medewerker opzoeken | UserAccessToken |
| 6 | /uitpas/balie/listEmployees | GET | Medewerkers voor een balie opzoeken | Balie medewerker |
| 7 | /uitpas/balie/countCards | GET | Opvragen voorraadtellers uitpassen | Balie medewerker |
| 8 | /uitpas/balie/terms | GET | Opvragen status gebruiksvoorwaarden baliemedewerker | Balie medewerker |
| 9 | /uitpas/balie/terms | POST | Aanvaarden gebruiksvoorwaarden baliemedewerker | Balie medewerker |
