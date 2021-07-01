---
---
# huidige generatie CID 

## de klok en of de datum staat fout 
de tablet haalt normaal gezien het uur van het netwerk warmee hij verbonden is. 
dit is nodig omdat de communicatie met de backend over HTTPS gebeurt, en als de datum (en dan vooral het jaar) fout staat het certifikaat van de backend niet als geldig word aanzien. 
Beste is van de ntp server op het netwerk te fixen, maar u kan deze ook manueel aanpassen. 
Let op als u deze manueel aanpast kan het gebeuren dat u dit na een herstart opnieuw moet doen. 

om dit te doen klikt u in den linksbovenhoek en geef de code in 
hierna drukt u op de benedenbalk voor een seconde op driehoekje en vierkantje tegelijkertijd, nu komt u op het android lock screen uit 
hier ontsluit u met de code van de tablet om het pinnen van de app te ontsluiten. 
nu drukt u in de bendedenbalk op het bolletje 
nu komt u op de desktop van de tablet uit. 
benden in het scherm ziet u een settings icoontje, druk hier op. 
scroll todat u de "date and time" setting ziet staan 
zet hier automatische datum uit en stel de datum in ... let er ook op dat u zeker het juiste jaar kiest
kies ook de tijdzone hier, let op , de tijdzones zijn volgens uur geordened, niet op naam. 
druk nu beneden op het bolletje om terug naar de desktop te gaan, en start de uitpas app opnieuw door het icoontje daar aan te klikken





## er is geen internet verbiding (terwijl die er wel zou moeten zijn)  




# vorige generatie CID 
## Mogelijke foutmeldingen van de UiTPAS-zuil

Volgende foutmeldingen kunnen voorkomen:
1. Er is een technische storing
2. Er is geen netwerkverbinding
3. De SD-kaart kan niet worden gelezen

In veel gevallen zijn de issues op te lossen met een herstart van de zuil:
je duwt op de knop onderaan en wacht even tot de zuil uitvalt. 

Met een druk op dezelfde knop start je het toestel opnieuw.

Je kan de zuil ook vanop afstand heropstarten via ssh met het commando:

```
sudo reboot
```
