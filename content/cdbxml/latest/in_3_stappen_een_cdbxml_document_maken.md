---
---

# In 3 stappen een CdbXML document maken

Om jouw evenementen te vertalen naar het XML-formaat van de UiTdatabank CdbXML 3.3 neem je drie stappen:

*   Stap 1: root node formatteren (/)
*   Stap 2: verplichte velden (cdbxml/event) opnemen
*   Stap 3: eventueel wenselijke velden (cdbxml/event) opnemen

Nadat je deze drie stappen doorlopen hebt is de informatie klaar om te verzenden naar de UiTdatabank.

Het CdbXML formaat ondersteunt daarnaast nog tal van andere velden en mogelijkheden. Je kan het het XML-schema raadplegen via [http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.3/FINAL/CdbXSD.xsd](http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.3/FINAL/CdbXSD.xsd).

## Stap 1: root node ("/")

De root node ziet er als volgt uit:

~~~xml
<?xml version="1.0" encoding="UTF-8"?>
<cdbxml
  xmlns="http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.3/FINAL"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.3/FINAL
  http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.3/FINAL/CdbXSD.xsd">
</cdbxml>
~~~

Het XML-document dat je aanlevert moet voldoen aan volgende vormvereisten:

*   De tekencodering dient te gebeuren volgens de <span class="emphasize">UTF-8 standaard.
*   Het XML-document moet <span class="emphasize">valid zijn. Hiervoor doe je een check tegen het CdbXML 3.3 XML-schema. Het XML-schema is beschikbaar op [http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.3/FINAL/CdbXSD.xsd](http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.3/FINAL/CdbXSD.xsd).


## Stap 2: verplichte velden ("cdbxml/event")

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
        <category type="eventtype" catid="0.50.4.0.0">Concert</category>
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

### //event/calendar

Tijdsinformatie. Het is verplicht aan te geven wanneer het event plaatsvindt. In de meeste gevallen vindt een event plaats op één tijdstip, zoals in het voorbeeld. Je voegt hier best ook het aanvangsuur en het einduur aan toe:

~~~ xml
<calendar>
  <timestamps>
    <timestamp>
      <date>2010-12-12</date>
      <timestart>18:00:00</timestart>
      <timeend>20:00:00</timeend>
    </timestamp>
  </timestamps>
</calendar>
~~~

Let op, als een event op meer dan één tijdstip plaatsvindt, stuur je geen event object door per tijdstip maar voeg je binnen het betreffende event meerdere tijdstippen toe, of een periode, of geef je aan dat het een permanent aanbod is. Zie hiervoor in de sectie [Uitwisselingsformaat in XML]({% link content/cdbxml/latest/start.md %}).

### //event/categories/category/@catid="eventtype"

Informatie in de UiTdatabank wordt op de output kanalen verspreid via navigatierubrieken. Om opgenomen te worden in die rubrieken is het verplicht het type van het aanbod door te geven (vb. concert, film, theatervoorstelling, ...).

De UiTdatabank categorieën zijn beschikbaar via een API, meer informatie [hier]({% link content/categorisatie/latest/start.md %})

Het type van het aanbod is terug te vinden in het facet "eventtype" categorisation/item/@catid=eventtype.

Opmerking: de categorisatie biedt het type "Type onbepaald" (id 0.51.0.0.0) aan; aanleveren van aanbod met dit type zorgt er echter in veel gevallen voor dat het aanbod niet gepubliceerd wordt.

### //event/contactinfo

Het is verplicht contactinfo te voorzien waar de gebruiker terecht kan voor meer informatie. Dat kan een telefoonnummer zijn, een e-mailadres of een URL. Bij voorkeur voorzie je een "deep link". D.i. een link naar een webpagina die specifiek over het event gaat.

### //event/eventdetails/eventdetail/title

De naam van het event.

### //event/location

De locatie waar het event plaatsvindt. Verplicht is minstens de zipcode, het land en de gemeente te voorzien + de naam van de locatie.

