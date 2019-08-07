---
---

# Add mediaObject

Add mediaObjects, which you can later link to one or more offers. Only images up to 5 million bytes (4.76 MB) are allowed.

## HTTP request

```
POST /images/
```

## Request headers

| Header        | Value            | Required? |
| ------------- | ---------------- | --------- |
| Authorization | Bearer {token}   | true      |
| X-Api-Key     | {apiKey}         | true      |
| Content-Type  | multipart/form-data | true      |

## Request body

To create a new image the object-body must contain the following properties:
- file
- language
- description
- copyrightHolder

## Response

If successful, this method returns a `201` response code and a imageId in the response body.

## Example

**request**

The following is an example of the Curl-request

```
POST https://io-test.uitdatabank.be/images/
Authorization: Bearer {token}
X-Api-Key: {apiKey}

-F file=@"Screenshot 2017-11-28 12.37.19.png"
-F description=Example description
-F copyrightHolder=example copyrightHolder
-F language=nl
```

**Response**

The following is an example of the response.

```
201 Created

{
  "imageId": "373dcebd-dce5-4fee-8e31-45458b2f6735"
}
```
