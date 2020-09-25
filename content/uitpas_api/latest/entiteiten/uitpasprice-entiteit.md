---
---

# UitpasPrice entiteit

| **Parameter** | **Type** | **Beschrijving** |
| id | Long | identificatie |
| reason | String | UitpasStatusChangeReason: bijv. DEFECT, FIRST_CARD,…​ |
| cardType | String | type nfc drager waarvoor de prijs geldig is |
| voucherType | VoucherType | vouchertype waarvoor de prijs geldig is |
| ageRange |  | leeftijd waarvoor de prijs geldig is |
| kansenstatuut | Boolean | prijs geldig voor MIA |
| useWhenAgeUnknown | Boolean | prijs geldig wanneer leeftijd onbekend |
| price | BigDecimal | prijs |
| cardSystem | CardSystem | kaartsysteem waarvoor de prijs geldig is |
