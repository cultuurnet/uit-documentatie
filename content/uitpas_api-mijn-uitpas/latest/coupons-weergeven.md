---
---

# Coupons van een gebruiker weergeven

Coupons (of voordeelbonnen) geven aan een gebruiker korting op de ticketprijs van een UiTPAS-event. Coupons worden aangemaakt door de systeem administrator van een UiTPAS-kaartsysteem, en toegekend aan een (segment van) de UiTPAS-gebruikers.

Een coupon kan 1 of meerdere keren omgeruild worden, en dit absoluut, of binnen een bepaalde tijdsperiode (dag, week, …)

O.b.v. het UiTPAS-nummer kunnen we de beschikbare coupons voor een gebruiker ophalen.

**Request**

```
GET {prefix}/uitpas/passholder/{uitpasNumber}/coupons
```

Voorbeeld

```
{prefix}/uitpas/passholder/1000000061811/coupons
```

**Response**

~~~ xml
<ticketSaleCoupon>
    <exchangeConstraint>
         <periodType>ABSOLUTE</periodType>
         <periodVolume>2</periodVolume>
    </exchangeConstraint>
    <id>35</id>
    <name>Cultuurbon</name>
     <remainingTotal>
        <periodType>ABSOLUTE</periodType>
        <periodVolume>1</periodVolume>
     </remainingTotal>
     <expired>false</expired>
    <validFrom>2015-06-29T00:00:00+02:00</validFrom>
    <validTo>2015-12-31T23:59:59+01:00</validTo>
</ticketSaleCoupon>
~~~

[Voorbeeld response in XML (volledig)]({% link content/uitpas_api/latest/pashouders/opzoeken-van-coupons-van-een-pashouder.md %})

Volgende velden heb je nodig:

| Data | Veld | Opmerking |
| --- | --- | --- |
| Naam coupon | ticketSaleCoupon > name | - |
| Geldigheid | ticketSaleCoupon > validFrom en ticketSaleCoupon > validTo | Bepaalt de periode waarin de coupon geldig is. |
| Aantal beurten op de coupon | ticketSaleCoupon > remainingTotal > periodVolume | In geval ```periodType``` de waarde ```absolute``` heeft, toon dan volgende copy: "Beschikbaar: ```periodVolume``` beurten". In geval ```periodType``` een andere waarde heeft, ga je de output wat moeten veranderen. "Beschikbaar: ```periodVolume``` beurten, per ```periodType```". ```periodType``` kan daarbij volgende waarden aannemen: ```daily```, ```weekly```, ```monthly```, ```quarterly```, ```yearly```. |
| Kaartsysteem | ticketSaleCoupon > cardSystem | Een UiTPAS-gebruiker kan aangesloten zijn bij meerdere kaartsystemen, en dus coupons hebben bij meerdere kaartsystemen. Op basis van het element ```cardSystem``` kan de lijst van coupons opgesplitst worden in de frontend. Velden ```id``` en ```name``` zijn beschikbaar. |

**Referentie UiTPAS API v3.0**

[Opzoeken coupons van een pashouder]({% link content/uitpas_api/latest/pashouders/opzoeken-van-coupons-van-een-pashouder.md %})

## Detail informatie voor een specifieke coupon weergeven**

Indien nodig kan via het veld ```couponId``` verdere detail-informatie voor de coupon opgevraagd worden. Dit kan bijvoorbeeld nodig zijn wanneer je naast de naam ook de beschrijving van de coupon wil weergeven.

**Request**

```
GET {prefix}/uitpas/passholder/{uitpasNumber}/coupons/{couponId}
```

**Referentie UiTPAS API v3.0**

[Individuele coupon van een pashouder ophalen]({% link content/uitpas_api/latest/pashouders/opzoeken-van-een-coupon-van-een-pashouder.md %})
