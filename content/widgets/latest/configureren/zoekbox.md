---
---

# Zoekbox

Met een zoekbox bouw je een zoekformulier waarmee je surfers op je eigen site activiteiten kunnen zoeken.

In een zoekbox kan je - naast een header en footer - tot 4 elementen selecteren die naast of onder elkaar verschijnen, afhankelijk van de beschikbare schermbreedte.

## Naam zoekbox
Onder ‘Je selecteerde’ kan je je zoekbox een naam geven. Dit is enkel relevant indien je van plan bent een widget te maken met meerdere zoekboxen en/of zoekresultaten.

## Algemeen

* **URL resultatenpagina** bepaalt op welke pagina de zoekresultaten moeten openen
* **Label zoekknop** bepaalt de tekst die op de “Zoeken”-knop verschijnt.
* **Zoekparameters** bepaalt of er een extra query moet gebruikt worden voor deze zoekbox die het aantal resultaten voor een surfer beperkt. Hiervoor maak je gebruik van de [SAPI3-syntax]({% link content/search_api_3/latest/start.md %}).

## Header
Bepaal welke tekst en/of afbeelding er in de header verschijnt.

## Elementen
### 1. Soort
Dit is de eerste kolom van je zoekbox en laat toe een surfer toe te zoeken op een trefwoord. Deze functionaliteit staat standaard aangevinkt. Als je dit niet wilt, kan je checkbox ‘Zoeken op soort’ afvinken.

* **Label** bepaalt het label dat boven de zoekbox verschijnt
* **Suggestie** bepaalt de voorbeeldtekst die binnen de zoekbox verschijnt
* **Extra groepfilters** laten je toe [eigen filters]({% link content/widgets/latest/configureren/groepfilters.md %}) te maken op maat van je doelgroep.

### 2. Plaats
Dit is de tweede kolom van je zoekbox en laat een surfer toe te zoeken op een gemeente of locatienaam. Deze functionaliteit staat standaard aangevinkt. Als je dit niet wilt, kan je checkbox ‘Zoeken op plaats’ afvinken.


* **Label** bepaalt het label dat boven de zoekbox verschijnt
* **Suggestie** bepaalt de tekst die binnen de zoekbox verschijnt
* **Extra groepfilters** laten je toe [eigen filters]({% link content/widgets/latest/configureren/groepfilters.md %}) te maken op maat van je doelgroep.

### 3. Tijd
Dit is de derde kolom van je zoekbox en laat een surfer toe zijn zoekopdracht te beperken tot een periode. Deze functionaliteit staat standaard aangevinkt. Als je dit niet wilt, kan je checkbox ‘Zoeken op datum’ afvinken.

* **Label** bepaalt het label dat boven de zoekbox verschijnt
* **Suggestie** bepaalt de tekst die binnen de zoekbox verschijnt
* **Opties** bepaalt welke keuzeopties er getoond mogen worden
* **Standaardkeuze** bepaalt welke van de gekozen opties de standaardkeuze is
* **Extra groepfilters** laten je toe [eigen filters]({% link content/widgets/latest/configureren/groepfilters.md %}) te maken op maat van je doelgroep.

### 4. Extra opties
Dit is de meest rechtse of onderste kolom van je zoekbox en stelt je in staat om [eigen filters]({% link content/widgets/latest/configureren/groepfilters.md %}) te definiëren, op maat van jouw doelpubliek (bv. een filter op vakantieperiodes voor een kampensite, een filter op concertzalen voor een muziekblog, etc.). Deze functionaliteit staat standaard aangevinkt. Als je dit niet wilt, kan je checkbox ‘Extra groepfilters’ afvinken.

Je kan één of meerdere groepen toevoegen, bvb. een groep ‘vakantieperiodes’. Elke groep kan één of meerdere filters bevatten (bv. ‘paasvakantie 2018’, ‘zomervakantie 2018’)

#### Extra groepfilters
##### Groepen
* **Label** bepaalt het label dat boven de dropdown (lijst met één keuze) of checkboxlijst (meerdere keuzes) verschijnt
* **Suggestie** bepaalt de tekst die binnen de selectielijst verschijnt. De suggestie is niet van toepassing wanneer je bij ‘weergave’ voor ‘selectie (meerdere keuzes)’ kiest.
* **Weergave** bepaalt of de filteropties verschijnen in een dropdown (lijst met één keuze) of een checkboxlijst (meerdere keuzes).

##### Filters
- **Label** bepaalt het label van je filter(s)
- **Query:** elke filter heeft een query nodig. Deze query kan je bouwen obv. [SAPI 3 syntax]({% link content/json-ld/latest/start.md %}).

#### Toegankelijkheid

Het is mogelijk om je zoekbox uit te breiden met een zoek op toegankelijkheidsvoorzieningen. De groep bestaat uit 23 voorzieningen die opgedeeld zijn per doelgroep (bv. verstandelijke beperking). De groepfilters worden weergegeven in een lijst met meerdere keuzes (checkbox-groep) en laten de bezoeker van je agenda toe om de zoeken op toegankelijke evenementen.
