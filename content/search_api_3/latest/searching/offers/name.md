---
---

# Name

Using the advanced query parameter `name`, you can search for an exact or partial match with the name of an event or place.
Likewise you can search for `location.name` to find events that take place on a certain location, or `organizer.name` to search events or places that have a certain organizer.

## Use

|                      | `/offers` | `/events` | `/places` | `/organizers` |
| -------------------- | --------- | --------- | --------- | ------------- |
| `name.{language}`          | x         | x         | x         | x             |
| `organizer.name.{language}`|      x    |     x     |     x     |               |
| `location.name.{language}` | x         | x         |           |               |


Note: these parameters are not available as a url parameter. 


## Localization \(Translations\)

The name field is multilingual. You can either search 
- through one language
- multiple languages
- all languages

**One language**
```
GET https://search.uitdatabank.be/places/?q=name.nl:"Museum voor Schone Kunsten van Doornik"
```

```
GET https://search.uitdatabank.be/places/?q=name.fr:"Musée des Beaux-Arts de Tournai"
```

**Multiple languages**
```
GET https://search.uitdatabank.be/places/?q=name.nl:"Museum voor Schone Kunsten van Doornik" OR name.fr:"Musée des Beaux-Arts de Tournai"
```

**All languages**

You can search through all languages by adding a wildcard for the language:

```
GET https://search.uitdatabank.be/places/?q=name.\*:"Museum voor Schone Kunsten van Doornik"
```

## Examples
**Search for all events that have "herfstwandeling" in their name**
```
GET https://search.uitdatabank.be/events/?q=name.\*:*herfstwandeling*
```

**Search for all events organized by "Ancienne Belgique"**
```
GET https://search.uitdatabank.be/events/?q=organizer.name.\*:*ancienne belgique*
```

**Search for all events that have "Ancienne Belgique" as their location**
```
GET https://search.uitdatabank.be/events/?q=location.name.\*:*ancienne belgique*
```

**Search for all places that have the word "cultuurcentrum" in their name**
```
GET https://search.uitdatabank.be/places/?q=name.\*:*cultuurcentrum*
```

**Search for all organizers that have the word "cultuurcentrum" in their name**
```
GET https://search.uitdatabank.be/organizers/?name.\*:*cultuurcentrum*
```

