---
---

# De UiTPAS activeren

Na aankoop van de UiTPAS kan een gebruiker zijn UiTPAS 'activeren’ - d.w.z. zich registreren online.

In feite is het niet de UiTPAS die wordt geactiveerd, maar wel de *pashouder*. Dit doen we door zijn UiTPAS profiel te koppelen aan een UiTID. UiTID is de OAuth service provider van CultuurNet waarmee gebruikers een profiel kunnen aanmaken en authenticeren.

## Best practice

De praktijk wijst uit dat de volgorde waarin de user de stappen voor activatie doorloopt een impact kan hebben op de conversie.

Een goed voorbeeld is [uitinleuven.be/](https://uitinleuven.be/uitpas-in-leuven), waar volgend stappenplan wordt voorgesteld aan de gebruiker:
1. (UiTID account aanmaken)
2. Inloggen met UiTID
3. UiTPAS activeren door middel van UiTPAS-nummer en geboortedatum

## Een UiTID aanmaken

UiTID documentatie over het aanmaken van een UiTID gebruiker vind je [hier]({% link content/uitid/latest/gebruikers/gebruiker_aanmaken.md %})

## Activatie link ophalen

De activatie link voor de pashouder wordt opgehaald op basis van het UiTPAS-nummer en de geboortedatum van de pashouder.

![UiTPAS activeren](/img/uitpas_api-mijn-uitpas-activeren.png "Activeren")

**Request**

```
GET {prefix}/uitpas/passholder/{uitpasNumber}/activation?dob={yyyy-mm-dd}
```

Voorbeeld

```
{prefix}/uitpas/passholder/0930000000107/activation?dob=1979-07-15
```

**Response**

~~~ xml
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response>
    <code>ACTION_SUCCEEDED</code>
    <message>activation link generated</message>
   <activationLink>http://uitpas-acc.lodgon.com:8080/uitid/rest/uitpas/activate/0930000000107/98bdd8b3f4e48d4c</activationLink>
</response>
~~~

De response bevat het element ```activationLink``` met volgende syntax:

```
{prefix}/uitpas/activate/{uitpasNumber}/{verificationCode}
```

Voorbeeld

```
{prefix}/uitpas/activate/0930000000107/98bdd8b3f4e48d4c
```

**Referentie UiTPAS API v3.0**

[Activatielink opvragen op basis van geboortedatum]({% link content/uitpas_api/latest/pashouders/activatie-link-opvragen-op-basis-van-geboortedatum.md %})

### De user redirecten na de koppeling

Als je na koppeling van UiTPAS-profiel en UiTID, de user wil redirecten naar een specifieke pagina, dan kan dat door aan de activatie link een parameter ```destination``` mee te geven.

De parameter ```destination```  is optioneel. Als value neem je het absolute path van de pagina waarnaar je wil redirecten. Default wordt de gebruiker naar een bevestigingspagina van UiTID-pagina gestuurd.

Voorbeeld

```
{prefix}/uitpas/activate/0930000000107/98bdd8b3f4e48d4c/?destination=http://www.domein.be/mijn-redirect-pagina
```

### Koppeling aan UiTID

Via de activatie link wordt de koppeling van het UiTPAS-profiel aan UiTID tot stand gebracht. Als je de hierboven aangegeven flow volgt, dan zal de UiTID-service  voorstellen aan de gebruiker om het ingelogde UiTID te koppelen.

Als de user ingelogd is met een UiTID dat reeds gekoppeld is aan een UiTPAS(houder), dan wordt gevraagd om uit te loggen en een nieuw UiTID te registeren (met een andere e-mailadres).
