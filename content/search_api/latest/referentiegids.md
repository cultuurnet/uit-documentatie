---
---

# Referentiegids

Een overzicht van geïndexeerde velden & parameters, gefilterd op relevantie, met voorbeelden waarmee je events kan zoeken.

<a id="index"></a>


**Basis**

* [agefrom](#agefrom)
* [calendarsummary](#calendarsummary)
* [category_id](#category_id)
* [category_name](#category_name)
* [city](#city)
* [country](#country)
* [datetype](#datetype)
* [detail_lang](#detail_lang)
* [enddate](#enddate)
* [hasimage](#hasimage)
* [keywords](#keywords)
* [longdescription](#longdescription)
* [mail](#mail)
* [permanent](#permanent)
* [phone](#phone)
* [physical_gis](#physical_gis)
* [price](#price)
* [pricedescription](#pricedescription)
* [private](#private)
* [shortdescription](#shortdescription)
* [startdate](#startdate)
* [street](#street)
* [text](#text)
* [title](#title)
* [type](#type)
* [url](#url)
* [zipcode](#zipcode)


**Category**

* [category_actortype_id](#category_actortype_id)
* [category_actortype_name](#category_actortype_name)
* [category_eventtype_id](#category_eventtype_id)
* [category_eventtype_name](#category_eventtype_name)
* [category_facility_id](#category_facility_id)
* [category_facility_name](#category_facility_name)
* [category_misc_id](#category_misc_id)
* [category_misc_name](#category_misc_name)
* [category_publicscope_id](#category_publicscope_id)
* [category_publicscope_name](#category_publicscope_name)
* [category_targetaudience_id](#category_targetaudience_id)
* [category_targetaudience_name](#category_targetaudience_name)
* [category_theme_id](#category_theme_id)
* [category_theme_name](#category_theme_name)
* [exact_category_id](#exact_category_id)
* [exact_category_name](#exact_category_name)


**Contact**

* [contactinfo_city](#contactinfo_city)
* [contactinfo_country](#contactinfo_country)
* [contactinfo_housenr](#contactinfo_housenr)
* [contactinfo_physical_gis](#contactinfo_physical_gis)
* [contactinfo_street](#contactinfo_street)
* [contactinfo_zipcode](#contactinfo_zipcode)


**Location**

* [location_category_facility_id](#location_category_facility_id)
* [location_category_facility_name](#location_category_facility_name)
* [location_category_id](#location_category_id)
* [location_category_misc_id](#location_category_misc_id)
* [location_category_misc_name](#location_category_misc_name)
* [location_category_name](#location_category_name)
* [location_cdbid](#location_cdbid)
* [location_contactinfo_city](#location_contactinfo_city)
* [location_contactinfo_country](#location_contactinfo_country)
* [location_contactinfo_housenr](#location_contactinfo_housenr)
* [location_contactinfo_street](#location_contactinfo_street)
* [location_contactinfo_zipcode](#location_contactinfo_zipcode)
* [location_createdby](#location_createdby)
* [location_externalid](#location_externalid)
* [location_keywords](#location_keywords)
* [location_label](#location_label)
* [location_mail](#location_mail)
* [location_owner](#location_owner)
* [location_phone](#location_phone)
* [location_shortdescription](#location_shortdescription)
* [location_url](#location_url)


**Organiser**

* [organiser_category_facility_id](#organiser_category_facility_id)
* [organiser_category_facility_name](#organiser_category_facility_name)
* [organiser_category_id](#organiser_category_id)
* [organiser_category_misc_id](#organiser_category_misc_id)
* [organiser_category_misc_name](#organiser_category_misc_name)
* [organiser_category_name](#organiser_category_name)
* [organiser_cdbid](#organiser_cdbid)
* [organiser_contactinfo_city](#organiser_contactinfo_city)
* [organiser_contactinfo_country](#organiser_contactinfo_country)
* [organiser_contactinfo_housenr](#organiser_contactinfo_housenr)
* [organiser_contactinfo_street](#organiser_contactinfo_street)
* [organiser_contactinfo_zipcode](#organiser_contactinfo_zipcode)
* [organiser_keywords](#organiser_keywords)
* [organiser_label](#organiser_label)
* [organiser_language](#organiser_language)
* [organiser_mail](#organiser_mail)
* [organiser_owner](#organiser_owner)
* [organiser_phone](#organiser_phone)
* [organiser_shortdescription](#organiser_shortdescription)
* [organiser_title](#organiser_title)
* [organiser_url](#organiser_url)


**Performer**

* [performer_label](#performer_label)
* [performer_role](#performer_role)


**Publicatie**

* [availablefrom](#availablefrom)
* [availableto](#availableto)
* [cdbid](#cdbid)
* [createdby](#createdby)
* [creationdate](#creationdate)
* [externalid](#externalid)
* [lastupdated](#lastupdated)
* [lastupdatedby](#lastupdatedby)
* [owner](#owner)
* [pctcomplete](#pctcomplete)
* [title_sort](#title_sort)
* [validator](#validator)
* [wfstatus](#wfstatus)
* [past](#past)
* [unavailable](#unavailable)
* [allowwfstatusfilter](#allowwfstatusfilter)


**Sociaal**

* [attend_count](#attend_count)
* [comment_count](#comment_count)
* [like_count](#like_count)
* [recommend_count](#recommend_count)


<a id="agefrom"></a>
<h2>agefrom</h2>

```  int  ```

Startleeftijd vanaf wanneer een aanbod geschikt is. Geldig voor: events.

~~~
{BaseUrl}search?q=*:*&fq=agefrom:[6 TO 12]
~~~

[Terug naar index](#index)


<a id="attend_count">

<h2>attend_count</h2>

```  int  ```

Aantal keren geklikt op "Ik ga".

~~~
{BaseUrl}search?q=*:*&fq=attend_count:[10 TO *]
~~~

[Terug naar index](#index)


<a id="availablefrom"></a>
<h2>availablefrom</h2>

``` ts ```

Datum vanaf wanneer dit item mag verschijnen. Standaard is de filter [NOW TO *] ingesteld.

~~~
{BaseUrl}search?q=availableto:[NOW TO *] AND availablefrom:[* TO NOW]&fq=type:event&group=true
~~~

[Terug naar index](#index)


<a id="availableto">

<h2>availableto</h2>

``` ts ```

Datum tot wanneer het item mag verschijnen. (filter * TO NOW standaard ingesteld in service consumer abonnement).

~~~
{BaseUrl}search?q=availableto:[NOW TO *] AND availablefrom:[* TO NOW]&fq=type:event&group=true
~~~

[Terug naar index](#index)


<a id="calendarsummary"></a>
<h2>calendarsummary</h2>

``` string ```

Leesbare samenvatting van de gestructureerde tijdsinformatie. Geldig voor: events, actors.

~~~
{BaseUrl}search?q=calendarsummary:"02/07/14"
~~~

[Terug naar index](#index)


<a id="category_actortype_id"></a>
<h2>category_actortype_id</h2>

``` string ```

ID van de locatie-categorie.

~~~
{BaseUrl}search?q=category_actortype_id:"8.50.0.0.0"
~~~

[Terug naar index](#index)


<a id="category_actortype_name"></a>
<h2>category_actortype_name</h2>

``` string ```

Naam van de locatie-categorie.

~~~
{BaseUrl}search?q=category_actortype_name:"Sportcentrum"
~~~

[Terug naar index](#index)


<a id="category_eventtype_id"></a>
<h2>category_eventtype_id</h2>

``` string ```

ID van de aanbod-categorie.

~~~
{BaseUrl}search?q=category_eventtype_id:"0.50.6.0.0"
~~~

[Terug naar index](#index)


<a id="category_eventtype_name"></a>
<h2>category_eventtype_name</h2>

``` string ```

Naam van de aanbod-categorie.

~~~
{BaseUrl}search?q=category_eventtype_name:"Film"
~~~

[Terug naar index](#index)


<a id="category_facility_id"></a>
<h2>category_facility_id</h2>

``` string ```

ID van de voorzieningen-categorie.

~~~
{BaseUrl}search?q=category_facility_id:"3.15.0.0.0"
~~~

[Terug naar index](#index)


<a id="category_facility_name"></a>
<h2>category_facility_name</h2>

``` string ```

Naam van de voorzieningen-categorie.

~~~
{BaseUrl}search?q=category_facility_name:"Audiogids"
~~~

[Terug naar index](#index)


<a id="category_id"></a>
<h2>category_id</h2>

``` string ```

ID van de event-categorie. Geldig voor: events, actors.

~~~
{BaseUrl}search?q=category_id:2.2.4.0.0 OR category_id:2.2.3.0.0
~~~

[Terug naar index](#index)


<a id="category_misc_id"></a>
<h2>category_misc_id</h2>

``` string ```

ID van de 'misc'-categorie .

~~~
{BaseUrl}search?q=category_misc_id:"5.1.0.0.0"
~~~

[Terug naar index](#index)


<a id="category_misc_name"></a>
<h2>category_misc_name</h2>

``` string ```

Naam van de 'misc'-categorie.

~~~
{BaseUrl}search?q=category_misc_name:"Gesloten"
~~~

[Terug naar index](#index)

<a id="category_name"></a>
<h2>category_name</h2>

``` string ```

Naam van de categorie waar het event toe behoort. Meertalig. Geldig voor: events, actors.

~~~
{BaseUrl}search?q=category_name:Art%20de%20marionnettes
~~~

[Terug naar index](#index)


<a id="category_publicscope_id"></a>
<h2>category_publicscope_id</h2>

``` string ```

ID van de publieksbereik-categorie.

~~~
{BaseUrl}search?q=category_publicscope_id:"6.1.0.0.0"
~~~

[Terug naar index](#index)


<a id="category_publicscope_name"></a>
<h2>category_publicscope_name</h2>

``` string ```

Naam van de publieksbereik-categorie.

~~~
{BaseUrl}search?q=category_publicscope_name:"Lokaal"
~~~

[Terug naar index](#index)


<a id="category_targetaudience_id"></a>
<h2>category_targetaudience_id</h2>

``` string ```

ID van de doelgroepen-categorie.

~~~
{BaseUrl}search?q=category_targetaudience_id:"2.2.2.0.0"
~~~

[Terug naar index](#index)


<a id="category_targetaudience_name"></a>
<h2>category_targetaudience_name</h2>

``` string ```

Naam van de doelgroepen-categorie.

~~~
{BaseUrl}search?q=category_targetaudience_name:"Senioren"
~~~

[Terug naar index](#index)


<a id="category_theme_id"></a>
<h2>category_theme_id</h2>

``` string ```

ID van het thema.

~~~
{BaseUrl}search?q=category_theme_id:"1.43.0.0.0"
~~~

[Terug naar index](#index)


<a id="category_theme_name"></a>
<h2>category_theme_name</h2>

``` string ```

Naam van het thema.

~~~
{BaseUrl}search?q=category_theme_name:"Interculturele vorming"
~~~

[Terug naar index](#index)


<a id="cdbid"></a>
<h2>cdbid</h2>

``` string ```

ID van het item (guid). Geldig voor: events, actors.

~~~
{BaseUrl}search?q=cdbid:844d5927-3579-460f-aa77-f20c9db2f077&group=true
~~~

[Terug naar index](#index)


<a id="city"></a>
<h2>city</h2>

``` string ```

(Deel)gemeentenaam van de gemeente waar het event plaatsvindt, waar de organisatie zich bevindt. Geldig voor: events, actors.

~~~
{BaseUrl}search?q=city:[Aalter TO Antwerpen]&fq=type:event
~~~

[Terug naar index](#index)


<a id="comment_count"></a>
<h2>comment_count</h2>

``` int ```

Aantal keren dat een commentaar op het item werd geplaatst.

~~~
{BaseUrl}search?q=*:*&fq=comment_count:[10 TO *]
~~~

[Terug naar index](#index)


<a id="contactinfo_city"></a>
<h2>contactinfo_city</h2>

``` string ```

Gemeente bij de contactinformatie.

~~~
{BaseUrl}search?q=contactinfo_city:"Gent"
~~~

[Terug naar index](#index)


<a id="contactinfo_country"></a>
<h2>contactinfo_country</h2>

``` string ```

Land bij contactinformatie.

~~~
{BaseUrl}search?q=contactinfo_country:"BE"
~~~

[Terug naar index](#index)


<a id="contactinfo_housenr"></a>
<h2>contactinfo_housenr</h2>

Huisnummer bij contactinformatie.

~~~
{BaseUrl}search?q=contactinfo_housenr:"101"
~~~

[Terug naar index](#index)


<a id="contactinfo_physical_gis"></a>
<h2>contactinfo_physical_gis</h2>

``` string ```

GIS-code bij contactinformatie.

~~~
{BaseUrl}search?q=contactinfo_physical_gis:"50.818342,3.187166"
~~~

[Terug naar index](#index)


<a id="contactinfo_street"></a>
<h2>contactinfo_street</h2>

``` string ```

Straat bij contactinformatie.

~~~
{BaseUrl}search?q=contactinfo_street:"Veldstraat"
~~~

[Terug naar index](#index)


<a id="contactinfo_zipcode"></a>
<h2>contactinfo_zipcode</h2>

``` string ```

Postcode bij contactinformatie.

~~~
{BaseUrl}search?q=contactinfo_zipcode:"9000"
~~~

[Terug naar index](#index)


<a id="country"></a>
<h2>country</h2>

``` enum ```

ISO landcodes; land waar het event plaatsvindt, land waar de organisatie zich bevindt. Geldig voor: events, actors.

~~~
{BaseUrl}search?q=country:FR&group=event
~~~

[Terug naar index](#index)


<a id="createdby"></a>
<h2>createdby</h2>

``` string ```

Auteur van het item. Geldig voor: events, actors.

~~~
{BaseUrl}search?q=createdby:"luk.verhelst@gmail.com"&sort=lastupdated%20desc
~~~

[Terug naar index](#index)


<a id="creationdate"></a>
<h2>creationdate</h2>

``` ts ```

Datum waarop het item werd aangemaakt. Geldig voor: events, actors.

~~~
{BaseUrl}search?fq=creationdate:[2014-02-14T23:59:59.999Z TO *]&sort=creationdate desc&q=*:*&group=event
~~~

[Terug naar index](#index)


<a id="datetype"></a>
<h2>datetype</h2>

``` enum ```

Een extra veld om eenvoudig te filteren op veelgebruikte tijd ranges, en als facetFilter. Volgende mogelijkheden bestaan: today, tomorrow, thisweekend, nextweekend, next7days, next14days, next30days, next3months, next6months, next12months, permanent. Geldig voor: events.

~~~
{BaseUrl}search?q=*.*&datetype=permanent
~~~

[Terug naar index](#index)


<a id="detail_lang"></a>
<h2>detail_lang</h2>

``` enum ```

Taal waarin het object is beschreven. Opsomming van taalcodes. Geldig voor: events, actors.

~~~
{BaseUrl}search?q=detail_lang:en
~~~

[Terug naar index](#index)


<a id="enddate"></a>
<h2>enddate</h2>

``` ts ```

Einddatum van het event. Geldig voor: events.

~~~
{BaseUrl}search?q=*:*&fq=enddate:[NOW/DAY-1DAY TO NOW/DAY]&rows=1&group=true
~~~

[Terug naar index](#index)


<a id="exact_category_id"></a>
<h2>exact_category_id</h2>

``` string ```

(zie category_id) Gebruik dit veld indien je enkel resultaten wil krijgen van objecten waaraan deze categorie is toegekend en niet onderliggende catogrieën. Geldig voor: events, actors.

~~~
{BaseUrl}search?q=exact_category_id:2.2.4.0.0 OR exact_category_id:2.2.3.0.0
~~~

[Terug naar index](#index)


<a id="exact_category_name"></a>
<h2>exact_category_name</h2>

``` string ```

(zie category_id) Gebruik dit veld indien je enkel resultaten wil krijgen van objecten waaraan deze categorie is toegekend en niet onderliggende catogrieën. Geldig voor: events, actors.

~~~
{BaseUrl}search?q=exact_category_name:internationaal
~~~

[Terug naar index](#index)


<a id="externalid"></a>
<h2>externalid</h2>

``` string ```

ID van het object in de brondatabank. Hoofdlettergevoelig.

~~~
{BaseUrl}search?q=externalid:*ccbrugge*&fq=type:event&group=true
~~~

[Terug naar index](#index)


<a id="hasimage"></a>
<h2>hasimage</h2>

``` boolean ```

Gebruik dit veld indien je enkel resultaten wil krijgen van objecten met één of meerdere afbeeldingen (met mediatype=photo). Geldig voor: events, productions.

~~~
{BaseUrl}search?q=hasimage:true&fq=type:event&group=true
~~~

[Terug naar index](#index)


<a id="keywords"></a>
<h2>keywords</h2>

``` string ```

Tags gekoppeld aan het item. Geldig voor: events, actors.

~~~
{BaseUrl}search?q=keywords:(Paspartoe AND UiTPAS)
~~~

[Terug naar index](#index)


<a id="lastupdated"></a>
<h2>lastupdated</h2>

``` ts ```

Tijdstip waarop het item laatst aangepast werd. Geldig voor: events, actors.

~~~
{BaseUrl}search?q=*:*&rows=1&transform=list&sort=lastupdated%20desc
~~~

[Terug naar index](#index)


<a id="lastupdatedby"></a>
<h2>lastupdatedby</h2>

``` string ```

User name van de auteur van de laatste aanpassing. Geldig voor: events, actors.

~~~
{BaseUrl}search?q=lastupdatedby:"luk.verhelst@gmail.com"&sort=lastupdated%20desc
~~~

[Terug naar index](#index)


<a id="like_count"></a>
<h2>like_count</h2>

``` int ```

Aantal keren dat het item geliked werd. Geldig voor: events, actors.

~~~
{BaseUrl}search?q=*:*&fq=like_count:[10 TO *]
~~~

[Terug naar index](#index)


<a id="location_category_facility_id"></a>
<h2>location_category_facility_id</h2>

``` string ```

ID van de voorzieningen-categorie van de gekoppelde locatie.

~~~
{BaseUrl}search?q= location_category_facility_id:"3.15.0.0.0"
~~~

[Terug naar index](#index)


<a id="location_category_facility_name"></a>
<h2>location_category_facility_name</h2>

``` string ```

Naam van de voorzieningen-categorie van de gekoppelde locatie.

~~~
{BaseUrl}search?q=location_category_facility_name:"Audiogids"
~~~

[Terug naar index](#index)


<a id="location_category_id"></a>
<h2>location_category_id</h2>

``` string ```

ID van de categorie van de gekoppelde locatie.

~~~
{BaseUrl}search?q=*.*&fq=location_category_id:6.2.0.0.0
~~~

[Terug naar index](#index)


<a id="location_category_misc_id"></a>
<h2>location_category_misc_id</h2>

``` string ```

ID van de 'misc'-categorie van de gekoppelde locatie.

~~~
{BaseUrl}search?q=location_category_misc_id:"5.1.0.0.0"
~~~

[Terug naar index](#index)


<a id="location_category_misc_name"></a>
<h2>location_category_misc_name</h2>

``` string ```

Naam van de 'misc'-categorie van de gekoppelde locatie.

~~~
{BaseUrl}search?q=location_category_misc_name:"Gesloten"
~~~

[Terug naar index](#index)


<a id="location_category_name"></a>
<h2>location_category_name</h2>

``` string ```

Naam van de categorie van de gekoppelde locatie. Meertalig.

~~~
{BaseUrl}search?q=*.*&fq=location_category_name:regionaal
~~~

[Terug naar index](#index)


<a id="location_cdbid"></a>
<h2>location_cdbid</h2>

``` string ```

ID van de locatie waar het event plaatsvindt. Geldig voor: events.

~~~
{BaseUrl}search?q=*:*&fq=location_cdbid:3abe7c37-4423-4235-b38d-4c7871218695
~~~

[Terug naar index](#index)


<a id="location_contactinfo_city"></a>
<h2>location_contactinfo_city</h2>

``` string ```

Gemeente bij contactinformatie van de locatie.

~~~
{BaseUrl}search?q=organiser_contactinfo_city:"Gent"
~~~

[Terug naar index](#index)


<a id="location_contactinfo_country"></a>
<h2>location_contactinfo_country</h2>

``` enum ```

Land bij contactinformatie van de locatie.

~~~
{BaseUrl}search?q=location_contactinfo_country:"BE"
~~~

[Terug naar index](#index)


<a id="location_contactinfo_housenr"></a>
<h2>location_contactinfo_housenr</h2>

``` string ```

Huisnummer bij contactinformatie van de locatie.

~~~
{BaseUrl}search?q=location_contactinfo_housenr:34
~~~

[Terug naar index](#index)


<a id="location_contactinfo_street"></a>
<h2>location_contactinfo_street</h2>

``` string ```

Straat bij contactinformatie van de locatie.

~~~
{BaseUrl}search?q=location_contactinfo_street:*eldstraat*
~~~

[Terug naar index](#index)


<a id="location_contactinfo_zipcode"></a>
<h2>location_contactinfo_zipcode</h2>

``` string ```

Postcode bij contactinformatie van de locatie.

~~~
{BaseUrl}search?q=location_contactinfo_zipcode:*9000*
~~~

[Terug naar index](#index)


<a id="location_createdby"></a>
<h2>location_createdby</h2>

``` string ```

Maker van de locatie.

~~~
{BaseUrl}search/rest/search?q=*.*&fq=location_createdby:stien.pardon@kortenberg.be
~~~

[Terug naar index](#index)


<a id="location_externalid"></a>
<h2>location_externalid</h2>

``` string ```

Externe id van de locatie. Geldig voor: events.

~~~
{BaseUrl}search?q=location_externalid:"CDB:acfa42ec-a333-4318-9abd-b4bbcd13de11"
~~~

[Terug naar index](#index)


<a id="location_keywords"></a>
<h2>location_keywords</h2>

``` string ```

Tags gekoppeld aan de locatie.

~~~
{BaseUrl}search?q=*.*&fq=location_keywords:Paspartoe
~~~

[Terug naar index](#index)


<a id="location_label"></a>
<h2>location_label</h2>

``` string ```

Naam van de locatie.

~~~
{BaseUrl}search?q=location_label:*Vooruit*
~~~

[Terug naar index](#index)


<a id="location_mail"></a>
<h2>location_mail</h2>

``` string ```

Mailadres van de locatie waar het event plaatsvindt.

~~~
{BaseUrl}search?q=location_mail:*@telenet.be*
~~~

[Terug naar index](#index)


<a id="location_owner"></a>
<h2>location_owner</h2>

Eigenaar van de locatie waar het event plaatsvindt.

~~~
{BaseUrl}search?q=location_owner:invoerders+algemeen
~~~

[Terug naar index](#index)


<a id="location_phone"></a>
<h2>location_phone</h2>

``` string ```

Telefoon van de locatie waar het event plaatsvindt.

~~~
{BaseUrl}search?q=location_phone:*051*
~~~

[Terug naar index](#index)


<a id="location_shortdescription"></a>
<h2>location_shortdescription</h2>

``` string ```

Omschrijving van de locatie waar het event plaatsvindt.

~~~
{BaseUrl}search?q=location_shortdescription:*Ontmoetingscentrum*
~~~

[Terug naar index](#index)


<a id="location_url"></a>
<h2>location_url</h2>

``` string ```

URL van de locatie waar het event plaatsvindt.

~~~
{BaseUrl}search?q=location_url:*.be*
~~~

[Terug naar index](#index)


<a id="longdescription"></a>
<h2>longdescription</h2>

``` string ```

Uitgebreide omschrijving (> 400 karakters) over het item. Geldig voor: events, actors.

~~~
{BaseUrl}search?q=longdescription:clown&group=event
~~~

[Terug naar index](#index)


<a id="mail"></a>
<h2>mail</h2>

``` string ```

Mailadres.

~~~
{BaseUrl}search?q=mail:*@telenet.be&group=event
~~~

[Terug naar index](#index)


<a id="organiser_category_facility_id"></a>
<h2>organiser_category_facility_id</h2>

``` string ```

ID van de voorzieningen-categorie van de gekoppelde organisator.

~~~
{BaseUrl}search?q= location_category_facility_id:"3.15.0.0.0"
~~~

[Terug naar index](#index)


<a id="organiser_category_facility_name"></a>
<h2>organiser_category_facility_name</h2>

``` string ```

Naam van de voorzieningen-categorie van de gekoppelde organisator.

~~~
{BaseUrl}search?q=organiser_category_facility_name:"Audiogids"
~~~

[Terug naar index](#index)


<a id="organiser_category_id"></a>
<h2>organiser_category_id</h2>

``` string ```

ID van de categorie van de gekoppelde organisator.

~~~
{BaseUrl}search?q=*.*&fq=organiser_category_id:6.2.0.0.0
~~~

[Terug naar index](#index)


<a id="organiser_category_misc_id"></a>
<h2>organiser_category_misc_id</h2>

``` string ```

ID van de 'misc'-categorie van de gekoppelde organisator.

~~~
{BaseUrl}search?q=organiser_category_misc_id:"5.1.0.0.0"
~~~

[Terug naar index](#index)


<a id="organiser_category_misc_name"></a>
<h2>organiser_category_misc_name</h2>

``` string ```

Naam van de 'misc'-categorie van de gekoppelde organisator.

~~~
{BaseUrl}search?q=organiser_category_misc_name:"Gesloten"
~~~

[Terug naar index](#index)


<a id="organiser_category_name"></a>
<h2>organiser_category_name</h2>

``` string ```

Naam van de categorie van de gekoppelde organisatie.

~~~
{BaseUrl}search?q=*.*&fq=organiser_category_name:regionaal
~~~

[Terug naar index](#index)


<a id="organiser_cdbid"></a>
<h2>organiser_cdbid</h2>

``` string ```

ID van de organisator die het event organiseert of de producent van de productie. Geldig voor: events.

~~~
{BaseUrl}search?q=organiser_cdbid:28808C2F-0DB2-D2CF-F508ECB994D2505F&group=true
~~~

[Terug naar index](#index)


<a id="organiser_contactinfo_city"></a>
<h2>organiser_contactinfo_city</h2>

``` string ```

Gemeente van de organisator. Geldig voor: events.

~~~
{BaseUrl}search?q=organiser_contactinfo_city:"Gent"
~~~

[Terug naar index](#index)


<a id="organiser_contactinfo_country"></a>
<h2>organiser_contactinfo_country</h2>

``` string ```

Land bij contactinformatie van de organisator. Geldig voor: events.

~~~
{BaseUrl}search?q=organiser_contactinfo_country:"BE"
~~~

[Terug naar index](#index)


<a id="organiser_contactinfo_housenr"></a>
<h2>organiser_contactinfo_housenr</h2>

``` string ```

Huisnummer bij contactinformatie van de organisator. Geldig voor: events.

~~~
{BaseUrl}search?q=organiser_contactinfo_housenr:"101"
~~~

[Terug naar index](#index)


<a id="organiser_contactinfo_street"></a>
<h2>organiser_contactinfo_street</h2>

``` string ```

Straat bij contactinformatie van de organisator.

~~~
{BaseUrl}search?q=organiser_contactinfo_street:"Veldstraat"
~~~

[Terug naar index](#index)


<a id="organiser_contactinfo_zipcode"></a>
<h2>organiser_contactinfo_zipcode</h2>

``` string ```

Postcode bij contactinformatie van de organisator. Geldig voor: events.

~~~
{BaseUrl}search?q=organiser_contactinfo_zipcode:"9000"
~~~

[Terug naar index](#index)


<a id="organiser_keywords"></a>
<h2>organiser_keywords</h2>

``` string ```

Tags gekoppeld aan de organisator.

~~~
{BaseUrl}search?q=*.*&fq=organiser_keywords:Paspartoe
~~~

[Terug naar index](#index)


<a id="organiser_label"></a>
<h2>organiser_label</h2>

``` string ```

Naam van de organisator die het event organiseert. Geldig voor: events.

~~~
{BaseUrl}search?q=*:*&fq=organiser_label:roma
~~~

[Terug naar index](#index)


<a id="organiser_language"></a>
<h2>organiser_language</h2>

``` string ```

Taal van de organisator.

~~~
{BaseUrl}search?q=*:*&fq=organiser_language:nl
~~~

[Terug naar index](#index)


<a id="organiser_mail"></a>
<h2>organiser_mail</h2>

``` string ```

Mailadres van de organisator.

~~~
{BaseUrl}search?q=organiser_mail:*@telenet.be*
~~~

[Terug naar index](#index)


<a id="organiser_owner"></a>
<h2>organiser_owner</h2>

Eigenaar van het organisator-item.

~~~
{BaseUrl}search?q=organiser_owner:invoerders+algemeen
~~~

[Terug naar index](#index)


<a id="organiser_phone"></a>
<h2>organiser_phone</h2>

``` string ```

Telefoon van de organisator.

~~~
{BaseUrl}search?q=organiser_phone:*051*
~~~

[Terug naar index](#index)


<a id="organiser_shortdescription"></a>
<h2>organiser_shortdescription</h2>

``` string ```

Beschrijving van de organisator.

~~~
{BaseUrl}search?q=organiser_shortdescription:*Kortrijk*
~~~

[Terug naar index](#index)


<a id="organiser_title"></a>
<h2>organiser_title</h2>

``` string ```

Naam van de organisator. Geldig voor: events.

~~~
{BaseUrl}search?q=organiser_title:*cc*
~~~

[Terug naar index](#index)


<a id="organiser_url"></a>
<h2>organiser_url</h2>

``` string ```

URL van de organisator.

~~~
{BaseUrl}search?q=organiser_url:*.be*
~~~

[Terug naar index](#index)


<a id="owner"></a>
<h2>owner</h2>

``` string ```

Eigenaar van het item.

~~~
{BaseUrl}search?q=owner:invoerders+algemeen
~~~

[Terug naar index](#index)


<a id="pctcomplete"></a>
<h2>pctcomplete</h2>

``` int ```

Volledigheid van het event (vb. met lange beschrijving, afbeelding, GIS coordinaten, ...). Geldig voor: events.

~~~
{BaseUrl}search?q=pctcomplete:100&group=true&fq=type:event
~~~

[Terug naar index](#index)


<a id="performer_label"></a>
<h2>performer_label</h2>

``` string ```

Naam van de uitvoerder.

~~~
{BaseUrl}search?q=performer_label:"*Janssens*"&group=event
~~~

[Terug naar index](#index)


<a id="performer_role"></a>
<h2>performer_role</h2>

``` string ```

Rol van de uitvoerder.

~~~
{BaseUrl}search?q=performer_role:*acteur*&group=event
~~~

[Terug naar index](#index)


<a id="permanent"></a>
<h2>permanent</h2>

``` boolean ```

Een event object zonder start of einddatum (vb. speeltuin). Geldig voor: events.

~~~
{BaseUrl}search?q=*.*&fq=permanent:true
~~~

[Terug naar index](#index)


<a id="phone"></a>
<h2>phone</h2>

``` string ```

Telefoonnummer.

~~~
{BaseUrl}search?q=phone:*051*&group=event
~~~

[Terug naar index](#index)


<a id="physical_gis"></a>
<h2>physical_gis</h2>

``` string ```

Geografische coordinaten van waar het event plaatsvindt, of waar de locatie zich bevindt. Geldig voor: events, actors.

~~~
{BaseUrl}search?q=*:*&pt=51.036906,3.720739&sfield=physical_gis&d=5&fq={!geofilt}&sort=geodist()+asc
~~~

[Terug naar index](#index)


<a id="price"></a>
<h2>price</h2>

``` decimal ```

Basisprijs voor een event of productie. Geldig voor: events.

~~~
{BaseUrl}search?q=*:*&fq=price:0
~~~

[Terug naar index](#index)


<a id="pricedescription"></a>
<h2>pricedescription</h2>

``` string ```

Extra prijsinformatie - komt enkel voor indien ook price veld beschikbaar is. Geldig voor: events.

~~~
{BaseUrl}search?q=pricedescription:€10
~~~

[Terug naar index](#index)


<a id="private"></a>
<h2>private</h2>

``` boolean ```

Items waarvoor private = true worden standaard uit de zoekresultaten gefilterd. Kanalen die private = true instellen kunnen deze items ook ontsluiten (vb. besloten aanbod). Geldig voor: events, actors.

~~~
{BaseUrl}search?q=*:*&fq=private:true OR private:false
~~~

[Terug naar index](#index)


<a id="recommend_count"></a>
<h2>recommend_count</h2>

``` int ```

Aantal keren dat het item aangeraden werd.

~~~
{BaseUrl}search?q=*:*&fq=recommend_count:[10 TO *]
~~~

[Terug naar index](#index)


<a id="shortdescription"></a>
<h2>shortdescription</h2>

``` string ```

Korte omschrijving (< 400 karakters) over het item. Geldig voor: events, actors.

~~~
{BaseUrl}search?q=shortdescription:clown&group=event
~~~

[Terug naar index](#index)


<a id="startdate"></a>
<h2>startdate</h2>

``` ts ```

Startdatum van het event. Geldig voor: events.

~~~
{BaseUrl}search?q=*:*&fq=startdate:[NOW/DAY-1DAY TO NOW/DAY]&rows=1&group=true
~~~

[Terug naar index](#index)


<a id="street"></a>
<h2>street</h2>

``` string ```

Straatnaam van de straat of plaats waar het event plaatsvindt, waar de organisatie zich bevindt.

~~~
{BaseUrl}search?q=street:Hoogstraat&group=event
~~~

[Terug naar index](#index)


<a id="text"></a>
<h2>text</h2>

``` String ```

Concatenatie van verschillende velden: cdbid, title, shortdescription, longdescription, city, country, zipcode, street, category_id, category_name, organiser_cdbid, organiser_title, organiser_label, location_cdbid, location_title, location_label,keywords, performer_label.

~~~
{BaseUrl}search/rest/search?q=text:Paspartoe
~~~

[Terug naar index](#index)


<a id="title"></a>
<h2>title</h2>

``` string ```

Titel van het item. Geldig voor: events, actors.

~~~
{BaseUrl}search?q=title:bibliotheek&fq=type:actor
~~~

[Terug naar index](#index)


<a id="title_sort"></a>
<h2>title_sort</h2>

``` string ```

Wordt gebruikt om te sorteren op titel van het item.

~~~
werkt enkel in sort bv sort=title_sort%20asc
~~~

[Terug naar index](#index)


<a id="type"></a>
<h2>type</h2>

``` string ```

Entiteit type(s) om te doorzoeken. Drie mogelijkheden: event, actor, production. Hoofdlettergevoelig.

~~~
{BaseUrl}search?fq=type:event OR type:production
~~~

[Terug naar index](#index)


<a id="url"></a>
<h2>url</h2>

``` string ```

Website-adres.

~~~
{BaseUrl}search?q=url:*.be*&group=event
~~~

[Terug naar index](#index)


<a id="validator"></a>
<h2>validator</h2>

``` string ```

UiTdatabank gebruikersgroep die instaat voor inhoudelijke moderatie van het item. Geldig voor: events.

~~~
{BaseUrl}search?q=*:*&fq=validator:"Kortemark Validatoren"&past=true&group=true
~~~

[Terug naar index](#index)


<a id="wfstatus"></a>
<h2>wfstatus</h2>

``` enum ```

Workflow status van het item. Deze waarden zijn mogelijk: draft, readyforvalidation, approved, rejected, deleted.. Geldig voor: events.

~~~
{BaseUrl}search?q=*:*&fq=validator:"Kortemark Validatoren" AND wfstatus:approved&past=true&group=true
~~~

[Terug naar index](#index)


<a id="past"></a>
<h2>past</h2>

``` enum ```

Hiermee worden events getoond waarbij NU recenter is dan de info in de kalender. De default staat op false. Standaard worden evenementen uit het verleden uit de zoekresultaten gefilterd.

~~~
{BaseUrl}search?q=cdbid:{cdbid}&past=true&group=event
~~~

[Terug naar index](#index)


<a id="unavailable"></a>
<h2>unavailable</h2>

``` enum ```

Hiermee worden events getoond waarbij NU niet ligt tussen availableFrom en availableTo. De UiTdatabank zet per default de availableTo op de laatste datum van de calendar info.

~~~
{BaseUrl}search?q=cdbid:{cdbid}&past=true&unavailable=true&group=event
~~~

[Terug naar index](#index)

<a id="allowwfstatusfilter"></a>
<h2>allowwfstatusfilter</h2>

``` enum ```

Laat toe om wfstatus filter te gebruiken in (filter)queries. Standaard is deze parameter false, en worden wfstatus private,rejected en draft uit de resultaten gefilterd. Indien allowwfstatusfilter=true, dan wordt er geen default filtering gedaan en kan de client dat zelf bepalen in een (filter) query.

~~~
{BaseUrl}search?q=cdbid:{cdbid}&allowwfstatusfilter=true&group=event
~~~

[Terug naar index](#index)


<a id="zipcode"></a>
<h2>zipcode</h2>

``` string ```

Postcode van de gemeente waar het event plaatsvindt, waar de organisatie zich bevindt.

~~~
{BaseUrl}search?q=zipcode:[2520 TO 2530]&group=event
~~~

[Terug naar index](#index)
