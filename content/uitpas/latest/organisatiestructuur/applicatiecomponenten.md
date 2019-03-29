---
---


# Applicatiecomponenten

Volgende applicatiecomponenten stellen de gebruikers in staat om hun taken uit te voeren.

## UiTPAS NFC kaart

De UiTPAS NFC kaart wordt gebruikt als fysieke identificatie van een persoon.

## UiTPAS mobiele applicatie

Met de UiTPAS app staat je UiTPAS op je smartphone. Je kan punten sparen door de QR-code op de spaarzuil (zie verder - onderdeel Checkin device) te scannen met je smartphone. Bekijk verder hoeveel punten je al spaarde en alle voordelen voor de locatie waar je een punt spaarde. Je kan met de app enkel punten sparen aan spaarzuilen die ook ingesteld zijn om een QR-code te tonen.

De app is beschikbaar voor [Android](https://play.google.com/store/apps/details?id=be.cultuurnet.uitpasapp) en [iOS](https://itunes.apple.com/be/app/uitpas/id1249270326?mt=8).

## Checkin device (CID)

Dit zijn autonome (onbemande) zuiltjes waar pashouders punten kunnen sparen. De zuil is gebouwd op Raspberry Pi technologie. Communicatie gebeurt over 3G, wifi of LAN.

Elk CID is een service consumer en is gekend in een kaartsysteem met een application key/secret.

Een CID wordt toegekend aan één of meerdere balies via het administrator dashboard. Alleen deze balies kunnen de CID beheren.

Er kan ingecheckt worden op een CID zodra deze is ingesteld op een event. Dat gebeurt volgens volgend algoritme:

* Indien de baliemedewerker manueel een event heeft geselecteerd op balie.uitpas.be wordt dit event gebruikt.

* Indien er maar 1 event beschikbaar is dat ofwel door de balie georganiseerd wordt ofwel de balie als locatie heeft, wordt dit event gekozen.

* Indien er meerdere events beschikbaar zijn, wordt het event gekozen waarvan het startuur het dichtstbij is.

Een pashouder die zijn UiTPAS tegen de NFC lezer van een CID houdt, zal inchecken op dit event, indien voldaan aan de restricties (tijdrestricties, maximum checkins per event).

Een CID kan ook andere functies vervullen:

* **Ticket** - via de CID kan je punten te sparen en pashouders die daartoe recht hebben, kunnen tickets aan reductietarief kopen voor een specifiek in te stellen event

* **Voordeel** - via de CID kan je inchecken om een specifiek voordeel om te ruilen

* **Lidmaatschap** - via de CID kan je inchecken om een lidmaatschap uit te lezen

## Publieke website

De publieke website kan de site van de stad of gemeente zijn of kan een aan het UiTPAS systeem toegwijde website zijn.

* Integratie met de UiTPAS backend kan via de [UiTPAS API]({% link content/uitpas_api/latest/start.md %}).

* publiq stelt daarnaast Drupal 7 modules ter beschikking voor integratie met UiTPAS. Meer technische informatie hierover, zie [https://github.com/cultuurnet/culturefeed/wiki/Culturefeed-UiTPAS](https://github.com/cultuurnet/culturefeed/wiki/Culturefeed-UiTPAS). Voorbeelden van dergelijke sites zijn [https://www.uitinmechelen.be](https://www.uitinmechelen.be) en [http://www.uitpaskempen.be](http://www.uitpaskempen.be).

## UiTPAS balie: desktop applicatie

Deze webapplicatie wordt gebruikt door baliemedewerkers om pashouders te registreren, pashouders een punt toe te kennen, welkomst/ruilvoordelen toe te kennen, UiTPAS’en te blokkeren, verkochte tickets aan kansenstatuut te registreren ...

[balie.uitpas.be](https://balie.uitpas.be) is een applicatie die draait binnen een JavaFX browser maar die ook via een normale browser toegankelijk is. De JavaFX browser maakt het mogelijk om kaarten te scannen via randappratuur (bvb. barcode scanner, NFC lezer, eID kaartlezer).

## UiTPAS balie: mobiele applicatie

Baliemedewerkers kunnen beschikken over de UiTPAS Balie-app waarmee ze
pashouders kunnen inchecken, informatie over de pashouder kunnen raadplegen,
welkomst- en ruilvoordelen toekennen en ticket sales kunnen registreren.

De app is beschikbaar voor [Android](https://play.google.com/store/apps/details?id=be.cultuurnet.uitpasmobile) en voor [iOS](https://itunes.apple.com/be/app/uitpas-balie/id1117438672?mt=8). De app is geschikt voor smartphones en tablets.

## Administrator dashboard

De kaartsysteembeheerder beschikt over een webapplicatie om defaults in te stellen, balies te activeren, kaarten te beheren en welkomst-/ruilvoordelen in te stellen. De KSB heeft bewerkrechten op alle pashouders, balies, voordelen, UiTPAS’en etc. die gelinkt zijn aan zijn kaartsysteem.
