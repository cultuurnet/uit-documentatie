---
---

## Gebruiksvoorbeelden

Ontwikkelaars die integraties opzetten met de services die publiq
aanbiedt connecteren voor alle niet-productieomgevingen van hun integratie
naar de testomgeving van de service (bv. Search API). Deze bevat een relevante
dataset en kan gezien worden als een "veilige" versie van productie om wijzigingen aan de data aan
te brengen.

Ontwikkelaars die werken aan de services zelf die publiq aanbiedt, gaan eerder
een progressie doorheen alle omgevingen gebruiken.

### Entry API-integratie

Wanneer een organisatie op geautomatiseerde wijze events wil exporteren naar UiTdatabank,
zet een externe ontwikkelaar een entry API-integratie op. Tijdens het testen van de integratie wordt geconnecteerd met
de testomgeving van UiTID, UiTdatabank en UiTinVlaanderen. Zo kunnen activiteiten toegevoegd worden
aan de set van geanonimiseerde productiedata die beschikbaar is in de testapplicatie, en kan het aanleveren van data end-to-end getest worden.


### Culturefeed-integratie

Wanneer door een externe ontwikkelaar een culturefeed-integratie wordt opgezet,
worden vooral UiTiD en Search API gebruikt als integratiepunten. Tijdens
ontwikkeling en testen van de culturefeed-integratie wordt normaal gezien
geconnecteerd naar de testomgevingen van UiTiD en Search API. Die bevatten een
dataset die zeer gelijkaardig is aan wat op productie beschikbaar is, en ook de
beschikbare featureset van deze testomgevingen is vrijwel identiek aan die van
productie.

Een externe ontwikkelaar mag de testomgevingen van UiTiD en Search API
beschouwen als stabiel en relevant voor latere integratie met productie.
Bovendien kan er zonder negatieve gevolgen data worden aangemaakt en gewijzigd.

### Toevoegen van functionaliteit aan de UiTdatabank

Een nieuwe feature voor de UiTdatabank wordt op vraag van publiq eerst door de ontwikkelaar in zijn
lokale omgeving geschreven (in een feature branch). Na unit testen, een lokale
functionele test en review wordt de feature branch gemerged in master en op de
acceptatieomgeving gedeployed.

Daar draaien automatische testen die zo compleet mogelijk de nieuwe en reeds
bestaande functionaliteit van de applicatie testen.  Daarna is deze omgeving
beschikbaar voor manuele testen door publiq.

Na positieve verificatie kan de nieuwe code worden gedeployed in de testomgeving.
Op dat moment wordt de nieuwe feature beschikbaar voor een groter
publiek en kunnen extra testen tegen een grote dataset worden gedraaid.

Wanneer dit allemaal slaagt kan de nieuwe feature in de productieomgeving
worden gedeployed.
