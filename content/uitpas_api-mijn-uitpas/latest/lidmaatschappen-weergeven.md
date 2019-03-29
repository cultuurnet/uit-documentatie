---
---

# Lidmaatschappen van een gebruiker weergeven

Een UiTPAS-gebruiker kan deel uitmaken van één of meer verenigingen gedefinieerd binnen het UiTPAS-systeem. Dit noemen we een lidmaatschap.

De lidmaatschappen worden meegegeven in de ‘passholder’ entiteit.

**Request**

```
GET {prefix}/uitpas/passholder/{uitpasNumber}
```

Voorbeeld
```
{prefix}/uitpas/passholder/uid/1000001514909
```

**Response**

~~~ xml
<memberships>
    <membership>
        <id>1</id>
        <association>
            <id>1</id>
            <name>Chiro Jongens</name>
            <cardSystem>
                <id>1</id>
                <name>HELA</name>
            </cardSystem>
            <enddateCalculation>BASED_ON_REGISTRATION_DATE</enddateCalculation>
            <enddateCalculationValidityTime>2</enddateCalculationValidityTime>
        </association>
        <endDate>2015-12-31T23:59:59+01:00</endDate>
        <renewable>true</renewable>
        <renewDate>2015-09-30T23:59:59+01:00</renewDate>
        <newEndDate>2017-12-31T23:59:59+01:00</newEndDate>
    </membership>
</memberships>
~~~

[Voorbeeld response in XML (volledig)]({% link content/uitpas_api/latest/pashouders/ophalen-van-pashouder.md %})

Volgende velden heb je nodig:

| Data | Veld | Opmerking |
| --- | --- | --- |
| Naam vereniging | memberships > membership > association > name | - |
| Einddatum van het lidmaatschap | memberships > membership > endDate | - |
| Kaartsyste(e)m(en) | memberships > membership > association > cardSystem | Kaartsysteem waar de vereniging deel van uitmaakt. |

**Referentie UiTPAS API v3.0**

[Ophalen van een pashouder]({% link content/uitpas_api/latest/pashouders/ophalen-van-pashouder.md %})


