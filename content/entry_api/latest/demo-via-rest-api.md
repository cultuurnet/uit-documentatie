---
---

# Demo via REST API

Content beheer via jouw applicatie met de UiTdatabank als backend is eenvoudig. Doorloop volgende stappen en het wordt duidelijk:

1. **Demo app:** Op ```https://test.uitid.be/testconsumer/show.jsp``` vind je een demo app.
2. **Authenticatie:** Via de demo app kan je authenticeren met de user ```tools@cultuurnet.be``` met paswoord devel0per. Dat doe je door te klikken op "connect to culturefeed"
3. **Event toevoegen:** Na authenticatie kies je als token "User Access Token", als method "POST", als path ```/entry/test.rest.uitdatabank.be/api/v3/event```, als post type "post body" en als post body het onderstaande XML fragment

Dit deed je als je bovenstaande stappen correct uitvoerde:
- Je gebruikte de demo app waarvan de code op ```https://docs.google.com/file/d/0Bx6M5nQTlPnXN2EtNl9GSVRuTWc``` een deel is (De Jersey client, niet de JSP pagina's),
- Je voegde een event toe (of paste het aan als een andere developer je voor was) via UiTID in de testomgeving van de UiTdatabank
- Hoe met UiTID integreren vind je [hier]({% link content/uitid/latest/start.md %})
- De referentiegids over de Entry API vind je [hier]({% link content/entry_api/latest/start.md %})
- Over de code op ```https://docs.google.com/open?id=0B_fF2uswSjqbUEVYTDJIUXJaRmc```: De zip bevat een Maven project met daarin een voorbeeld om de UiTdatabank REST API aan te spreken met een Java/Jersey-client. Deel 1 is een UserAccessToken ophalen (beetje omslachtig, omdat je manueel naar de authorize url moet gaan, maar er komt uitleg bij als het het runt) Deel 2 is met dat token requests uitvoeren: een basic search en een event post. De URL en consumer key/secret moeten ingevuld worden in de class Settings. Alle requests hebben ook een logging filter zodat de hele request en response uitgeprint wordt. (handig om te debuggen)
XML fragment (zie ook in 3 stappen een CdbXML document opstellen)

~~~ xml
<?xml version="1.0" encoding="UTF-8"?>
<cdbxml xmlns="http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.3/FINAL">
    <event>
      <calendar>
        <timestamps>
          <timestamp>
            <date>2010-12-12</date>
          </timestamp>
        </timestamps>
      </calendar>
      <categories>
        <category type="eventtype" catid="0.50.4.0.0"/>
      </categories>
      <contactinfo>
        <mail>info@info.be</mail>
      </contactinfo>
      <eventdetails>
        <eventdetail lang="nl">
          <title>Event titel</title>
        </eventdetail>
      </eventdetails>
      <location>
        <address>
          <physical>
            <city>Brussel</city>
            <country>BE</country>
            <zipcode>1000</zipcode>
          </physical>
        </address>
        <label>Naam locatie</label>
      </location>
    </event>
</cdbxml>
~~~
