---
---

# Leeftijdsinformatie

Leeftijdsinformatie kan meegestuurd worden onder ```//event/agefrom ```. Tal van kanalen gebruiken het agefrom veld om zich specifiek tot een leeftijdsgroep te richten, zoals UiTmetVlieg.be, maar ook andere agenda's die data ophalen uit UiTdatabank. 

## Activiteiten 'specifiek' voor kinderen 

Activiteiten die specifiek voor kinderen zijn, worden bij voorkeur doorgestuurd met een leeftijdsaanduiding. Dat kan op twee manieren:

Onder ```//event/agefrom ```stuur je de minimum leeftijd:

~~~ xml
<agefrom>0</agefrom>
~~~

Onder ```//event/ageto ```stuur je de maximum leeftijd:

~~~ xml
<ageto>2</ageto>
~~~

Beiden kunnen ook samen gestuurd worden:

~~~ xml
<agefrom>0</agefrom>
<ageto>2</ageto>
~~~

Let wel: het ageto-element kan enkel gebruikt worden in cdbXML 3.3. Alle voorgaande versies ondersteunen enkel de agefrom-tag.

Het kan handig zijn om de leeftijdscategorieën van UiTmetVlieg over te nemen:

- 0 - 2 jaar
- 3 - 5 jaar
- 6 - 8 jaar
- 9 - 11 jaar


De leeftijdsaanduiding kan ook zonder ```<ageto> ```gestuurd worden.


## Activiteiten 'ook' voor kinderen

Activiteiten die toegankelijk zijn voor kinderen, maar niet gericht zijn naar een specifieke leeftijdscategorie kunnen doorgestuurd worden met het label ```ook voor kinderen```

~~~ xml
<keywords>
<keyword>ook voor kinderen</keyword>
</keywords>
~~~

Het meesturen van dit label zorgt ervoor dat de activiteit het Vlieg-logo krijgt en verschijnt op UiTmetVlieg.be 

## Activiteiten voor iedereen toegankelijk

De activiteiten die voor iedereen toegankelijk zijn, maar niet specifiek voor kinderen stuur je door zonder leeftijdsaanduiding.











 
