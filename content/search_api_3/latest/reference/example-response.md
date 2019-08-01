---
---

# Example response for event with all available fields


The JSON-LD body below is a example response from the Search API of an event with embedded place and organizer. The three entities are containing all of the currently available fields (with dummy content).

This example can be used as a reference for developers to form an idea of the possible fields an event, a place or an organizer can contain.

Check below for comments on deprecated data and possible exceptions.

```
{
  "@context": "http://www.w3.org/ns/hydra/context.jsonld",
  "@type": "PagedCollection",
  "itemsPerPage": 30,
  "member": [
    {
      "@context": "/contexts/event",
      "@id": "https://udb-silex-acc.uitdatabank.be/event/f5db5ff3-6010-4fbb-9eeb-fb70da9fdfce",
      "audience": {
        "audienceType": "everyone"
      },
      "availableFrom": "2017-11-28T12:36:11+01:00",
      "availableTo": "2018-11-28T23:59:59+01:00",
      "mainLanguage": "nl",
      "completedLanguages": [
        "nl",
        "en"
      ],
      "languages": [
        "nl",
        "en"
      ],
      "contactPoint": {
        "email": [],
        "phone": [
          "016 62 33 45"
        ],
        "url": [
          "http://www.kasteelvanhorst.be/families",
          "http://www.herita.be"
        ]
      },
      "bookingInfo": {
        "availabilityEnds": "2017-11-28T12:36:11+01:00",
        "availabilityStarts": "2018-06-28T12:36:11+01:00",
        "email": "info@test.be",
        "phone": null,
        "url": "http://www.kasteelvanhorst.be/praktisch",
        "urlLabel": {
          "en": "Reserve seats",
          "nl": "Reserveer plaatsen"
        }
      },
      "created": "2017-11-28T11:32:26+00:00",
      "modified": "2017-11-28T11:32:26+00:00",
      "creator": "86a02c65-696d-5b12-a9b1-9e3bc8e6303c",
      "name": {
        "en": "Discover Horst Castle - for families",
        "nl": "Ontdek het Kasteel van Horst - familieparcours!"
      },
      "description": {
        "en": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed volutpat lorem tellus, non dapibus diam lobortis quis. Curabitur sollicitudin sapien ut nulla condimentum dignissim. Ut accumsan turpis nibh, vitae tempor nunc luctus non. Phasellus fringilla odio vel ligula finibus vulputate. Aenean iaculis pretium erat, et congue mauris interdum feugiat. Donec porta est vitae dui posuere egestas. Nam a dolor efficitur, posuere ex eget, euismod velit. Etiam dignissim nec nunc nec iaculis. Quisque quis tempor erat, non lacinia nunc. Integer porta eu neque ut vestibulum. Nunc condimentum facilisis magna vitae convallis. Etiam egestas vulputate eros, ac condimentum quam. In ut accumsan ex, a volutpat est. Sed placerat sit amet nibh non elementum. Curabitur turpis tortor, iaculis vel mauris at, vulputate porta purus.\n\n Phasellus bibendum elit et velit eleifend, nec aliquam libero rhoncus. In posuere blandit urna, in facilisis nibh fringilla eu. Aliquam lacinia, metus porttitor ultrices lacinia, nulla ex gravida dolor, in auctor nisl lacus at mi. Aenean at molestie nibh. Aliquam at vestibulum nibh, eget tempus nunc. In pellentesque turpis justo, ac rutrum risus feugiat hendrerit. Nunc a cursus nisi. In hac habitasse platea dictumst. Quisque nunc orci, commodo at sagittis dapibus, euismod feugiat nisi. Nullam imperdiet dictum mauris sit amet vulputate.\n\n Suspendisse aliquet ultrices magna, at vestibulum augue fermentum nec. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque ac sapien efficitur, commodo eros vel, interdum ipsum. Vestibulum ligula erat, interdum tincidunt scelerisque vel, aliquet a diam. Duis gravida dui id dictum elementum. Nunc in dui ac quam faucibus scelerisque. Nunc tempor elit et neque ornare cursus. Aenean hendrerit rutrum nibh, non porttitor sem posuere eget. Aliquam purus risus, ultrices sed scelerisque et, tempus ut arcu.",
        "nl": "Weet jij wie er vroeger allemaal gewoond heeft in het Kasteel van Horst? Of waarmee ridders hun billen afveegden? Of wat de kasteelbewoners vroeger aten & dronken? Ga op stap met ridder Pynnock, page Tijl, gravin Maria-Anna en kokkin Margriet en je komt het allemaal te weten in het fabuleuze familieparcours!\n\nDe kasteelbewoners door de eeuwen heen gunnen je een avontuurlijke blik achter de muren van de burcht. Zoals Ridder Pynnock, die de stoere Donjon liet bouwen in de 15de eeuw. Zijn schildknaap Tijl neemt je mee achter de schermen van het offici\u00eble riddergebeuren. Ooit hoopt hij het blinkende harnas te passen dat nu nog steeds in de ridderzaal staat.\n\nKokkin Margriet zorgde voor heerlijke schotels voor de grote feesten van gravin Maria-Anna in de 17de eeuw. Van heinde en verre kwam de adel feesten in Horst. Kom jij ontdekken wat Maria-Anna voor hen in pacht had?\n\nMaar de kasteelbewoners geven niet zomaar alle eeuwenoude geheimen en interessante weetjes prijs. Je moet ook zelf puzzelen, nadenken en doen. Toffe ontdekopdrachten voor kinderen, papa\u2019s, mama\u2019s, tantes, nonkels \u00e9n grootouders. Kleine jonkvrouwen en ridders vanaf 4 jaar kunnen in het familieparcours op stap, met hulp van hun grote mensen. Hou je fototoestel in de aanslag, fijne kasteelsouvenirs gegarandeerd!\n\nHet familieparcours is inbegrepen in de toegangsprijs."
      },
      "calendarType": "periodic",
      "startDate": "2017-11-28T00:00:00+01:00",
      "endDate": "2018-11-28T00:00:00+01:00",
      "openingHours": [
        {
          "dayOfWeek": [
            "wednesday",
            "thursday",
            "friday",
            "saturday",
            "sunday"
          ],
          "opens": "10:00",
          "closes": "17:00"
        }
      ],
      "labels": [
        "kasteel",
        "zoektocht"
      ],
      "location": {
        "@context": "/contexts/place",
        "@id": "https://io.uitdatabank.be/place/010d32de-fd74-46ea-9b66-84fdd56711ff",
        "address": {
          "en": {
            "addressCountry": "BE",
            "addressLocality": "Holsbeek",
            "postalCode": "3220",
            "streetAddress": "Horststraat 28"
          },
          "nl": {
            "addressCountry": "BE",
            "addressLocality": "Sint-Pieters-Rode (Holsbeek)",
            "postalCode": "3220",
            "streetAddress": "Horststraat 28"
          }
        },
        "geo": {
          "latitude": 50.9321713,
          "longitude": 4.8320582
        },
        "availableFrom": "2016-08-01T00:00:00+02:00",
        "availableTo": "2100-01-01T00:00:00+02:00",
        "calendarType": "permanent",
        "openingHours": [
          {
            "dayOfWeek": [
              "sunday"
            ],
            "opens": "10:00",
            "closes": "17:00"
          }
        ],
        "completedLanguages": [
          "nl",
          "en"
        ],
        "languages": [
          "nl",
          "en"
        ],
        "created": "2016-07-29T14:58:27+02:00",
        "modified": "2016-08-09T14:25:14+02:00",
        "creator": "47f3c7c9-931b-7568-836b-de3b47e5efdd",
        "name": {
          "en": "Horst Castle",
          "nl": "Kasteel Van Horst"
        },
        "description": {
          "en": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed volutpat lorem tellus, non dapibus diam lobortis quis. Curabitur sollicitudin sapien ut nulla condimentum dignissim. Ut accumsan turpis nibh, vitae tempor nunc luctus non. Phasellus fringilla odio vel ligula finibus vulputate. Aenean iaculis pretium erat, et congue mauris interdum feugiat. Donec porta est vitae dui posuere egestas. Nam a dolor efficitur, posuere ex eget, euismod velit. Etiam dignissim nec nunc nec iaculis. Quisque quis tempor erat, non lacinia nunc. Integer porta eu neque ut vestibulum. Nunc condimentum facilisis magna vitae convallis. Etiam egestas vulputate eros, ac condimentum quam. In ut accumsan ex, a volutpat est. Sed placerat sit amet nibh non elementum. Curabitur turpis tortor, iaculis vel mauris at, vulputate porta purus.\n\n Phasellus bibendum elit et velit eleifend, nec aliquam libero rhoncus. In posuere blandit urna, in facilisis nibh fringilla eu. Aliquam lacinia, metus porttitor ultrices lacinia, nulla ex gravida dolor, in auctor nisl lacus at mi. Aenean at molestie nibh. Aliquam at vestibulum nibh, eget tempus nunc. In pellentesque turpis justo, ac rutrum risus feugiat hendrerit. Nunc a cursus nisi. In hac habitasse platea dictumst. Quisque nunc orci, commodo at sagittis dapibus, euismod feugiat nisi. Nullam imperdiet dictum mauris sit amet vulputate.",
          "nl": "Horst? Da\u2019s een \u00e9cht ridderlijk feestkasteel, verscholen tussen groene Hagelandse heuvels! Het kasteel staat er nog bij zoals de laatste adellijke bewoners het in de 17de eeuw achterlieten. Unieke stucwerkplafonds, de middeleeuwse toren die pronkt in de kasteelvijver en wacht op jouw bezoek.<br/>Horst? Da\u2019s een \u00e9cht ridderlijk feestkasteel, verscholen tussen groene Hagelandse heuvels! Het kasteel staat er nog bij zoals de laatste adellijke bewoners het in de 17de eeuw achterlieten. Unieke stucwerkplafonds, de middeleeuwse toren die pronkt in de kasteelvijver en wacht op jouw bezoek."
        },
        "hiddenLabels": [
          "owner-omd-2016"
        ],
        "labels": [
          "Klassieker",
          "Open Monumentendag 2016"
        ],
        "image": "http://login.openmonumenten.be/sites/default/files/culturefeed/udb3/media/6cb08d75-d4f4-4902-8fae-a57bf8bb4b66.jpeg",
        "mediaObject": [
          {
            "@id": "https://io.uitdatabank.be/media/32ef6ffc-9ffd-5339-90fc-6fa2548a5393",
            "@type": "schema:ImageObject",
            "contentUrl": "http://login.openmonumenten.be/sites/default/files/culturefeed/udb3/media/6cb08d75-d4f4-4902-8fae-a57bf8bb4b66.jpeg",
            "copyrightHolder": "Herita, foto: Jan Crab",
            "description": "Kasteel Van Horst",
            "thumbnailUrl": "http://login.openmonumenten.be/sites/default/files/culturefeed/udb3/media/6cb08d75-d4f4-4902-8fae-a57bf8bb4b66.jpeg"
          }
        ],
        "terms": [
          {
            "domain": "actortype",
            "id": "8.15.0.0.0",
            "label": "Locatie"
          },
          {
            "domain": "flandersregion",
            "id": "reg.690",
            "label": "3220 Sint-Pieters-Rode (Holsbeek)"
          }
        ],
        "workflowStatus": "READY_FOR_VALIDATION"
      },
      "image": "https://udb-silex-acc.uitdatabank.be/images/4fb82f7d-4d76-4ee5-a017-97d204e2b391.png",
      "mediaObject": [
        {
          "@id": "https://udb-silex-acc.uitdatabank.be/images/4fb82f7d-4d76-4ee5-a017-97d204e2b391",
          "@type": "schema:ImageObject",
          "contentUrl": "https://udb-silex-acc.uitdatabank.be/images/4fb82f7d-4d76-4ee5-a017-97d204e2b391.png",
          "copyrightHolder": "Herita vzw",
          "description": "Familiezoektocht Horst 1",
          "inLanguage": "nl",
          "thumbnailUrl": "https://udb-silex-acc.uitdatabank.be/images/4fb82f7d-4d76-4ee5-a017-97d204e2b391.png"
        },
        {
          "@id": "https://udb-silex-acc.uitdatabank.be/images/238246f9-eb90-4207-b78b-ae8768de81b0",
          "@type": "schema:ImageObject",
          "contentUrl": "https://udb-silex-acc.uitdatabank.be/images/238246f9-eb90-4207-b78b-ae8768de81b0.png",
          "copyrightHolder": "Herita vzw",
          "description": "Familiezoektocht Horst 2",
          "inLanguage": "nl",
          "thumbnailUrl": "https://udb-silex-acc.uitdatabank.be/images/238246f9-eb90-4207-b78b-ae8768de81b0.png"
        },
        {
          "@id": "https://udb-silex-acc.uitdatabank.be/images/7e73b8b4-e8d2-4588-8bc5-721ce37ff875",
          "@type": "schema:ImageObject",
          "contentUrl": "https://udb-silex-acc.uitdatabank.be/images/7e73b8b4-e8d2-4588-8bc5-721ce37ff875.png",
          "copyrightHolder": "Herita vzw",
          "description": "Familiezoektocht Horst 3",
          "inLanguage": "nl",
          "thumbnailUrl": "https://udb-silex-acc.uitdatabank.be/images/7e73b8b4-e8d2-4588-8bc5-721ce37ff875.png"
        }
      ],
      "organizer": {
        "@context": "/contexts/organizer",
        "@id": "https://udb-silex-acc.uitdatabank.be/organizers/2af6ad52-c019-4095-a60d-f926ebf26fc6",
        "name": {
          "en": "Herita non-profit heritage organization",
          "nl": "Herita vzw"
        },
        "address": {
          "nl": {
            "addressCountry": "BE",
            "addressLocality": "Antwerpen",
            "postalCode": "2000",
            "streetAddress": "Oude Beurs 27"
          }
        },
        "mainLanguage": "nl",
        "completedLanguages": [
          "nl",
          "en"
        ],
        "languages": [
          "nl",
          "en"
        ],
        "contactPoint": {
          "email": [],
          "phone": [
            "03 226 31 85"
          ],
          "url": []
        },
        "created": "2017-11-28T11:28:45+00:00",
        "creator": "86a02c65-696d-5b12-a9b1-9e3bc8e6303c",
        "labels": [
          "heritage",
          "erfgoed"
        ],
        "url": "http://www.herita.be"
      },
      "priceInfo": [
        {
          "category": "base",
          "name": {
            "en": "Base tariff",
            "nl": "Basistarief"
            },
          "price": 6,
          "priceCurrency": "EUR"
        },
        {
          "category": "tariff",
          "name": {
            "en": "Children under 12",
            "nl": "Kinderen jonger dan 12"
            },
          "price": 0,
          "priceCurrency": "EUR"
        },
        {
          "category": "tariff",
          "name": {
            "en": "Herita members",
            "nl": "Herita leden"
            },
          "price": 2,
          "priceCurrency": "EUR"
        }
      ],
      "sameAs": [
        "http://www.uitinvlaanderen.be/agenda/e/ontdek-het-kasteel-van-horst/f5db5ff3-6010-4fbb-9eeb-fb70da9fdfce"
      ],
      "terms": [
        {
          "domain": "eventtype",
          "id": "0.7.0.0.0",
          "label": "Begeleide rondleiding"
        },
        {
          "domain": "theme",
          "id": "1.11.0.0.0",
          "label": "Geschiedenis"
        }
      ],
      "typicalAgeRange": "4-14",
      "workflowStatus": "READY_FOR_VALIDATION"
    }
  ],
  "totalItems": 1
}

```
