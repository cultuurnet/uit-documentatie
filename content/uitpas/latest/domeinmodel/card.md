---
---

# Card

De UiTPAS wordt gebruikt als fysieke identificatie van een persoon. Een UiTPAS heeft volgende eigenschappen:


**NFC Chipnummer**  
De unieke identifier van de NFC chip van de kaart. Het UiTPAS systeem maakt gebruik van Mifare NFC kaarten. Momenteel worden volgende types ondersteund: Mifare Desfire 2k/4k/8k (gebruikt in Brussel en regio Aalst) en Mifare Ultralight (gebruikt tijdens het zomerfestival Cirk! in Aalst).
Er wordt voorts geen informatie opgeslagen op de NFC kaart. Het is bijgevolg mogelijk dat op een gegeven moment voor een andere drager dan een fysieke kaart zou worden gekozen.


**Kaartnummer** 
Een kaart wordt aan een pashouder verbonden via het kaartnummer. Het kaartnummer wordt fysiek op de UiTPAS geprint door de leverancier. Het bestaat uit 13 cijfers en is als volgt opgebouwd:

0xxxxx(1)  xxxxxx(2) x(3) x(4)

1. Optioneel prefix zoals ingesteld op kaartsysteem. Indien er een prefix wordt gebruikt, start dit steeds met 0 en bestaat het uit 5 digits.
2. volgnummer: 6 (indien prefix wordt gebruikt) of 11 digits (indien er geen prefix wordt gebruikt)
3. Indicatie of een pas al (1) dan niet (0) een kansenpas is.
4. Check digit volgens Luhn algoritme


**Balie**
De balie waar de kaart voor bestemd is, naar verzonden is, of verkocht is.

**Prijs**
De prijs die voor een UiTPAS registratie aangerekend wordt. Er kunnen prijzen ingesteld worden per type verkoop:

* FIRST_CARD - d.i. de eerste UiTPAS die een pashouder aanschaft
* CARD_UPGRADE - van toepassing als een kaarthouder dezelfde kaart in een andere regio wil gebruiken.
* EXTRA_CARD - van toepassing als de kaarthouder al over een UiTPAS beschikt maar voor een andere regio ook een aparte UiTPAS wil (verplicht igv kansenstatuut)
* LOSS_THEFT - van toepassing als een kaarthouder een nieuwe kaart wil omdat de vorige kaart gestolen of verloren werd.
* DEFECT - van toepassing als de pashouder een nieuwe kaart nodig heeft
* LOSS_KANSENSTATUUT - indien een pashouder geen recht meer heeft op het kansenstatuut moet hij een nieuwe kaart ontvangen.
* OBTAIN_KANSENSTATUUT - indien een pashouder recht krijgt op het kansenstatuut moet hij een nieuwe kaart ontvangen.


**Type**
Een UiTPAS kan volgende types hebben
* Kaart
* Sticker
* Sleutelhanger

**Status**
Een kaart kan één van volgende statussen hebben:
* Provisioned: kaartnummers zijn gegenereerd maar nog niet met een chipnummer gekoppeld. Gegenereerde kaartnummers worden aan de kaartleverancier bezorgd.
* Deleted: foutief gecreëerde kaarten verwijderd door de KSB
* Stock: chipnummers en kaartnummers zijn gekoppeld maar nog niet toegekend aan een balie
* Sent: verstuurd naar een balie
* Local_stock: aangekomen aan een balie (baliemedewerker bevestigt ontvangst)
* Active: toegekend aan een gebruiker
* Blocked: geblokkeerd
