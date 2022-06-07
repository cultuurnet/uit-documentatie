---
---

# List active CardsystemIDs

## Host

 For documentation on UiTPAS base url, go [here]({% link content/entry_api_3/latest/authentication/authentication-baseUrl.md %})

## HTTP request

```
GET /labels/
```
View the active cardSystem IDs and corresponding UiTPAS labels

## Request headers

| Header        | Value            | Required? |
| ------------- | ---------------- | --------- |
| Authorization | Bearer {token}   | false     |
| X-Api-Key     | {apiKey}         | false     |
| Content-Type  | application/json | false     |

## Response

If succesful, this method returns a `200` response code and a JSON-LD document in the response body, with the cardSystem ID's and the corresponding UiTPAS labels

**Example response**

```
{
"1": "UiTPAS Regio Aalst",
"3": "Paspartoe",
"5": "UiTPAS Gent",
"7": "UiTPAS Oostende",
"8": "UiTPAS Zuidwest",
"10": "UiTPAS",
"12": "UiTPAS Kempen",
"13": "UiTPAS Mechelen",
"14": "UiTPAS Maasmechelen",
"15": "UiTPAS Heist-op-den-Berg",
"16": "UiTPAS Lier",
"17": "UiTPAS Leuven",
"18": "UiTPAS Westhoek",
"19": "UiTPAS Meetjesland",
"20": "UiTPAS Haspengouw",
"21": "UiTPAS Herita",
"22": "UiTPAS Mortsel",
"23": "UiTPAS Aarschot",
"24": "UiTPAS Nijlen",
"25": "UiTPAS Rupel",
"26": "UiTPAS 26",
"27": "UiTPAS Sint-Pieters-Leeuw",
"28": "UiTPAS Maldegem",
"29": "UiTPAS Bornem",
"30": "UiTPAS 30",
"31": "UiTPAS 31",
"32": "UiTPAS 32",
"33": "UiTPAS 33",
"34": "UiTPAS 34",
"35": "UiTPAS 35",
"36": "UiTPAS 36",
"37": "UiTPAS 37"
}
```

## Mapping cardsystemID, region & label (production environment)

| cardsystem ID | Region Name                  | UiTPAS label              |
|---------------|------------------------------|---------------------------|
| 1             | UiTPAS Dender                | UiTPAS Regio Aalst        |
| 3             | Paspartoe Brussel            | Paspartoe                 |
| 5             | UiTPAS Regio Gent            | UiTPAS Gent               |
| 7             | UiTPAS Oostende              | UiTPAS Oostende           |
| 8             | UiTPAS Zuidwest              | UiTPAS Zuidwest           |
| 12            | UiTPAS Kempen                | UiTPAS Kempen             |
| 13            | UiTPAS Mechelen              | UiTPAS Mechelen           |
| 14            | UiTPAS Maasland              | UiTPAS Maasmechelen       |
| 16            | UiTPAS Lier                  | UiTPAS Lier               |
| 17            | UiTPAS Regio Leuven          | UiTPAS Leuven             |
| 18            | UiTPAS Westhoek              | UiTPAS Westhoek           |
| 19            | UiTPAS Meetjesland           | UiTPAS Meetjesland        |
| 20            | UiTPAS Haspengouw            | UiTPAS Haspengouw         |
| 22            | UiTPAS Mortsel               | UiTPAS Mortsel            |
| 23            | UiTPAS Aarschot              | UiTPAS Aarschot           |
| 24            | UiTPAS Nijlen                | UiTPAS Nijlen             |
| 25            | UiTPAS Rupel                 | UiTPAS Rupel              |
| 26            | UiTPAS Hasselt               | UiTPAS 26                 |
| 27            | UiTPAS Sint-Pieters-Leeuw    | UiTPAS Sint-Pieters-Leeuw |
| 28            | UiTPAS Maldegem              | UiTPAS Maldegem           |
| 29            | UiTPAS Bornem                | UiTPAS Bornem             |
| 30            | UiTPAS Herk-de-Stad / Lummen | UiTPAS 30                 |
| 31            | UiTPAS Druivenstreek         | UiTPAS 31                 |
| 32            | UiTPAS Noordrand             | UiTPAS 32                 |
| 33            | UiTPAS Van Polder tot Kempen | UiTPAS 33                 |
| 34            | UiTPAS Reynaert              | UiTPAS 34                 |
| 35            | UiTPAS de Merode             | UiTPAS 35                 |
| 36            | UiTPAS Pelt                  | UiTPAS 36                 |
| 37            | UiTPAS Beringen              | UiTPAS 37                 |
