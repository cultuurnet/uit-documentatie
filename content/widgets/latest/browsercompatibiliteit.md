---
---

# Browsercompatibiliteit
## Widgetbouwer
De widgetbouwer is 100% compatibel (zowel functioneel als qua design) met onderstaande browserversies:
* Google Chrome Desktop ~ laatste versie [Win/Mac]
* Firefox Desktop ~ 52.5.3esr [Win/Mac]
* EDGE Desktop (geen touch) ~ laatste versie [Win]
* Safari Desktop ~ laatste versie  [Mac]
* IE 11 Desktop  [Win]
* Google Chrome Mobile [Android] ~ laatste versie
* Safari Mobile [IOS / iPhone / iPad] ~ laatste versie
* IE Mobile 11 [Windows Phone]

Voor onderstaande browserversies is er volledige support van de functionaliteit, maar kan het design licht afwijken:
* Google Chrome Desktop ~ vorige, recente versies [Win/Mac]
* Firefox Desktop ~ vorige recente versies [Win/Mac]
* IE 10 Desktop [Win]
* Android browser 4+ [Android]
* Safari Mobile ~ vorige recente versies [IOS / iPhone / iPad]

Voor oudere browserversies en alternatieve browserapplicaties biedt publiq geen garanties qua compatibiliteit.

Specifiek voor Mozilla Firefox Quantum (versie 57.0.0 tot 59.0.0) is er een gekende bug met het weergeven van bepaalde elementen binnen de configuratietabel. De automatische update 59.0.0 verhelpt dit probleem.

## Agendawidgets
Voor de integratie van een UiT-widget moet je website voldoen aan een aantal (eenvoudige) technische vereisten.

1. De website moet URL-parameters toelaten. Widgets gebruiken een set van URL-parameters om te navigeren naar verschillende (detail-)pagina's.

2. Standaard laden de widgets jQuery 3.1.0 in. Je kan deze standaardinstelling uitschakelen bij gevanceerde instellingen. Dan moet jQuery op de pagina wel eerder geladen worden dan de scripttag (bv. in de head van de pagina).

