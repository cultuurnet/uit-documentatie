---
---

# Organisator

UiTPAS-aanbod is steeds gelinkt aan een organisator. Om een event door te laten stromen naar het UiTPAS-systeem, moet het gelinkt zijn aan de juiste organisator. Om ervoor te zorgen dat een UiTPAS-evenement aan de juiste organisator in UiTdatabank hangt, stuur je het cdbid van de organiser mee in de ```<label/>```-node, zoals in onderstaand voorbeeld:

```
<organiser>
<label cdbid="55CA2F39-A8CE-F67A-24C2FF99F9AFB1F6">CC Zwaneberg</label>
</organiser>
```
Het sturen van het juiste cdbid in de node zorgt er ook voor dat de organisator aanklikbaar is op UiTinVlaanderen en andere kanalen van UiT.

Meer informatie over UiTPAS vind je [hier]({% link content/cdbxml/latest/tipsentricks/UiTPAS.md %}).
