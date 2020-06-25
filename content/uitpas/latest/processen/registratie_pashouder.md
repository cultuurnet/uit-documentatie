---
---

# Registratie van een pashouder

Registratie van een pashouder is het proces waarbij een pashouder voor het eerst in het UiTPAS ecosysteem bekend wordt gemaakt en hij/zij voor het eerst een lidmaatschap met één van de UiTPAS systemen krijgt.


![hh-pashouder-registreren](/img/hh-pashouder-registreren.png "hh-pashouder-registreren")


## Registratie pashouder zonder kansenstatuut

Baliemedewerkers registreren pashouders met minstens een kaartnummer. Via de UiTPAS balie applicatie scant de baliemedewerker de eID van de pashouder (of voert de eID gegevens manueel in), scant hij een UiTPAS kaart om het kaartnummer met de pashouder te connecteren, en registreert hij het e-mailadres. Het e-mailadres is niet verplicht. Om het e-mailadres niet te registreren moet de baliemedewerker het veld weliswaar actief uitschakelen.

De prijs die een pashouder voor een UiTPAS betaalt is instelbaar door de KSB. Een prijs wordt bepaald op basis van volgende parameters:
* leeftijd van de pashouder
* kansenstatuut
* reden voor activatie kaart
	* eerste kaart van de pashouder
	* verlies/diefstal
	* verkrijgen kansenstatuut
	* verliezen kansenstatuut
	* kaart bij upgrade (pashouder was reeds lid van een ander UiTPAS systeem)
	* extra kaart (pashouder is reeds lid van het systeem en wil hier een kaart)
* voucher (zie verder). Indien de KSB vouchers heeft aangemaakt, moet de prijzentabel ook voor vouchers worden ingevuld.

Een pashouder krijgt bij registratie eventueel meteen een aantal punten, zoals ingesteld door de KSB.



![hh-pashouder-registreren-2](/img/hh-pashouder-registerern-2.png "hh-pashouder-registreren-2")

## Registratie pashouder met kansenstatuut
Een kansenstatuut geeft recht op korting op ticket sales. Het toewijzen van kansenstatuut gebeurt op moment van registratie of aanpassing van pashoudergegevens, door een baliemedewerker van een balie die hiertoe gemachtigd is. Een kansenstatuut heeft volgende eigenschappen:

- Kaartsysteem  
een pashouder kan een kansenstatuut hebben binnen een of eventueel meerdere systemen.
- Vervaldatum  
Een kansenstatuut heeft een vervaldatum.


## Upgraden pashouder

Het upgraden van een pashouder is het proces waarbij een bestaande pashouder een extra lidmaatschap van een systeem krijgt. Pashouder x is bijvoorbeeld al lid van Paspartoe en wordt ook lid van UiTPAS Gent. Er kan geopteerd worden de pashouder voor dit nieuw systeem een nieuwe kaart te geven, maar dit is niet verplicht en beïnvloedt de functionaliteiten van de pashouder binnen het systeem niet.

> Uitzondering: voor een lidmaatschap met kansenstatuut zal steeds een kaart vereist zijn van dit systeem aangezien er op de kaart een fysieke aanduiding van kansenstatuut aanwezig is.



![hh-pashouder-upgraden](/img/hh-pashouder-upgraden.png "hh-pashouder-upgraden")

## Vouchers

Vouchers worden gebruikt om pashouders te registreren, te upgraden of een nieuwe kaart toe te kennen binnen een UiTPAS systeem aan een verschillende prijs dan deze ingesteld in het UiTPAS prijzenbeheer. De baliemedewerker dient hiertoe een geldig vouchernummer mee te geven met registratie van de pashouder.

De werking van vouchers is als volgt:

