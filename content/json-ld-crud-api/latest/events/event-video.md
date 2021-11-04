---
---

# Event - video

Add, update or delete one or more videos from an event:
* **Add**: Importing a video without an id will create add a new video to the event
* **Update:** 
	* Importing a video with an id that does not exist will add a new video to the event
	* Importing a video with an id that does exist will update the existing video on the event
* **Deleting:** importing less videos will result in deleting videos from the event

**Mandatory properties:**
* url 
* language

Note that currently only urls from YouTube or Vimeo are allowed.

**Optional properties:**
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
