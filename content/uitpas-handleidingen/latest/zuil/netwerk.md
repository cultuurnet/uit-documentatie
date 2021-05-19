---
---

# Netwerk vereisten voor de UiTPAS-zuil


Achter op het toetsel vind U een ethernet aansluiting, waar U een netwerk-kabel kan aansluiten 
het toetsel verwacht een netwerk dat via DHCP de nodige instellingen uitdeeld. De overgrote meerderheid netwerken werken met DHCP voor het uitdelen van settings 

om de settings aan te passen moeten we eerst de app verlaten. 
Je verlaat de App door linksboven in het scherm te klikken , de code in te geven, dan onderaan tegelijkertijd op driehoekje en vierkantje te duwen. Dan unlocken met de code en dan even "bolletje" (bendeden midden op het scherm) 

hierna komt u op de desktop van de android tablet uit. 
## WIFI 
onder de settings app vind u in de afdeling netwerk een menu wifi, klik dit open en selecteer de wifi war u wenst mee te verbinden 
## Static IP 
als er geen DHCP , kan u een static IP instellen. 
u kan dit doen door in de settings app onder networks op "more" te klikken en ethernet te kiezen.
u ziet dan de huidige settings, en onderaan staat het type netwerk "ethernet IP mode" u kan deze aanpassen van DHCP naar static, en dan de nodige settings aanpassen ( IP , gateway, en DNS server) 
 






## oude toestel 
voor het oudere toetsel, gebaseerd op de raspberry pi is het iets complexer, U vind de uitleg hier onder 

### IP via DHCP

Om een IP adres (en gateway en dns) te verkrijgen rekent de zuil op dhcp. Het toegekende IP-adres wordt tijdens het opstarten weergegeven.

De zuil heeft een aantal open poorten nodig.

* TCP 443 naar www.uitid.be (176.34.136.29)
* TCP 80 naar www.uitid.be (176.34.136.29) & cidmonitor.lodgon.com (54.246.119.103)
* TCP 8080 naar cidmonitor.lodgon.com (54.246.119.103)
* UDP 123 (voor het contacteren van publieke ntp servers)

### Vast IP

Als een DHCP-server op de locatie niet mogelijk is, kan de zuil een vast IP-adres krijgen. Om dit te doen, zijn de onderstaande stappen belangrijk.

De zuil moet via een DHCP-netwerk verbonden worden met het netwerk. Zo kan er via ssh ingelogd worden op de zuil.

Hierna kunnen we de netwerk-instellingen wijzigen in het bestand /etc/network/interfaces. Om een vast IP-adres toe te kennen moeten we

```
iface eth0 inet dhcp
```

vervangen door (in dit voorbeeld is 192.168.1.130/24 het vaste IP-adres)

```
  iface eth0 inet static  
  address 192.168.1.130   
  netmask 255.255.255.0   
  network 192.168.1.0   
  broadcast 192.168.1.255   
  gateway 192.168.1.250
```

In het bestand /etc/resolv.conf moet ook de nameserver toegevoegd worden.
