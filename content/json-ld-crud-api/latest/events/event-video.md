---
---

# Event - video

Add, update or delete one or more videos from an event:
* **Add**: Importing a video without an id will create add a new video to the event
* **Update:** 
	* Importing a video with an id that does not exist will add a new video to the event
	* Importing a video with an id that does exist will update the existing video on the event
* **Deleting:** importing less videos will result in deleting videos from the event

## Mandatory properties
* url 
* language

Note that currently only urls from YouTube or Vimeo are allowed.

## Optional properties:
### copyrightHolder

If no copyrightHolder is added to the video, UiTdatabank will add a default copyrightHolder, depending on the value of the language property.

| NL            | FR               | EN        | DE |
| ------------- | ---------------- | --------- | --- |
| Copyright afgehandeld door {name video platform} | Droits d'auteur gérés par {name video platform} | Copyright handled by {name video platform} | Urheberrecht gehandhabt von {name video platform} |

### id
The id is optional, but mandatory to update an existing video.
* If no id or a non-existing id is passed, a new video will be created
* If an existing id is passed, the existing video will be updated


## Example

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
