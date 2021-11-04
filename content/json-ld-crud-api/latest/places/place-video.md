---
---

# Place - video

It is possible to include more than one video.

Mandatory properties:
* url 
* language

Note that currently only urls from YouTube or Vimeo are allowed.

Optional properties:
* copyrightHolder
* id (but mandatory for updating existing videos)

If no copyrightHolder is added to the video, UiTdatabank will add a default copyrightHolder, depending on the value of the language property.

| NL            | FR               | EN        | DE |
| ------------- | ---------------- | --------- | --- |
| Copyright afgehandeld door {name video platform} | Droits d'auteur gérés par {name video platform} | Copyright handled by {name video platform} | Urheberrecht gehandhabt von {name video platform} |


**Example**

```
"videos": [
	{
  		"id": "eb593203-41ac-43ed-93f7-5a357f97fcd9",
  		"url": "https://www.youtube.com/watch?v=-48LMmJLUpg",
  		"language": "nl",
  		"copyrightHolder": "BMI - Broadcast Music Inc"
  	},
  	{
  		"url": "https://www.youtube.com/watch?v=oavMtUWDBTM",
  		"language": "en",
  	}
 ]
```
