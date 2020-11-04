---
---

# Coupon

Coupons zijn geïntroduceerd om tegemoet te komen aan de vereiste om meer flexibele constraints wat betreft ticketverkoop te ondersteunen. Zonder het gebruik van een coupon kan de ticketverkoop op een event beperkt worden door de buyConstraint per pashouder op de event-entiteit in te stellen. (‘x’ tickets/pashouder absoluut, ‘x’ tickets per dag per pashouder etc. ) maar dit is beperkt qua mogelijkheden.

Coupons laten meer vrijheidsgraden.
Een pashouder met een coupon, zal recht hebben op een overeenkomstige korting.

Een coupon heeft volgende eigenschappen:

**Naam**

**Omschrijving**

Omruilvoorwaarde per gebruiker (‘x’ per tijdseenheid)
Aantal maal dat een coupon door éénzelfde pashouder kan worden ingezet (over alle events waar de coupon geldig is heen).

**Buyconstraint op event-niveau**

Aantal maal dat een coupon op éénzelfde event kan worden ingezet.

**Geldigheidsperiode**: Van ... tot..

**Verdeling**: verdeelsleutel die wordt gebruikt als de coupon wordt omgeruild

**Condities**
Deze bepalen op welk(e) event(s) de coupon kan ingezet worden.
organisator = {cdbid}
event cdbid = {cdbid}
prijs < = >   
locatie = {cdbid}
keywords=

Een coupon kan toegekend worden aan **pashouders**
- Aan alle MIA’s uit het kaartsysteem
- Aan alle pashouders uit het kaartsysteem

Er kan gekozen worden om de coupon bij nieuwe registraties steeds opnieuw toe te kennen.

Een coupon heeft een **status**
- actief: de coupon is geldig, kan worden toegekend aan pashouders en kan worden omgeruild
- gestopt: de coupon wordt niet meer aan nieuwe pashouders toegekend, maar de reeds uitgereikte coupons blijven bestaan
- verwijderd: de coupon wordt niet meer aan nieuwe pashoduers toegekend en de reeds bestaande worden ongeldig
