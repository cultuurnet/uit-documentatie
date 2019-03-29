---
---
# Items aanmaken, aanpassen en verwijderen

## Service endpoints

| URL | POST | PUT | GET | DELETE |
| -- | -- | -- | -- | -- |
| ```{server}/api/v3/{event}{production}{actor}``` | X (item aanmaken) | -- | X (item opzoeken) | -- |
| ```{server}/api/v3/{event}{production}{actor}``` | -- | X (item aanmaken) | X (item detail) | X (item verwijderen) |

Waarbij server =

- testomgeving: ```https://test.uitid.be/uitid/rest/entry/test.rest.uitdatabank.be```
- live omgeving: ```https://www.uitid.be/uitid/rest/entry/rest.uitdatabank.be```


## Item aanmaken

### Request eigenschappen

Method: POST
URL: ```{server}/api/v3/{event|production|actor}```

Argumenten:

| Deel | Beschrijving | Verplicht |
| -- | -- | -- |
| Authenticatie | oAuth informatie, zie authenticatie via UiTID | X |
| Item | CdbXML 3.3 representatie van het item. Zie in drie stappen een CdbXML document maken | X |

### Voorbeeld

#### Request URL

```
{server}/api/v3/event
```

#### POST data

~~~ xml
<?xml version="1.0" encoding="UTF-8"?>
<cdbxml xmlns="http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.3/FINAL">
    <event>
      <calendar>
        <timestamps>
          <timestamp>
            <date>2010-12-12</date>
          </timestamp>
        </timestamps>
      </calendar>
      <categories>
        <category type="eventtype" catid="0.50.4.0.0"/>
      </categories>
      <contactinfo>
        <mail>info@info.be</mail>
      </contactinfo>
      <eventdetails>
        <eventdetail lang="nl">
          <title>Event titel</title>
        </eventdetail>
      </eventdetails>
      <location>
        <address>
          <physical>
            <city>Brussel</city>
            <country>BE</country>
            <zipcode>1000</zipcode>
          </physical>
        </address>
        <label>Naam locatie</label>
      </location>
    </event>
</cdbxml>
~~~

#### Response

~~~ xml
HTTP/1.1 200 OK
Cache-Control: no-cache
Pragma: no-cache
Content-Type: text/xml; charset=utf-8
Content-Encoding: deflate
Expires: -1
Date: Fri, 18 May 2012 07:59:11 GMT
Content-Length: 2142
<?xml version="1.0" encoding="UTF-8"?>
<rsp level=”INFO” version=”0.1”>
<code>ItemCreated</code>
<link>uitdatabank.be/api/v3/event/{id}</link>
</rsp>
~~~

## Item aanpassen

### Request eigenschappen

Method: PUT
URL: ```{server}/api/v3/{event|production|actor}/{id}```

Argumenten:

| Deel | Beschrijving | Verplicht |
| -- | -- | -- |
| Authenticatie | oAuth informatie, zie authenticatie via UiTID | X |
| Item | CdbXML 3.3 representatie van het item. Zie in drie stappen een CdbXML document maken | X |

### Voorbeeld

#### Request URL

```
{server}/api/v3/event/93b34aaf-3f94-4f6e-b514-98a92ca75502
```

#### Post data (Zie voorbeeld bij 'item aanmaken')

```
...

```

#### Response

```
HTTP/1.1 200 OK
Cache-Control: no-cache
Pragma: no-cache
Content-Type: text/xml; charset=utf-8
Content-Encoding: deflate
Expires: -1
Date: Fri, 18 May 2012 07:59:11 GMT
Content-Length: 2142
<?xml version="1.0" encoding="UTF-8"?>
<rsp level=”INFO” version=”0.1”>
<code>ItemModified</code>
<link>http://www.uitdatabank.be/api/v3/event/{id}</link>
</rsp>
```

## Item verwijderen

### Request eigenschappen

Method: DELETE
URL: ```{server}/api/v3/{event|production|actor}/{id}```

Argumenten:

| Deel | Beschrijving | Verplicht |
| -- | -- | -- |
| Authenticatie | oAuth informatie, zie authenticatie via UiTID | X |

Een DELETE request om een actor te verwijderen waaraan events gekoppeld zijn is niet toegestaan.

### Voorbeeld

#### Request URL

```
{server}/api/v3/event/93b34aaf-3f94-4f6e-b514-98a92ca75502
```

#### Response

```
HTTP/1.1 200 OK
Cache-Control: no-cache
Pragma: no-cache
Content-Type: text/xml; charset=utf-8
Content-Encoding: deflate
Expires: -1
Date: Fri, 18 May 2012 07:59:11 GMT
Content-Length: 2142
<?xml version="1.0" encoding="UTF-8"?>
<rsp level=”INFO” version=”0.1”>
<code>ItemWithdrawn</code>
</rsp>
```