* De KSB maakt een “Vouchertype” aan. Een vouchertype bevat een naam, een omschrijving en een prefix
* De KSB genereert vouchernummers binnen een bepaald vouchertype. Op dit moment worden de UiTPAS prijzen zoals ingesteld in het UiTPAS prijzenbeheer gekopieerd voor dit vouchertype.
* De KSB kan tenslotte voor elke reden van activatie van een UiTPAS met voucher een verschillende prijs opgeven.
* De gegenereerde nummers kunnen allemaal slechts 1 maal worden gebruikt. De nummers kunnen worden gebruikt door elke registratiebalie van het kaartsysteem.

## Verlengen van een kansenstatuut

Het kansenstatuut van een pashouder heeft een vervaldatum. De kaartsysteembeheerder kan een grace period instellen tijdens dewelke zijn UiTPAS nog wel volledig functioneel is. Na het verlopen van de graceperiod wordt het lidmaatschap tussen pashouder en systeem waarbinnen het kansenstatuut vervallen is op kansenStatuut=expired gezet. De pashouder kan zodoende binnen dat systeem geen voordelen meer omruilen of tickets aan kansentarief kopen, ook niet met een niet-kansenpas van een ander kaartsysteem indien de pashouder deze bezit.

De mogelijke kaarten en lidmaatschappen van andere systemen worden niet aangeraakt. Het is dus mogelijk dat de pashouder kan verder sparen in een ander kaartsysteem omdat hij nog minstens één lidmaatschap mét geldige UiTPAS heeft.

Indien deze kansenpas de laatste kaart was van de pashouder, maar de pashouder wel nog een geldig lidmaatschap heeft in een ander systeem, zal hij bij de baliemedewerker van dat systeem een nieuwe niet-kansenpas kunnen krijgen.

Een baliemedewerker van een geautoriseerde registratiebalie kan een kansenstatuut verlengen tot een datum in de toekomst. De UiTPAS (kansenpas) zal terug werken als ervoor en het lidmaatschap wordt weer geldig.
Blokkeren kaart
Indien de pashouder dit vraagt of de baliemedewerker hier nood toe ziet, kan een kaart geblokkeerd worden door een baliemedewerker van een kaartsysteem waar de pashouder lid van is. Het is mogelijk dat een baliemedewerker van systeemA de kaart van systeemB dus blokkeert indien de pashouder lid is van beide systemen.

Het lidmaatschap tussen pashouder en systeem wordt niet aangetast, slechts de kaart wordt onbruikbaar. Indien de pashouder een andere niet-geblokkeerde kaart heeft, zal hij hiermee kunnen verder sparen en omruilen in alle systemen waar hij lid van is.

## Blokkeren lidmaatschap pashouder
Indien de kaartsysteembeheerder hier noodzaak toe ziet kan het lidmaatschap van een pashouder geblokkeerd worden. Dit kan niet door de baliemedewerker, enkel door de KSB.
Het blokkeren van lidmaatschap zal niet de pas(sen) blokkeren.
De pashouder zal binnen het geblokkeerde systeem geen voordelen meer kunnen omruilen. Indien hij nog lid is van minstens één systeem zal hij wel nog punten kunnen sparen op alle UiTPAS events.

## Nieuwe kaart toekennen aan een bestaande pashouder
Een baliemedewerker van een systeem kan een pashouder die reeds lid is van zijn systeem om verschillende redenen een nieuwe kaart uit het systeem toekennen.
* De kaart van de pashouder is geblokkeerd en de baliemedewerker geeft een nieuwe kaart om een van volgende redenen
	* Pashouder is de geblokkeerde kaart verloren of hij werd gestolen (loss_theft)
	* De kaart van Pashouder functioneert niet meer (defect)
	* Pashouder heeft kansenstatuut verloren en krijgt een niet-kansenpas (loss_kansenstatuut)
	* Pashouder heeft kansenstatuut verkregen en krijgt een kansenpas (obtain_kansenstatuut)
* De pashouder is lid van het systeem maar heeft geen kaart uit dit systeem (extra_card).

Puntentotaal, checkins en gegevens van de pashouder blijven ongewijzigd bestaan.
