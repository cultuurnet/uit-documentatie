---
---

# Prijsinfo

## Één prijs

Het meegeven van één prijs moet gebeuren als numeriek getal, met punt voor de decimalen. 

### Voorbeeld

~~~ xml
<price> 
<pricevalue>9.00</pricevalue> 
</price> 
~~~

## Meerdere prijzen

Je kan meerdere prijzen importeren aan de hand van key-value pairs. Hierbij is het belangrijk dit volgens onderstaand formaat te doen, zodat deze juist doorkomen in het invoerformulier en op de outputkanalen. Enkel op volgende wijze, kunnen - indien van toepassing - ook de UiTPAS-kansentarieven correct berekend worden voor meerdere prijsklassen. 

~~~ xml
<price> 
<pricevalue>X.XX</pricevalue> (prijs dient aangegeven met punt voor decimalen)
<pricedescription>Basistarief: € X,XX; key: € value; key: € value; key: € value</pricedescription>
</price> (! prijs hier aangegeven met komma voor decimalen)
~~~

Pricedescription moet voldoen aan volgende voorwaarden, vooraleer deze te interpreteren als basis om prijsinfo te importeren 
- Eerste key/value pair begint met "Basistarief" als key 
- Een key bestaat enkel uit cijfers en letters met eventueel spaties (zonder gebruik van punten, komma's, haakjes of groter-dan/kleiner-dan tekens)
- De value van key Basistarief komt exact overeen met pricevalue
- Indien value een decimaal getal is, gebruik dan een komma en geen punt
- De opmaak van pricedescription is als volgt (indien 3 tarieven naast het basistarief doorgestuurd worden):

~~~ xml 
<pricedescription>Basistarief: € X,XX; key: € value; key: € value; key: € value</pricedescription> 
~~~

In alle andere gevallen wordt priceDescription genegeerd en wordt pricevalue als basistarief geïmporteerd.

### Voorbeeld

~~~ xml
<pricedescription>Basistarief: € 10,50; Leden: € 7,50; Studenten: € 5; Senioren: € 0</pricedescription>
~~~

