---
---

# Integratie UiTPAS met een ticketing systeem

De UiTPAS API laat toe dat externe partijen, zoals kassa systemen, bepaalde functionaliteiten integreren in hun gebruikersschermen. De API is een RESTful, gedocumenteerde API, die voor authenticatie gebaseerd is op oAuth 1.0. 

Als algemene regel wordt gesteld dat UiTPAS steeds de master is van alle UiTPAS data , en dat geen UiTPAS-persoonsgegegevens opgeslagen worden in de externe ticketing applicatie, tenzij dit op vraag van de gebruiker is. Het kansenstatuut wordt om privacy redenen nooit opgeslagen in de externe applicatie. 
De UiTdatabank wordt gezien als master van de evenementen. Prijsinformatie e.d. wordt hier ingevoerd. 
De UiTPAS applicatie bepaalt tevens de kortingstarieven voor een pashouder en de beperkingen en ticketsales aan kortingen dienen steeds in uitpas geregistreerd te worden opdat de retributieregels correct verrekend kunnen worden. 

