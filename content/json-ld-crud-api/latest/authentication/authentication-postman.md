---
---
# Perform requests using POSTMAN

## Authorization header

Under 'Headers' set:

JWT:
- Key: `Authorization`
- Value: `Bearer <jwt>`

API Key:
- Key: `X-Api-Key`
- Value: `<your api key>`

![Postman authorization](/img/postman-authorization.png "Postman authorization")

## Define host

see [UiTdatabank host]({% link content/json-ld-crud-api/latest/authentication/authentication-baseUrl.md %}) documentation

## Define path
Path:
See documentation

![Postman url](/img/postman-method-url-crud.png "Postman url")

## HTTP Method
Use the correct HTTP method for the chosen path

![Postman method](/img/postman-method-url-crud.png "Postman method")

## Request Body
A well formed json-ld body is required (See documentation for specs).
Use 'raw'

![Postman body](/img/postman-body-crud.png "Postman body")
