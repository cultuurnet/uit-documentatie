---
---

# UiTPAS

Om je activiteit als UiTPAS-activiteit door te sturen, zijn een aantal extra velden verplicht.

## Organiser ID

UiTPAS-aanbod is steeds gelinkt aan een organisator. Daarom is het sturen van het juiste organiser ID verplicht bij elke UiTPAS-activiteit. Dit ID (cdbid) stuur je mee in de ```<label/>```-node, zoals in onderstaand voorbeeld:

```
<organiser>
<label cdbid="55CA2F39-A8CE-F67A-24C2FF99F9AFB1F6">CC Zwaneberg</label>
</organiser>
```

Het sturen van het juiste cdbid in de node zorgt er ook voor dat de organisator aanklikbaar is op UiTinVlaanderen en andere kanalen van UiT.

## Label

Voor elke UiTPAS-activiteit moet het label ('keyword') van de overeenkomstige UiTPAS-regio toegevoegd worden.

```
<keywords>
<keyword>UiTPAS Heist-op-den-Berg</keyword>
</keywords>
```

Elke UiTPAS-regio heeft zijn eigen label:

| Regio | Label |
| -- | -- |
| Brussel | Paspartoe |
| Gent | UiTPAS Gent |
| Oostende | UiTPAS Oostende |
| Aalst | UiTPAS Regio Aalst  |
| Dender | UiTPAS Dender |
| Zuidwest | UiTPAS Zuidwest |
| Mechelen | UiTPAS Mechelen |
| Kempen | UiTPAS Kempen |
| Maasmechelen | UiTPAS Maasmechelen |
| Leuven | UiTPAS Leuven |
| Lier | UiTPAS Lier |
| Heist-op-den-Berg | UiTPAS Heist-op-den-Berg |
| Meetjesland | UiTPAS Meetjesland |
| Westhoek | UiTPAS Westhoek |

## Prijs

Het is verplicht een prijs mee te geven bij elke UiTPAS-activiteit:

```
<price>
<pricevalue>9.00</pricevalue>
</price>
```

Het is ook mogelijk meerdere prijzen aan te maken in cdbxml. Zie hiervoor de sectie over [prijsinfo]({% link content/cdbxml/latest/tipsentricks/prijsinfo.md %})

## Tijdsinfo: aanvangsuur

Het is verplicht het aanvangsuur (en bij voorkeur ook het einduur) als volgt mee te sturen:


```
<calendar>
  <timestamps>
    <timestamp>
      <date>2010-12-12</date>
      <timestart>18:00:00</timestart>
      <timeend>20:00:00</timeend>
    </timestamp>
  </timestamps>
</calendar>
```

UiTdatabank zal ontbrekende begin- en einduren als volgt invullen:
- ontbrekend beginuur: 00:00:00
- ontbrekend einduur: 23:59:59

De UiTPAS-zuilen zullen met deze informatie rekening houden.