Geef bij voorkeur ook een straat en een huisnummer zodat de UiTdatabank de correcte GIS coördinaten kan berekenen.

~~~ xml
<location>
  <address>
    <physical>
      <city>Brussel</city>
      <country>BE</country>
      <housenr>25</housenr>
      <street>Ursulinenstraat</street>
      <zipcode>1000</zipcode>
    </physical>
  </address>
  <label>Recyclart</label>
</location>
~~~


## Stap 3: wenselijke velden ("cdbxml/event")

~~~ xml
<?xml version="1.0" encoding="UTF-8"?>
<cdbxml xmlns="http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.3/FINAL">
    <event externalid="YourID">
      <agefrom>12</agefrom>
      <calendar>
        <timestamps>
          <timestamp>
            <date>2010-12-12</date>
            <timestart>18:00:00</timestart>
            <timeend>20:00:00</timeend>
          </timestamp>
        </timestamps>
      </calendar>
      <categories>
        <category type="eventtype" catid="0.50.4.0.0">Concert</category>
        <category type="theme" catid="1.8.3.1.0">Pop en rock</category>
      </categories>
      <contactinfo>
        <mail>info@info.be</mail>
      </contactinfo>
      <eventdetails>
        <eventdetail lang="nl">
          <media>
            <file main="true">
              <copyright>Auteur van de afbeelding</copyright>
              <filename>x.jpg</filename>
              <filetype>jpeg</filetype>
              <hlink>http://www.flickr.com/images/x.jpg</hlink>
              <mediatype>photo</mediatype>
            </file>
          </media>
          <shortdescription>Een beschrijving van maximaal 400 karakters.</shortdescription>
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
      <organiser>
        <label>Naam organisator</label>
      </organiser>
    </event>
</cdbxml>
~~~

### externalid

Zorg ervoor dat het externalid dat je meestuurt uniek is: begin het id met een unieke prefix die staat voor de aanleverende partner (vb. CCTEST_). Een externalid kan niet enkel bestaan uit cijfers. 


### /event/categories/category/@catid="theme"

Hierboven bij de verplichte velden stond beschreven dat het verplicht is het type aanbod te voorzien. Voor bepaalde types is het daarnaast zeer wenselijk dat je ook het "thema" meegeeft. Het thema beschrijft "waarover" het betreffende aanbod gaat. Bijv. bij film: horror, comedy, ... bij concert: pop en rock, klassieke muziek, jazz, ...

~~~ xml
<categories>
  <category type="eventtype" catid="0.50.4.0.0</category>
  <category type="theme" catid="1.8.3.1.0</category>
</categories>
~~~

De UiTdatabank categorieën zijn beschikbaar via een API, meer informatie [hier]({% link content/categorisatie/latest/start.md %})

Het thema is wenselijk bij volgende types: "concert", "film", "theatervoorstelling", "dansvoorstelling" en "cursus of workshop".

### //event/eventdetails/shortdescription

Een korte beschrijving van het event, maximum 400 karakters.

### //event/agefrom

Tal van kanalen gebruiken het agefrom veld om zich specifiek tot een leeftijdsgroep te richten, bijv. UiTmetVlieg.be.

### //event/media/file

Verhoog de zichtbaarheid van het event door een thumbnail toe te voegen, zoals in het voorbeeld.

Om aan te geven dat het media object dat je verzendt kan dienen als thumbnail voorzie je het attribuut main - //media/file/@main="true". Voeg de verplichte elementen filename, filetype en mediatype toe. Het element filename moet uniek zijn. Vergeet ook niet het copyright te vermelden. Dit is weliswaar niet verplicht voor een valid XML, maar het is ten zeerste aangeraden mee te geven wie de rechten op de afbeelding bezit.

Voeg in de node ```<mediatype>reservations</mediatype>``` toe, om een rechtstreekse ticketinglink toe te voegen aan het aanbod.

### //event/organiser

Organisator van het aanbod.
