---
---

# Software architectuur van de UiTPAS-zuil

De huidige CID bestaat uit een android tablet, waar android 7 op geintstaleerd is. 
Op deze tablet draait dan een aplicatie die het scannen van kaarten regelt. 

bij het opstarten van de tablet moet de balie medewerker de tablet ontsluiten met de code die gecomuniceerd is bij levering en dan de app toetsemming geven om kaarten te scannen door op OK te klikken. 

U kan de tablet beheren door de app te sluiten 
Men doet dit door in de app op de linkerbovenhoek van het scherm te klikken. dan de code in te geven en te "unpinnen" door tegelijk op direhoekje en vierkante in de benedenbalk te klikken. hierna ontsluit u de tablet (met diezelfde code) en klikt U daarna op het bolletje (in het midden onderaan) 
hierna komt u op een normale android tablet desktop uit en kan u vie de settings app de verschillende instellinegn beheren. 





## oude CID 


De vorige versie van de CID heeft als OS een Linux systeem (Raspbian, een versie van Debian) waar een Java FX applicatie op draait.

Het management op OS niveau van de CID gebeurt via ssh (pi@ipadress). Het IP-adres wordt weergegeven tijdens het opstarten van de zuil.

De Java applicatie staat samen met de configfiles in de home dir van de pi user (/home/pi).

* java app : pi-''versienummer''.jar
* config file : cid.config

Deze applicatie schrijft zijn logs naar de file /tmp/cid.log.

De laatste 50 records zijn zichtbaar met dit commando:

```
tail -n 50 /tmp/cid.log
```

De actuele logs zijn zichtbaar met dit commando. Je stopt dit commando via ctrl-c.

```
tail -f /tmp/cid.log
```

Deze logs staan opgeslagen in een tijdelijk filesystem. Herstarten van de zuil wist dus de logs.

De logs worden ook naar een monitoring server geschreven. Je kan deze bekijken met de monitoring app die je kan downloaden op [http://files.uitpas.be/CID_monitor/](http://files.uitpas.be/CID_monitor/)
