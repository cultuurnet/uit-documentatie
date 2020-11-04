---
---

# Balie

Een balie is een organisator van cultuur- of vrijetijdsaanbod en/of een locatie waar aanbod plaatsvindt, al kan een balie ook onafhankelijk van vrijetijdsevenementen bestaan. Een balie wordt aangemaakt in de UiTdatabank.

Een balie beschikt over volgende eigenschappen:

**Kaartsysteem** ```Verplicht```
Een balie behoort tot een kaartsysteem indien de overeenkomstige organisatie in de UiTdatabank het label (“marker”) van het bijhorende systeem heeft gekregen. Deze marker wordt door een bevoegde invoerder geplaatst, momenteel is dit CultuurNet Vlaanderen, op vraag van de KSB.

**Permissiegroepen** ```Verplicht```
Een balie behoort tot één of meerdere permissiegroepen (“UiTPAS groepen”). Die groep bepaalt in welk permissiemodel de balie zit. De groepen en hun permissies zelf zijn instelbaar door CultuurNet Vlaanderen indien er nood is tot aanpassing. Bij creatie van een kaartsysteem stelt CultuurNet Vlaanderen een default groep voor het systeem in. Elke nieuwe balie zal tot deze groep behoren. Volgende permissiegroepen worden gehanteerd:

* **Geautoriseerde registratiebalies**  
deze balies kunnen pashouders met en zonder kansenstatuut registreren. Zij hebben ook het recht om pashouders zonder INSZ te registreren.
* **Niet-geautoriseerde registratiebalies**  
deze balies kunnen pashouders registreren, maar alleen deze zonder kansenstatuut.
* **Mag MiA-pashouders van een andere gemeente aanmaken**
alleen balies binnen deze permissiegroep mogen pashouders met kansenstatuut registreren met woonplaats buiten de gemeente van de balie.
* **Checkin- en ticketbalies**  
deze balies kunnen pashouders inchecken, voordelen omruilen, en ticket sales doen.
* **Mag pashouders uit buitenland registreren**

**Baliemedewerkers** ```Optioneel```
Baliemedewerkers zijn personen die kunnen inloggen op de UiTPAS balie applicatie en naargelang de permissies van de groep waartoe de balie behoort overeenkomstige taken uitvoeren zoals punten toekennen en voordelen omruilen.

Per balie zijn er beheerders en leden. Een beheerder heeft het recht om leden toe te voegen. Beheerders en leden worden geïdentificeerd met UiTID.

Een persoon kan lid zijn van verschillende balies en heeft dan het recht om op die verschillende balies te werken. Naargelang de permissies van die balie zal de baliemedewerker permissies overerven.

>  Voorbeeld:  
Ann werkt in de bibliotheek Haaltert maar zit ook in de toneelvereniging. De bibliotheek is een niet-geautoriseerde registratiebalie en heeft dus de permissie om UiTPAS’en te verkopen. De toneelvereniging mag dit echter niet, maar tijdens de toneelvoorstelling kunnen wel punten gespaard worden. Ann logt in met haar UiTID. Het systeem detecteert dat ze lid is van twee balies. Geeft ze aan voor de bibliotheek te gaan werken op dat moment, zal ze UiTPAS’en mogen verkopen. Zit Ann echter bij de toneelvereniging dan zal ze geen UiTPAS’en mogen verkopen, maar wel de bezoekers punten laten sparen.

**Verdeelsleutels** ```Optioneel```
Verdeelsleutels worden toegekend aan balies door de KSB. De juiste werking van verdeelsleutels wordt verder besproken.

**Constraints** ```Optioneel```
De KSB kan op balie-niveau een constraint instellen die bepaalt hoeveel tickets een MIA kan kopen voor evenementen georganiseerd door deze balie.
