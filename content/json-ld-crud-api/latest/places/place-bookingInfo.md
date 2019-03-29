---
---

# Place - bookingInfo

Can contain the following properties:

1. `phone`: can contain any string, only 1 entry allowed
2. `email`: must be formed valid, only 1 entry allowed
3. `url`: must be formed valid, only 1 entry allowed
4. `urlLabel`:
  * must contain at least the mainLanguage translation
  * only to be used in combination with `url`
5. `availabilityStarts` and `availabilityEnds`
  * Must be a valid ISO-8601 datetime formed as `YYYY-MM-DDThh:mm:ss+00:00`
  * only in combination with one of the available bookingInfo properties `url`, `email`, `phone`

To delete one bookingInfo property from an offer, remove it from the bookingInfo object and update the offer.

## urlLabel - suggested translations
It is advised to use the following combo's for adding urlLabels to a bookingInfo url. These are the default translations used by UiTdatabank.

| nl | fr | en | de |
| -- | -- | -- | -- |
| Koop tickets | Achetez des tickets| Buy tickets | Tickets kaufen |
| Reserveer plaatsen | Réservez des places | Reserve places | Platzieren Sie eine Reservierung |
| Controleer beschikbaarheid | Controlez la disponibilité | Check availability | Verfügbarkeit prüfen |
| Schrijf je in | Inscrivez-vous | Subscribe | Melde dich an |

**Example**

```
"bookingInfo": {
  "availabilityEnds": "2019-12-30T01:02:03+01:00",
  "availabilityStarts": "2018-12-30T01:02:03+01:00",
  "email": "test@test.com",
  "phone": "123",
  "url": "https://www.test.com",
  "urlLabel": {
    "nl": "Reserveer plaatsen",
    "fr": "Réservez des places",
    "en": "Reserve places",
    "de": "Platzieren Sie eine Reservierung"
  }
}
```
