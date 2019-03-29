---
---

## Definitie van de aangeboden omgevingen

![omgevingen](/img/omgevingen.png "omgevingen")

Een overzicht van de verschillende omgevingen die worden gebruikt
bij het ontwikkelen van of integreren met de software platformen die publiq
aanbiedt:

### Development - voor interne ontwikkelaars

De developmentomgeving situeert zich op de computer van een ontwikkelaar. Deze
omgeving benadert qua ondersteunende componenten zoveel mogelijk de andere
omgevingen (bv. door het gebruik van virtuele machines). Het is een volledig
afgesloten zandbak die de ontwikkelaar de vrijheid geeft om zonder risico
nieuwe functionaliteit te ontwikkelen.

Meestal wordt deze functionaliteit ontwikkeld in aparte "feature branches", die
de wijzigingen isoleren en toelaten om duidelijke reviews te laten doen door
andere ontwikkelaars. Na review wordt de code gewoonlijk gemerged in de master
branch van het versiebeheersysteem, en kan het deploymentproces beginnen. Bij
features die moeilijk in isolatie te testen zijn (o.a. integratie met externe
systemen) wordt soms in volgende omgevingen (bv. acceptatie) nog verder
gebruik gemaakt van de feature branches. Dit gebeurt altijd in onderling
overleg.

De applicatiedata kan via een gescript proces worden toegevoegd of kan door de
ontwikkelaar zelf worden ingevoerd.


### Acceptatie - voor interne ontwikkelaars

De eerste stap in deployment is de acceptatieomgeving. Hier worden alle nodige
stappen uitgevoerd om de applicatie beschikbaar te krijgen op deze omgeving.
In de regel wordt de code uit de master branch hiervoor gebruikt. In onderling
overleg kan hiervan afgeweken worden (bv. integratie met externe systemen
noodzakelijk, waardoor geen functionele testen kunnen gebeuren in isolatie).

De applicatiedata in deze omgeving wordt via een gescript proces toegevoegd en
wordt regelmatig opgefrist. Extra data toevoegen is mogelijk. Als die data
nodig is om features te testen, moet die ook worden toegevoegd aan het script
dat voor het opfrissen zorgt. Zo kan verzekerd worden dat ook na een refresh
de nodige data aanwezig blijft.

Na deployment worden in deze omgeving een reeks automatische testen (bv. correcte
werking nieuwe features, waken over regressies) uitgevoerd. Daarna wordt deze
omgeving door publiq gebruikt om functionele testen uit te voeren op de
beperkte dataset.

### Testing - voor externe ontwikkelaars

Na validatie van de testen in de acceptatieomgeving wordt de applicatie
gedeployed naar de testomgeving, mogelijk na merge in de master branch. Op
deze omgeving wordt de nieuwe functionaliteit beschikbaar voor externe
integratoren en partners.

De applicatiedata in deze omgeving is een geanonimiseerde kopie van de
productiedata. Dit laat toe om naast puur functionele testen ook relevante
performantietesten, bulkacties, ... uit te voeren. Er kan natuurlijk ook extra
data worden toegevoegd. Aangezien een deel van de data tijdsafhankelijk
is (events) wordt deze dataset periodiek opgefrist.
Hierbij wordt de data die toegevoegd werd via de testapplicatie overschreven door de kopie van de productiedata.



### Productie - voor eindgebruikers

De productieomgeving is de omgeving waar alle eindgebruikers op werken. Bij release van nieuwe features aan de
producten is dit ook het eindpunt van alle deployment.

Op alle andere omgevingen worden testen uitgevoerd die het vertrouwen in de
applicatie moeten vergroten, daar waar dit op de productieomgeving niet gebeurt. Een
productiedeploy wordt gestart nadat op de testomgeving de voorziene testen
slagen.
