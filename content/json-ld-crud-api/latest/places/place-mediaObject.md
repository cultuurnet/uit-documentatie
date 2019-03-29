---
---

# Place - mediaObject & main Image

* Can contain one or more mediaObjects
* `@type` is optional: defaults to `schema:ImageObject` (it is not possible to add videos)
* the main image is automatically set to the first mediaObject in the array

See JSON-LD api documentation to [create a mediaObject]({% link content/json-ld/latest/images/image-post.md %}).

**Example**

```
"mediaObject": [
  {
    "@id": "https://udb-silex-test.uitdatabank.be/images/5132489d-762f-4549-9eb4-3374ea1a77f3",
    "@type": "schema:ImageObject",
    "contentUrl": "https://udb-silex-test.uitdatabank.be/images/5132489d-762f-4549-9eb4-3374ea1a77f3.png",
    "thumbnailUrl": "https://udb-silex-test.uitdatabank.be/images/5132489d-762f-4549-9eb4-3374ea1a77f3.png",
    "description": "Test image 2",
    "copyrightHolder": "Test copyright",
    "inLanguage": "nl"
  },
  {
    "@id": "https://udb-silex-test.uitdatabank.be/images/6186b6c7-f059-44db-8859-f51fc3092b07",
    "@type": "schema:ImageObject",
    "contentUrl": "https://udb-silex-test.uitdatabank.be/images/6186b6c7-f059-44db-8859-f51fc3092b07.png",
    "thumbnailUrl": "https://udb-silex-test.uitdatabank.be/images/6186b6c7-f059-44db-8859-f51fc3092b07.png",
    "description": "Test image 3",
    "copyrightHolder": "Test copyright",
    "inLanguage": "nl"
  },
  {
    "@id": "https://udb-silex-test.uitdatabank.be/images/922954a3-80d7-408e-a8b2-88b803ec0c25",
    "@type": "schema:ImageObject",
    "contentUrl": "https://udb-silex-test.uitdatabank.be/images/922954a3-80d7-408e-a8b2-88b803ec0c25.png",
    "thumbnailUrl": "https://udb-silex-test.uitdatabank.be/images/922954a3-80d7-408e-a8b2-88b803ec0c25.png",
    "description": "Test image",
    "copyrightHolder": "Test copyright",
    "inLanguage": "nl"
  }
]
```
