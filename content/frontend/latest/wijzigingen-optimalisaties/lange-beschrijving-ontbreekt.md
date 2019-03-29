---
jira: UIV-1930
---

# Onvolledige beschrijving van locaties

## Symptoom

Detailpagina's van het type actor tonen niet de volledige beschrijving.

## Oorzaak

Objecten van het type actor bestonden voor 2017 enkel uit een korte beschrijving (max 400 karakters).

Organisatoren kunnen sindsdien een beschrijving toevoegen die niet gelimiteerd is in aantal karakters. Deze beschrijving wordt net zoals die van activiteiten in een korte en lange beschrijving wordt opgedeeld (zie [Dubbele beschrijving van activiteiten]({% link content/frontend/latest/wijzigingen-optimalisaties/korte-lange-beschrijving.md %})).

## Mogelijke oplossing

Op de detailpagina van actoren moet ook het veld long_description geprint worden. Je kan hiervoor dezelfde werkwijze hanteren als bij activiteiten.
