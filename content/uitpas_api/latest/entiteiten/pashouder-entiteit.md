---
---

# Pashouder entiteit

| **Parameter** | **Type** | **Beschrijving** |
| name | String | naam van de pashouder |
| firstName | String | voornaam van de pashouder |
| secondName | String | tweede naam van de pashouder |
| inszNumber | String | nationaal identificatienummer van de pashouder |
| email | String | email adres van de pashouder |
| dateOfBirth | Date | geboortedatum van de pashouder |
| street | String | straat van de pashouder |
| <span class="line-through">number</span> <span class="blue">(Deprecated)</span> | String | huisnummer van de pashouder |
| <span class="line-through">box</span> <span class="blue">(Deprecated)</span> | String | bus van de pashouder |
| postalCode | String | postcode van de pashouder |
| city | String | woonplaats van de pashouder |
| telephone | String | telefoonnummer van de pashouder |
| nationality | String | nationaliteit van de pashouder |
| placeOfBirth | String | geboorteplaats van de pashouder |
| gender | Gender | geslacht van de pashouder |
| uitIdUser | UitIdUser | de bijhorende UitId User gekoppeld aan deze pashouder (zie hieronder) |
| registrationBalieConsumerKey | String | consumerKey van de balie waar de pashouder werd geregistreerd |
| schoolConsumerKey | String | consumerKey van de school (balie) van deze pashouder |
| schoolName | String | naam van de school (balie) van deze pashouder |
| numberOfCheckins | int | aantal Checkins |
| verified | boolean | true indien de e-id werd gebruikt bij registratie van de pashouder |
| gsm | String | gsm-nummer van de pashouder |
| moreInfo | String | een vrij tekstveld met informatie over deze pashouder |
| picture | bytes | afbeelding van de pashouder |
| points | int | totaal aantal gespaarde punten van de pashouder |
| memberships | List<Membership> | lidmaatschappen van de pashouder |
| cardSystemSpecific | List<PassHolderCardSystemLink> | Lijst van kaartspecifieke velden |



## UitIdUser entiteit

| **Parameter** | **Type** | **Beschrijving** |
| id | String | ID van de UitID gebruiker |
| nick | String | nick van de UitID gebruiker |
| depiction | String | url naar de profielfoto van de UiTID user |
| optInPreferences | OptInPreferenes | object met de opt-in voorkeuren van deze pashouder (zie hieronder) |


## OptInPreferences entiteit

| **Parameter** | **Type** | **Beschrijving** |
| optInServiceMails   | boolean | true indien de pashouder service mails wil ontvangen, anders false                                                  | 
| optInMilestoneMails | boolean | true indien de pashouder milestone mails wil ontvangen, anders false |
| optInInfoMails      | boolean | true indien de pashouder info mails wil ontvangen, anders false | 
| optInSms            | boolean | true indien de pashouder sms wil ontvangen, anders false | 
| optInPost           | boolean | true indien de pashouder post wil ontvangen, anders false |





