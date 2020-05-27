---
---

# Zoekbox
Met een zoekbox bouw je een zoekformulier waarmee je surfers op je eigen site activiteiten kunnen zoeken.

In een zoekbox kan je, naast een header een footer, verschillende elementen selecteren die naast of onder elkaar verschijnen, afhankelijk van de beschikbare schermbreedte.

## Configuratieopties
### Naam zoekbox
| Setting | Beschrijving | Voorbeeld |
| -- | -- | -- | 
| Je selecteerde | Bepaal de naam van het geselecteerde blok. | ```zoekbox-1```| 

### Algemeen

| Setting | Beschrijving | Voorbeeld |
| -- | -- | -- | 
| URL resultatenpagina | Deze instelling is enkel relevant wanneer je de zoekbox op een andere pagina plaats dan de zoekresultaten. In dat geval geef je hier hardcoded het pad van de pagina op waarop de zoekresultatenlijst staan. | ```https://www.uitinvlaanderen.be/agenda/e/x/``` |
| Label zoekknop | Bepaal de tekst die op zoek-knop moet verschijnen | ```zoeken``` |

### Header

| Setting | Beschrijving | Voorbeeld |
| -- | -- | -- | 
| Header | Bepaal welke tekst en/of afbeelding in de header verschijnt. | ```UiTinZerkegem``` | 

### Soort
Dit is de eerste kolom of rij van je zoekbox en laat toe een surfer toe te zoeken op een trefwoord. 

| Setting | Beschrijving | Voorbeeld of waarde |
| -- | -- | -- | 
| Zoeken op trefwoord | Bepaal of je de surfer de mogelijkheid wilt geven om te zoeken op trefwoord | ```[x] Zoeken op trefwoord``` |

Deze functionaliteit staat standaard aangevinkt. Als je dit niet wilt, kan je checkbox ‘Zoeken op trefwoord’ afvinken.

Wanneer je de setting ```Zoeken op trefwoord``` aanduidt, zijn ook volgende settings van toepassing:

| Setting | Beschrijving | Voorbeeld of waarde |
| -- | -- | -- | 
| Label | Bepaal welke tekst en/of afbeelding in de header verschijnt. | ```Wat``` | 
| Suggestie | Bepaal de voorbeeldtekst die in de zoekbox verschijnt | ```Zoek op trefwoord``` | 

Daarnaast kan je in deze kolom ook [extra groepfilters]({% link content/widgets/latest/configureren/groepfilters.md %}) toevoegen. Deze laten je toe eigen filters te maken op maat van je doelgroep.

### 2. Plaats
Dit is de tweede kolom of rij van je zoekbox en laat een surfer toe te zoeken op een gemeente en regio's

| Setting | Beschrijving | Voorbeeld of waarde |
| -- | -- | -- | 
| Zoeken op plaats | Bepaal of je de surfer de mogelijkheid wilt geven om te zoeken op gemeente en regio's | ```[x] Zoeken op plaats``` |

Deze functionaliteit staat standaard aangevinkt. Als je dit niet wilt, kan je checkbox ‘Zoeken op plaats’ afvinken.

Wanneer je de setting ```Zoeken op plaats``` aanduidt, zijn ook volgende settings van toepassing:

| Setting | Beschrijving | Voorbeeld of waarde |
| -- | -- | -- | 
| Label | Bepaal welke tekst en/of afbeelding in de header verschijnt. | ```Waar``` | 
| Suggestie | Bepaal de voorbeeldtekst die in de zoekbox verschijnt | ```Zoek op plaats``` | 

Ook hier kan je [extra groepfilters]({% link content/widgets/latest/configureren/groepfilters.md %})  toevoegen

### 3. Tijd
Dit is de derde kolom van je zoekbox en laat een surfer toe zijn zoekopdracht te beperken tot een periode. 

| Setting | Beschrijving | Voorbeeld of waarde |
| -- | -- | -- | 
| Zoeken op datum | Bepaal of je de surfer de mogelijkheid wilt geven om te zoeken op één of meerdere data | ```[x] Zoeken op datum``` |

Deze functionaliteit staat standaard aangevinkt. Als je dit niet wilt, kan je checkbox ‘Zoeken op datum’ afvinken.

Wanneer je de setting ```Zoeken op datum``` aanduidt, zijn ook volgende settings van toepassing:

| Setting | Beschrijving | Voorbeeld of waarde |
| -- | -- | -- | 
| Label | Bepaal welke tekst en/of afbeelding in de header verschijnt. | ```Waar``` | 
| Suggestie | Bepaal de voorbeeldtekst die in de zoekbox verschijnt | ```Zoek op plaats``` | 
| Opties | Bepaal welke keuzeopties er getoond mogen worden | ```Checkboxgroup``` | 
| Standaardkeuze | Bepaal welke van de gekozen opties de standaardkeuze is | ```Specifieke datum```| 
 
Tot slot kan je extra groepfilters toevoegen.

### 4. Extra opties
Dit is de meest rechtse komlom of onderste rij van je zoekbox en stelt je in staat om [eigen filters]({% link content/widgets/latest/configureren/groepfilters.md %}) te definiëren, op maat van jouw doelpubliek. Enkele voorbeelden:
- een filter op vakantieperiodes voor een kampensite
- een filter op concertzalen voor een muziekblog
- een filter op dansthema's voor een dansorganisatie
- ...

Deze functionaliteit staat standaard aangevinkt. Als je dit niet wilt, kan je checkbox ‘Extra groepfilters’ afvinken.

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
