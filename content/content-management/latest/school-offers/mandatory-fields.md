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
The education level is mandatory for school offers. These education levels must be sent as a label. We distinguish the following labels:

| Subject | Label | 
| -- | -- | 
| Gewoon kleuteronderwijs | cultuurkuur_Gewoon-kleuteronderwijs | 
| Kleuter (2-3 jaar) | cultuurkuur_Kleuter-2-3-jaar  | 
| Kleuter (3-4 jaar) | cultuurkuur_Kleuter-3-4-jaar   | 
| Kleuter (4-5 jaar) | cultuurkuur_Kleuter-4-5-jaar  | 
| Basisonderwijs | cultuurkuur_basisonderwijs | 
| Gewoon basisonderwijs | cultuurkuur_Gewoon-basisonderwijs | 
| Gewoon lager onderwijs | cultuurkuur_Gewoon-lager-onderwijs | 
| Gewoon lager onderwijs | cultuurkuur_gewoon-lageronderwijs | 
| Eerste leerjaar A | cultuurkuur_1ste-leerjaar-A | 
| Eerste leerjaar B | cultuurkuur_1ste-leerjaar-B | 
| Tweede leerjaar | cultuurkuur_2de leerjaar | 
| Derde leerjaar | cultuurkuur_3de leerjaar | 
| Vierde leerjaar | cultuurkuur_4de leerjaar | 
| Vijfde leerjaar | cultuurkuur_5de leerjaar | 
| Zesde leerjaar | cultuurkuur_6de leerjaar | 
| Beroepsvoorbereidend leerjaar | cultuurkuur_beroepsvoorbereidend-leerjaar | 
| Buitengewoon kleuteronderwijs | cultuurkuur_Buitengewoon-kleuteronderwijs | 
| Buitengewoon basisonderwijs | cultuurkuur_Buitengewoon-basisonderwijs | 
| Buitengewoon lager onderwijs | cultuurkuur_Buitengewoon-lager-onderwijs | 
| Buitengewoon secundair onderwijs | cultuurkuur_Buitengewoon-secundair-onderwijs | 
| Deeltijds kunstonderwijs (DKO) | cultuurkuur_Deeltijds-kunstonderwijs-DKO | 
| Deeltijds leren en werken | cultuurkuur_Deeltijds-leren-en-werken | 
| Voltijds gewoon secundair onderwijs | cultuurkuur_Voltijds-gewoon-secundair-onderwijs | 
| Secundair onderwijs | cultuurkuur_Secundair-onderwijs | 
| Eerste graad | cultuurkuur_1ste-graad | 
| Eerste graad | cultuurkuur_eerste graad | 
| Tweede graad | cultuurkuur_2de-graad | 
| Tweede graad | cultuurkuur_tweede graad | 
| Tweede graad | cultuurkuur_tweede-graad |
| Tweede graad ASO | cultuurkuur_tweede-graad-ASO |
| Tweede graad BSO | cultuurkuur_tweede-graad-BSO |
| Tweede graad KSO | cultuurkuur_tweede-graad-KSO |
| Tweede graad TSO | cultuurkuur_tweede-graad-TSO |
| Derde graad | cultuurkuur_3de-graad |
| Derde graad | cultuurkuur_derde graad |
| Derde graad BSO (specialisatiejaar) | cultuurkuur_3de-graad-BSO-specialisatiejaar |
| Derde graad ASO | cultuurkuur_derde-graad-ASO |
| Derde graad BSO | cultuurkuur_derde-graad-BSO |
| Derde graad KSO | cultuurkuur_derde-graad-KSO |
| Derde graad TSO | cultuurkuur_derde-graad-TSO |
| Derde graad (voorbereidend hoger onderwijs) | cultuurkuur_derde-graad-Voorbereidend-jaar-HO |
| Hoger onderwijs | cultuurkuur_Hoger-onderwijs |
| Onthaalonderwijs voor anderstalige nieuwkomers (OKAN) | cultuurkuur_Onthaalonderwijs-voor-anderstalige-nieuwkomers (OKAN)|
| Onthaalonderwijs voor anderstalige nieuwkomers (OKAN) | cultuurkuur_Onthaalonderwijs-voor-anderstalige-nieuwkomers-OKAN |
| Secundair na Secundair (Se-n-Se) | cultuurkuur_Secundair-na-secundair-(Se-n-Se)|
| Volwassenenonderwijs | cultuurkuur_Volwassenenonderwijs |


