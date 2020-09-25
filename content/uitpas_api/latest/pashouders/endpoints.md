---
---

# Endpoints

|  | Endpoint | Method | Beschrijving | Authenticatie |
| --- | --- | --- | --- | --- |
| 1 | /uitpas/passholder/uitpasPrice | GET | Ophalen prijs uitpas | Balie Medewerker |
| 2 | /uitpas/passholder/register | POST | Registeren van pashouder | Balie Medewerker |
| 3 | /uitpas/passholder/membership | POST | Registreren van lidmaatschap | Balie Medewerker |
| 4 | /uitpas/passholder/membership/delete | POST | Verwijderen van lidmaatschap | Balie Medewerker |
| 5 | /uitpas/passholder/{uitpasNumber}/resend_activation_mail | POST | Activatie email opnieuw versturen | Balie Medewerker |
| 6 | /uitpas/passholder/{uitpasNumber} | GET | Ophalen pashouder | Balie Medewerker |
| 7 | /uitpas/passholder/uid/{uid} | GET | Ophalen pashouder | Balie Medewerker |
| 8 | /uitpas/passholder/search | GET | Zoeken van pashouder | Comsumer Request |
| 9 | /uitpas/passholder/{uitpasNumber}/welcomeadvantages | GET | Ophalen welkomstvoordelen voor pashouder | Balie Medewerker |
| 10 | /uitpas/card | GET | Opzoeken van uitpasnummer | Consumer request |
| 11 | /uitpas/passholder/{uitpasNumber}/checkin | POST | Inchecken pashouder voor event | Balie Medewerker |
| 12 | /uitpas/passholder/{uitpasNumber}/cashInWelcomeAdvantage | POST | Verzilveren welkomstvoordeel | Balie Medewerker |
| 13 | /uitpas/passholder/pointsPromotions | GET | Ophalen omruilvoordelen | Consumer Request |
| 14 | /uitpas/passholder/{uitpasNumber}/cashInPointsPromotion | POST | Punten verzilveren | Balie Medewerker |
| 15 | /uitpas/passholder/{uitpasNumber}/cashedPointsPromotions | GET | Ophalen verzilverde omruilvoordelen voor pashouder. | Balie Medewerker |
| 16 | /uitpas/passholder/{uid}/uploadPicture | POST | Upload van e-id pasfoto | Balie Medewerker |
| 17 | /uitpas/passholder/{uitpasNumber} | POST | Update gegevens pashouder | Balie Medewerker |
| 18 | /uitpas/passholder/block/{uitpasNumber} | POST | Uitpas blokkeren | Balie Medewerker |
| 19 | /uitpas/promotion/welcomeAdvantages | GET | Opzoeken van welkomstvoordelen | Consumer request |
| 20 | /uitpas/passholder/uitpasNumber | GET | Uitpasnummer opzoeken op basis van het chipnummer | Balie Medewerker |
| 21 | /uitpas/passholder/newCard | POST | Nieuwe kaart registreren | Balie Medewerker |
| 22 | /uitpas/passholder/{uitpasNumber}/activation | GET | Activatie code opvragen op basis van geboortedatum | Consumer request |
| 23 | /uitpas/passholder/eventActions | GET | Acties voor een pashouder aan een balie opvragen | Balie Medewerker |
| 24 | /uitpas/passholder/eventActions | POST | Acties voor een pashouder aan een balie uitvoeren | Balie Medewerker |
| 25 | /uitpas/passholder/{uid}/register | POST | Bestaande pashouder registreren bij een nieuw kaartsysteem | Balie Medewerker |
| 26 | /uitpas/passholder/{uid}/{cardSystemId} | POST | Kaartsysteem specifieke pashouder gegevens aanpassen | Balie Medewerker |
| 27 | /uitpas/passholder/{uitpasNumber}/coupons | GET | Opzoeken van coupons | Balie Medewerker of eigenaar uitpas |
| 28 | /uitpas/passholder/{uitpasNumber}/coupons/{couponId} | GET | Opzoeken van een coupon | Balie Medewerker of eigenaar uitpas |
| 29 | {prefix}/uitpas/passholder/{uid}/optinpreferences | POST | Opt-In voorkeuren aanpassen |
