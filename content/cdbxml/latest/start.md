---
---

# CdbXML

CdbXML is een compacte, eenvoudige gegevensstandaard om informatie over het cultuur en vrijetijd uit te wisselen. CdbXML beschrijft het datamodel van de UiTdatabank en de UiTdatabank categorisatie a.d.h.v. XML Schema (XSD). Je vindt het XML Schema op [http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.3/FINAL/CdbXSD.xsd](http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.3/FINAL/CdbXSD.xsd)

**Conventies omtrent noteringen**

Velden worden in onderliggende secties als hun XPath positie genoteerd. XPath wordt gebruikt om door elementen en attributen in een XML document te navigeren. In XPath wordt een XML document behandeld als een boomstructuur met nodes. Er worden path expressions gebruikt om door de nodes te navigeren. Het bovenste element in de boomstructuur is de root node.

~~~xml
<?xml version="1.0" encoding="ISO-8859-1"?>
<bookstore>
  <book>
    <title lang="en">Harry Potter</title>
    <author>J K. Rowling</author>
    <year>2005</year>
    <price>29.99</price>
  </book>
</bookstore>
~~~


|   Element  | Voorbeeld|
| -- | -- |
|  Root node| <bookstore>  |
|  Element node  |<author>J K. Rowling</author> |
|  Attribuut node | lang="en"  |


De pad expressies die in dit document gebruikt worden zijn hieronder opgelijst:

| Expressie | Beschrijving |
| --- | --- |
| nodename | Selecteert alle kind elementen van de genoemde node. |
| / | Selecteert de root node. |
| // | Selecteert de nodes in het document vanuit de huidige node ongeacht waar die zijn. |
| @ | Selecteert attributen. |

In onderstaande tabel worden de expressies toegepast op het voorbeeld:

| Path Expression | Result |
| --- | --- |
| bookstore | Selecteert alle kind elementen van de genoemde node. |
| / | Selecteert het root element bookstore. |
| bookstore/book | Selecteert alle book elementen die onderdeel zijn van bookstore. |
| //book | Selecteert alle book elementen ongeacht waar ze zich in het document bevinden. |
| @lang | Selecteert alle attributen die lang heten |
