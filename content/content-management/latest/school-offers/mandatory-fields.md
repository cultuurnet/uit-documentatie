---
---
# Mandatory fields

For the creation of school offers you’ll have to take the following rules into account:
1. Set the audienceType of your event to ```education``` 
2. Link the event with a cultuurkuur-page
3. Add education labels to your event

## 1. audienceType
For school offers it is necessary to set the value of audienceType to ```education```.

- Set your audienceType using the [CRUD API](https://documentatie.uitdatabank.be/content/json-ld-crud-api/latest/events/event-audience.html)
- Set your audienceType using the [JSON-LD API](https://documentatie.uitdatabank.be/content/json-ld/latest/events/event-audience.html)

## 2. Link to Cultuurkuur page
Each organizer has it own page on Cultuurkuur. Every school event should be linked to an organizer page. Therefore, the organizer field is mandatory for school events:
- Add a valid and existing organizer to your event using the [JSON-LD API](https://documentatie.uitdatabank.be/content/json-ld/latest/events/event-organizer.html) 
- Add a valid and existing organizer to your event using the [JSON-LD CRUD API](https://documentatie.uitdatabank.be/content/json-ld-crud-api/latest/events/event-organizer.html)

In the case the organizer of your event does not already have its own page on Cultuurkuur yet, you should contact ```content.cultuurkuur@publiq.be```.

## 3. Education labels
In addition to the mandatory fields for ‘regular’ events, there are specific, cultuurkuur-related labels applicable.

- Adding labels using the [CRUD API](https://documentatie.uitdatabank.be/content/json-ld-crud-api/latest/events/event-labels.html)
- Adding labels using the [JSON-LD API](https://documentatie.uitdatabank.be/content/json-ld/latest/events/event-label.html)

### Target group labels
For the creation of a school offer, you need to specify if the event is for students or for teachers. 
Only one of both is applicable:

| Target group | Label | 
| -- | -- | 
| Students | cultuurkuur_Leerlingen | 
| Teachers | cultuurkuur_leerkrachten | 

### Subject labels
Each school offers should have at least one subject (learning objective). 

| Subject | Label | 
| -- | -- | 
| Actief Burgerschap | cultuurkuur_Actief Burgerschap | 
| Duurzaamheid, natuur en milieu | cultuurkuur_Duurzaamheid, natuur en milieu | 
| Filosofie religie | cultuurkuur_Filosofie-religie | 
| Beeldende en audiovisuele kunst | cultuurkuur_Beeldende-en-audiovisuele-kunst | 
| kunst-en-cultuur | cultuurkuur_kunst-en-cultuur | 
| Leren leren | cultuurkuur_Leren leren | 
| Lichamelijke, sociale en mentale gezondheid | cultuurkuur_Lichamelijke, sociale en mentale gezondheid | 
| Media | cultuurkuur_Media | 
| Mobiliteit | cultuurkuur_Mobiliteit | 
| Muziek | cultuurkuur_muziek | 
| Ondernemingszin | cultuurkuur_Ondernemingszin | 
| Taal | cultuurkuur_taal | 
| Dans | cultuurkuur_dans | 
| Wiskunde | cultuurkuur_Wiskunde | 
| Woordkunst en drama | cultuurkuur_Woordkunst-drama | 

### Education level labels
The education level is mandatory for school offers. These education levels must be sent as a label. 

Note that there is a hierarchy (levels) in the labels, and that this hierarchy should be followed.

**For example:**
- If a level 4-label (f.e. ```cultuurkuur_Kleuter-2-3-jaar```) is applicable for an event, the corresponding level 3, level 2 and level 1-label should be added to the event: ```cultuurkuur_Gewoon-kleuteronderwijs```, ```cultuurkuur_Gewoon-basisonderwijs```, ```cultuurkuur_basisonderwijs```
- If a level 1-label is applicable (f.e. ```cultuurkuur_Volwassenenonderwijs```), only the level 1-label should be added 


Cultuurkuur distinguishes the following labels:

#### Basisonderwijs

Level 1 label: ```cultuurkuur_basisonderwijs```

| Level 2 | Level 3 | Level 4 |
|--|--|--|
| cultuurkuur_Gewoon-basisonderwijs |  |  |
|  | cultuurkuur_Gewoon-kleuteronderwijs |  |
|  |  | cultuurkuur_Kleuter-2-3-jaar |
|  |  | cultuurkuur_Kleuter-3-4-jaar |
|  |  | cultuurkuur_Kleuter-4-5-jaar |
|  | cultuurkuur_Gewoon-lager-onderwijs |  |
|  |  | cultuurkuur_1ste-graad |
|  |  | cultuurkuur_2de-graad |
|  |  | cultuurkuur_3de-graad |
|  | cultuurkuur_Onthaalonderwijs-voor-anderstalige-nieuwkomers (OKAN) |  |
| cultuurkuur_Buitengewoon-basisonderwijs |  |  |
|  | cultuurkuur_Buitengewoon-kleuteronderwijs |  |
|  | cultuurkuur_Buitengewoon-lager-onderwijs |  |

#### Secundair onderwijs

Level 1 label: ```cultuurkuur_Secundair-onderwijs```

| Level 2 | Level 3 | Level 4 |
|--|--|--|
| cultuurkuur_Voltijds-gewoon-secundair-onderwijs |  |  |
|  | cultuurkuur_eerste-graad |  |
|  |  | cultuurkuur_1ste-leerjaar-A |
|  |  | cultuurkuur_1ste-leerjaar-B |
|  |  | cultuurkuur_2de leerjaar |
|  |  | cultuurkuur_beroepsvoorbereidend-leerjaar |
|  | cultuurkuur_tweede-graad |  |
|  |  | cultuurkuur_tweede-graad-ASO |
|  |  | cultuurkuur_tweede-graad-BSO |
|  |  | cultuurkuur_tweede-graad-KSO |
|  |  | cultuurkuur_tweede-graad-TSO |
|  | cultuurkuur_derde-graad |  |
|  |  | cultuurkuur_derde-graad-ASO |
|  |  | cultuurkuur_derde-graad-BSO |
|  |  | cultuurkuur_derde-graad-KSO |
|  |  | cultuurkuur_derde-graad-TSO |
|  |  | cultuurkuur_3de-graad-BSO-specialisatiejaar |
|  |  | cultuurkuur_derde-graad-Voorbereidend-jaar-HO |


#### Hoger onderwijs

Level 1 label: ```cultuurkuur_Hoger-onderwijs```


#### Volwassenenonderwijs

Level 1 label: ```cultuurkuur_Volwassenenonderwijs```


#### Deeltijds kunstonderwijs

Level 1 label: ```cultuurkuur_Deeltijds-kunstonderwijs-DKO```

| Level 2 |
|--|
| cultuurkuur_Beeldende-en-audiovisuele-kunst |
| cultuurkuur_muziek |
| cultuurkuur_Woordkunst-drama |
| cultuurkuur_dans |
