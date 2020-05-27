---
---

# Zoekbox
Met een zoekbox bouw je een zoekformulier waarmee je surfers op je eigen site activiteiten kunnen zoeken.

In een zoekbox kan je, naast een header een footer, verschillende elementen selecteren die naast of onder elkaar verschijnen, afhankelijk van de beschikbare schermbreedte.


## Configuratieopties
### Naam zoekbox


| Setting | Beschrijving | Waarde | Voorbeeld | 
| -- | ---- | -- | ---- |
| Je selecteerde | Bepaal de naam van het geselecteerde blok. | Tekst | ```zoekbox-1```| 



### Algemeen


| Setting | Beschrijving | Waarde | Voorbeeld | 
| -- | ---- | -- | ---------------- |
| URL resultatenpagina | Deze instelling is enkel relevant wanneer je de zoekbox op een andere pagina plaats dan de zoekresultaten. In dat geval geef je hier hardcoded het pad van de pagina op waarop de zoekresultatenlijst staan. | URL | ```https://www.uitinvlaanderen.be/agenda/e/x/``` | 
| Label zoekknop | Bepaal de tekst die op zoek-knop moet verschijnen | Tekst | ```Zoeken``` | 



### Header


| Setting | Beschrijving | Waarde | Voorbeeld | 
| -- | -- | -- | -- |
| Header | Bepaal welke tekst en/of afbeelding in de header verschijnt. | Tekst + afbeelding | ```UiTinZerkegem``` | 

### Soort
Dit is de eerste kolom of rij van je zoekbox en laat toe een surfer toe te zoeken op een trefwoord. 

| Setting | Beschrijving | Waarde | Voorbeeld | 
| -- | -- | -- | -- | 
| Zoeken op trefwoord | Bepaal of je de surfer de mogelijkheid wilt geven om te zoeken op trefwoord | [  ] / [x] | ```[x] Zoeken op trefwoord``` |

Deze functionaliteit staat standaard aangevinkt. Als je dit niet wilt, kan je checkbox ‘Zoeken op trefwoord’ afvinken.

Wanneer je de setting ```Zoeken op trefwoord``` aanduidt, zijn ook volgende settings van toepassing:

| Setting | Beschrijving | Waarde | Voorbeeld | 
| -- | -- | -- | -- | 
| Label | Bepaal welke tekst en/of afbeelding in de header verschijnt. | Tekst | ```Wat``` | 
| Suggestie | Bepaal de voorbeeldtekst die in de zoekbox verschijnt | Tekst | ```Zoek op trefwoord``` | 

Daarnaast kan je in deze kolom ook [extra groepfilters]({% link content/widgets/latest/configureren/groepfilters.md %}) toevoegen. Deze laten je toe eigen filters te maken op maat van je doelgroep.

### Plaats
Dit is de tweede kolom of rij van je zoekbox en laat een surfer toe te zoeken op een gemeente en regio's

| Setting | Beschrijving | Waarde | Voorbeeld | 
| -- | -- | -- | -- | 
| Zoeken op plaats | Bepaal of je de surfer de mogelijkheid wilt geven om te zoeken op gemeente en regio's | [  ] / [x] | ```[x] Zoeken op plaats``` |

Deze functionaliteit staat standaard aangevinkt. Als je dit niet wilt, kan je checkbox ‘Zoeken op plaats’ afvinken.

Wanneer je de setting ```Zoeken op plaats``` aanduidt, zijn ook volgende settings van toepassing:

| Setting | Beschrijving | Waarde | Voorbeeld | 
| -- | -- | -- | -- | 
| Label | Bepaal welke tekst en/of afbeelding in de header verschijnt. | Tekst | ```Waar``` | 
| Suggestie | Bepaal de voorbeeldtekst die in de zoekbox verschijnt | Tekst | ```Zoek op plaats``` | 

Ook hier kan je [extra groepfilters]({% link content/widgets/latest/configureren/groepfilters.md %})  toevoegen

### Tijd
Dit is de derde kolom van je zoekbox en laat een surfer toe zijn zoekopdracht te beperken tot een periode. 

