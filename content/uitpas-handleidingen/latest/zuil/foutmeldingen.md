---
---

# Mogelijke foutmeldingen van de UiTPAS-zuil

## Nieuwe CID 

het meest voorkomende issue met de android CID is als de klok (of datum) fout staan. 

Je kan dit zien op het unlock scherm als je het toestel herstart 

normaal gezien synct het toetsel zijn klok met pool.ntp.org maar het kan zijn dat dit niet lukt (bijvoorbeeld omdat de firewall dit blokkeerd) 
het verkeergaat via UDP poort 123 duszog dat deze open staat in de firewall.

Als dit niet lukt(of even tijd gaat kosten) kan je eventueel de datum en klok manueel instellen. 

1. Klik in de rechterhoek van de tablet en unlock admin mode met de code 
2. druk even tegelijktijdig op driehoekje envierkantje op de onderbalk en unlock het lockscreen. 
3. druk nu op het bolletje in de onderbalk 
4. ga naar de settings (tandwieltje onderaan)
5. scroll naar beneden tot je "date and time" ziet staan
6. zet "Automatic date & time" uit en stel zowel dat datum als tijd in 
7. kijk ook even dat de timezone juist staat, (moet "Central european time" zijn) 
8. druk op bolletje en heropen de uitpas-app 





## oude CID 

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
