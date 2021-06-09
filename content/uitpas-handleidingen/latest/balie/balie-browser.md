---
---

# Installatie van de UiTPAS beheerdersapplicatie (desktop)

Baliemedewerkers werken op desktop met een JavaFX-browser. Deze browser zorgt ervoor dat e-ID- en NFC-kaarten kunnen worden uitgelezen. Op deze manier is één installatie voldoende om iedereen met hetzelfde systeem te laten werken.

## Installatie

Op [files.uitpas.be/uitpas_browser.html](https://files.uitpas.be/uitpas_browser.html) vind je de meest recente stabiele versie van de UiTPAS browser.
Er is een folder voor oudere versies en een folder voor specifieke test-versies. De rootfolder geeft recentste stabiele versies weer. De balie browser vereist een **64 bits** versie van **Windows 7 of Windows 10**.

De .msi file kan je gewoon openen in Windows door te dubbelklikken. Elke build van de JavaFX-browser bevat steeds een volledige Java Runtime omgeving.

Momenteel wordt enkel Windows ondersteund voor de installatie van de balie browser. Voor MacOS en Linux zijn geen installaties voorhanden.

## Gebruik

De balie browser is ingesteld om default te openen op [balie.uitpas.be](https://balie.uitpas.be).

Van daar uit werkt alles zoals de website in een gewone browser zou werken met uitzondering van de input-velden:
* inlezen van e-id gegevens
* uitlezen van chipnummer NFC-kaart

## Debug-modus

Je kan de JavaFX-browser in debug-modus opstarten door in de rechterbovenhoek driemaal snel achter elkaar te klikken. In de debug-modus kan men volgende bewerkingen doen:
* e-id en NFC-lezers testen
* de browser naar een andere URL laten wijzen
* aangesloten terminals (lees: NFC/e-ID readers) oplijsten en vergelijken met ondersteunde toestellen
* handmatig proxy instellingen ingeven
* de exacte versie-informatie weergeven waar de balie-applicatie gebruik van maakt

## Proxy instellingen

De JavaFx gaat by default de proxy instellingen van de systeembrowser van de gebruiker overnemen. Het is ook mogelijk om handmatig afwijkende waarden in te stellen via de debug modus.

## Kaartlezer expliciet instellen

Standaard luistert de applicatie naar alle kaartlezers die geconfigureerd zijn door het systeem en ondersteund worden door de applicatie. Wil je echter uitdrukkelijk toegang beperken tot bepaalde kaartlezers (zowel eID als NFC), dan kan dit aan de hand van een configuratiebestand.

* Maak een map ".uitpas" aan in de hoofdmap voor deze gebruiker (C:\\Users\\%USERNAME%\\.uitpas
 * dit is niet mogelijk vanuit de verkenner. Gebruik hiervoor de command prompt (cmd) en het commando "*mkdir C:\\Users\\%USERNAME%\\.uitpas*"

* Ga in deze map en maak een bestand aan met de naam "balieappconfig.json" en geef het de volgende inhoud:
 * De naam van de eID-lezer en NFC-lezer kun je in de balie-app terugvinden door in UiTPAS Balie Console te gaan (driemaal klikken linksboven in de app) en onderaan de optie "bekijk terminals" aan te klikken. Bij de Aangesloten terminals vind je alle toestellen die de applicatie vindt op je computer.
 * Eronder vind je het overzicht van de erkende terminals. Als de volgende stap goed gelukt is, krijg je een korte lijst van erkende terminals

        {
          "nfcreader": [
            "Mijn NFC-lezer"   (,"Mijn Tweede NFC", ...)
          ],
          "eidreader": [
            "Mijn eID-lezer"    (,"Mijn Tweede eID", ...)
          ]
        }
Tot slot moet je ofwel even de applicatie opnieuw inladen, ofwel in het venster "Bekijk terminals" onderaan op "Configuratie opnieuw ophalen" klikken.