| Setting | Beschrijving | Waarde | Voorbeeld | 
| -- | -- | -- | -- | 
| Zoeken op datum | Bepaal of je de surfer de mogelijkheid wilt geven om te zoeken op één of meerdere data | [  ] / [x] | ```[x] Zoeken op datum``` |

Deze functionaliteit staat standaard aangevinkt. Als je dit niet wilt, kan je checkbox ‘Zoeken op datum’ afvinken.

Wanneer je de setting ```Zoeken op datum``` aanduidt, zijn ook volgende settings van toepassing:

| Setting | Beschrijving | Waarde | Voorbeeld | 
| -- | -- | -- | -- | 
| Label | Bepaal welke tekst en/of afbeelding in de header verschijnt. | Tekst | ```Waar``` | 
| Suggestie | Bepaal de voorbeeldtekst die in de zoekbox verschijnt | Tekst | ```Zoek op plaats``` | 
| Opties | Bepaal welke keuzeopties er getoond mogen worden | [ ] / [x] | ```[x] Vandaag``` | 
| Standaardkeuze | Bepaal welke van de gekozen opties de standaardkeuze is | Keuze uit dropdownmenu | ```Specifieke datum```| 
 
Tot slot kan je extra groepfilters toevoegen.

### Extra opties
Dit is de meest rechtse komlom of onderste rij van je zoekbox en stelt je in staat om [eigen filters]({% link content/widgets/latest/configureren/groepfilters.md %}) te definiëren, op maat van jouw doelpubliek. Enkele voorbeelden:
- een filter op vakantieperiodes voor een kampensite
- een filter op concertzalen voor een muziekblog
- een filter op dansthema's voor een dansorganisatie
- ...

Deze functionaliteit staat standaard aangevinkt. Als je dit niet wilt, kan je checkbox ‘Extra groepfilters’ afvinken.

#### Extra groepfilters


Deze functionaliteit staat standaard afgevinkt. Als je gebruik wil maken van groepfilters, moet je de checkbox ‘Extra groepfilters' aanvinken.

Wanneer je de setting ```Extra groepfilters``` activeert, zijn ook volgende settings van toepassing:

**Groepen**

| Setting | Beschrijving | Waarde | Voorbeeld | 
| -- | -- | -- | -- | 
| Label | Bepaal welke tekst boven de dropdown (lijst met één keuze) of checkboxlijst (meerdere keuzes) verschijnt | Tekst | ```Concertzalen``` | 
| Suggestie | Bepaal de tekst die binnen de selectielijst verschijnt. De suggestie is niet van toepassing wanneer je bij ‘weergave’ voor ‘selectie (meerdere keuzes)’ kiest | Tekst | ```Selecteer een concertzaal``` | 
| Weergave | Bepaal of de filteropties verschijnen in een dropdown (lijst met één keuze) of een checkboxlijst (meerdere keuzes). | ( ) / (X) | ```(x) Lijst (één keuze)``` | 


**Filters**

| Setting | Beschrijving | Waarde | Voorbeeld | 
| -- | -- | -- | -- | 
| Label | Bepaal de tekst van je eigen gemaakte filter(s) | Tekst | ```Handelsbeurs Concertzaal```, ```Ancienne Belgique``` | 
| Query | Bepaal welk aanbod opgehaald moet worden aan de hand van een query. Dit is voor elke filter verplicht. Query's kan je bouwen aan de hand van [SAPI 3 syntax]({% link content/json-ld/latest/start.md %}). | Query volgens SAPI 3 syntax | ```location.label:"Handelsbeurs" Concertzaal```, ```location.label:"Ancienne Belgique"``` | 


### Toegankelijkheid

Het is mogelijk om je zoekbox uit te breiden met zoekfilters op toegankelijkheidsvoorzieningen. De filters en query's zijn al voorgedefinieerd, deze hoef je dus niet meer in te stellen.

De groep bestaat uit 23 voorzieningen die opgedeeld zijn per doelgroep (bv. verstandelijke beperking). De groepfilters worden weergegeven in een lijst met meerdere keuzes (checkbox-groep) en laten de bezoeker van je agenda toe om de zoeken op toegankelijke evenementen.


