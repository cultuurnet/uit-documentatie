---
---

# Acties voor een pashouder aan een balie ophalen

_Method_
GET

_URL_
{prefix}/uitpas/passholder/eventActions

Parameters:

| Naam                  | Type    | Omschrijving                                                                                                                                                                                                           | Verplicht         |
|-----------------------|---------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------|
| identification        | String  | identificatie van een pashouder                                                                                                                                                                                        | x (zie opmerking) |
| chipNumber            | String  | NFC card chip number                                                                                                                                                                                                   | x (zie opmerking) |
| uitpasNumber          | String  | uitpas nummer 13 cijfers                                                                                                                                                                                               | x (zie opmerking) |
| cdbid                 | String  | id van een event                                                                                                                                                                                                       |                   |
| autocheckin           | boolean | default waarde: false                                                                                                                                                                                                  |                   |
| includeProfilePicture | boolean | default waarde: false, indien true wordt de base64 encoded profile picture ook teruggegeven als deze gezet is.                                                                                                         |                   |
| balieConsumerKey      | String  | ConsumerKey van de balie waarop deze request gebeurt. Deze parameter is niet verplicht. Standaard wordt de consumer key uit de oauth request gebruikt. Zie gebruik van andere balies door Service Consumer in punt 2.4 |                   |

_Opmerking_
Het is verplicht om ofwel uitpasNumber of chipNumber of identification mee te geven. Het is niet toegelaten beide mee te geven.

_Authenticatie_
[User access token]({% link content/authenticatie-autorisatie/latest/authenticatie-XML-apis/authenticatie-via-useraccesstoken.md %}) van een balie medewerker.

**Response**

<u>Bij succes</u>
HTTP 200 OK met een response body in XML formaat. Deze request geeft een gepaste foutboodschap indien de pashouder geen actief lidmaatschap heeft bij een kaartsysteem. Er zullen dan geen opneembare welkomst- of verzilvervoordelen in de response zitten. (lege lijsten)

<u>Bij fouten</u>
HTTP 400 met een response body in XML formaat:

| parameters         | verklaring                                                                                                                                                                                                                                                                                                                                                                                       |
|--------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| code               | ErrorCode van de fout:UNKNOWN_BALIE_CONSUMERKEY <br> PARSE_INVALID_UITPASNUMBER <br> INVALID_PARAMETERS (indien zowel chipnummer als uitpasnummer worden gegeven) <br> MISSING_REQUIRED_FIELDS <br> UNKNOWN_UITPASNUMBER <br> UNKNOWN_CHIPNUMBER <br> INVALID_CARD_STATUS_BLOCKED <br> INVALID_CARD_STATUS_LOCAL_STOCK <br> INVALID_CARD_STATUS_DELETED <br> INVALID_CARD_STATUS_STOCK <br> INVALID_CARD_STATUS_PROVISIONED <br> INVALID_CARD_STATUS_SENT_TO_BALIE |
| message            | Beschrijving van de fout                                                                                                                                                                                                                                                                                                                                                                         |
| requiredPermission | Indien code = ACCESS_DENIED, dan bevat dit veld de vereiste permissie.                                                                                                                                                                                                                                                                                                                           |

_Voorbeeld request_

GET {prefix}/uitpas/passholder/eventActions

uitpasNumber=0930061965313
balieConsumerKey=31413BDF-DFC7-7A9F-10403618C2816E44
cdbid=c6f9df84-22de-4775-abe3-187bb8649efd
autoCheckin=true
includeProfilePicture=true

_Voorbeeld response_


~~~xml
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response>
    <passHolder>
        <cardSystemSpecific>
            <cardSystem>
                <id>1</id>
                <name>HELA</name>
            </cardSystem>
            <currentCard>
                <kansenpas>true</kansenpas>
                <status>ACTIVE</status>
                <uitpasNumber>
                    <uitpasNumber>0930012345615</uitpasNumber>
                </uitpasNumber>
            </currentCard>
            <emailPreference>ALL_MAILS</emailPreference> <!-- DEPRECATED FIELD: Zie Opt-In voorkeuren aanpassen -->
            <kansenStatuut>true</kansenStatuut>
            <kansenStatuutEndDate>2013-12-31T23:59:59+01:00</kansenStatuutEndDate>
            <kansenStatuutExpired>false</kansenStatuutExpired>
            <kansenStatuutInGracePeriod>false</kansenStatuutInGracePeriod>
            <lastActivationMailNumber>0</lastActivationMailNumber>
            <smsPreference>NO_SMS</smsPreference> <!-- DEPRECATED FIELD: Zie Opt-In voorkeuren aanpassen -->
            <status>ACTIVE</status>
        </cardSystemSpecific>
        <city>AALST</city>
        <dateOfBirth>1980-12-15T00:00:00+01:00</dateOfBirth>
        <email>willy.wouters@mailinator.com</email>
        <firstName>Willy</firstName>
        <secondName>middlename</secondName>
        <gender>MALE</gender>
        <gsm>gsm-nr</gsm>
        <inszNumber>78021542697</inszNumber>
        <memberships/>
        <name>Wouters</name>
        <nationality>Belg</nationality>
        <number>1</number>
        <numberOfCheckins>5</numberOfCheckins>
        <picture>aVZCT1J3MEtHZ29BQUFBTlNVaEVVZ0FBQUNBQUFBQWdDQVlBQUFCemVucjBBQUFGTkVsRVFWUjRuTVdWMjIvVGRoVEh2ei9IVFdQSApqcDNFYlpJbWJkUFNyZ1dWQWxPbkRTUjJFYnV4QjBSQlUxZHBna25UWUZzM2lnWmp6M3ZidzRZMG1EU0pTV2d3ME5EMkIyd3ZlOWdrClFLSkN3S0QwbGpaSkc5S21UUXU1T0U3c3hMODlkQ0FxU3RQTDFCM3B2TmpuZk0vbmQzNzJPY0QvYkdRdHljT2VZN3MwSC84dU41bTcKOEV6aW16OVdvOEd1QlNEVktuMVZiRlU2OU1Ga0d4SjRialVhekZvQUNvcXRyY3J2Z2Viak9rYkZYcys2QXR4dCtLTEhvZ2cydDY4YQpuTThGemNjZFdsY0F6Y2Z0a3h1OXFBd3FrT3M4MEh6OG5uVUc0SGU0Z2pWZ1pBN3VqYlhRZkZ6SHVnRU1CbzUzV1JUQlpsY2tFQXNECm04TU9XN1dFdXcwbmV0WUZJT2ZsM2hGOExsaHNWdENpQ1laaElBZTl5SG00ZlN2Vld0VnZxSHBzTHpiV2UwQnpPaWd6UDBwRW40SkoKcjIzSFNyVlczSUdoNnM5MlVZVjNDYkkwRDVBdGdHWUxzRnNyd1RnNVczL3c4eFZkdzRvQk1nSHVFN0ZHQWFNYU1OUDVSMDZ5T2h3KwpCV3ExYlVYWFFBRGdyMWUvbk5BZGJHQzVTUnRlZWhZdWxsODR5RTJLQjlrMFJxN2RYblp4YTdvWVl3RkFyeVNLZTBzRGZEVStNTG9KCldGa3dMTFA0cG1BWVZCZ1VwV1QyaVZjT1VjVFd6cGVCa3Zsa0hnVm95UVRWaXpDdERCTFRNNWk1UEtnUUFCaVdlemZmYTdQL3F0ZUsKTGZXQkFOeUNQQzlDbDMyWThrWUFNQVNwZ29ySStBUndMeFh6MzhtOXQrQ01WemNlUHpmZHhCM3cxUHRSNS9hQWFFV1U4c2FhYTF1cwpMTUJYSUpaT0lqNDZqdXFRZG43N3dOY0hIM0l0c0g2bGQxZTR0ZkljVStmME4vbHF3UnNFeFd3ZUlLdlkzSlRDd2xjaVp5a2hmRCtCClFqUjV2MkdvME5NKzllM1BEME1XVlEwSlJ6d1RkWll6aWFCMVQ2QTJBRDhSVWNwb01QWFNzbXN6TEFQV2FVZkN5Q0FTajhFMVVmaXoKWWF6VTFaUTlsWGc4YnNsajNmQWM2ZTV2SVdkRnIySnJscjNBWkJxbVVSNkNZUzFnZkE0TVo2YVFqaWZ6clNGNm9pTis2dlJpc1dYNwpPaUo4NnVsdnhHOFB2T3kySnRVT0c3V1VCVEFJeFloVEF4L1hSamFOa3JjM3BVN2ZlaXBzT2JIbTdPbUVsREl2VzJVQnJFRlJ5S2hsCkhYa0RuTU1PUGtPSGxpb09MSE1YUkozNmZqZXN5RTFQTHU5anBEbElGVUZFSlgxbnVkQ3lIYmdqOW15OUwxQ2ZMVldFbGxHaHBiT1AKdktCcXFKVHQwUE9GQmMrMWpBb21OQXROWUtTYmNzL3Jhd0tJUzhZSHZFdUVkaXVLdktvOWNqQUVmR3NOWWg2QWEvYUNWRmdXdkZjSAo0N0RMRG93NUMwZlhCREFzYWZ2c09vdmNYQnFHV1lSaEZpSDZGVmphL2JpSmFVU243aFg2TUFXMDEwRDBLeWdSQ3NPYzc1WmdNSWlJCmhTVlg5SklBdDhXUHQ4M3hKYTgxbVlNQkU5UnFnWHRURUhQTkF2b3lFWGlqK3U4bmJsNjBOWTJabC9wbVJ6RzlnWU96cFJhRXE0QUIKRXlTU2dpWkF1aTU5K01hcUFDS0NkdGl1eU1pSHBsRXAyK0hhMm9nQnA0ckJXRmpmT2NZZjY0cit1QnNBOXNiT2RyOFdGZytHNHVQNgpnRk9GdkRrSXp1V0FGcDJHNEpReExHbEhWd1V3SUdZNytXd0pndE1CdHQyUHE4VVk2SGdxdkQraXZQQnk4b2VUajhmdW1EdHp2anZzCnFhZmpxZkRWWWd4bVd6VWtyd0o3MWtTSVU1OTZEVThGK0Z2NGFOdXN2VlJkN3cxZ3RwSEhsY1FRTmthWlgzcEhMelZ1em41L1k3R2MKRnZXN3FkN1JTNDFid3V5WmE0a1J4T3RZQkJ3S0NrN1djYzF4YVBlS0FBYjVUSS9vcjhMMW1USDB4MExHbXhPdXcxMlRQM1UvTGY1eAo2MHljTzl3NVhyVTNQQkhOWHBrTFFmUlhZWWpQdnI5WTdJSkJSQWl4RWtMc0RNTzRVcWFtRGtXbTRGWXRVOXRuNVo2MzhoY1RWcXYxCmVVcXBTaWt0VUVvTkFIbk1qM01DZ0JKQ09BQVZoQkQrRmUxODhrS2k4MENmUG5zeW5Fb0VwYUkweWJKc3MybWFNLzlxckgzUC94ZjIKRHdNcFIwNUw2RXQxQUFBQUFFbEZUa1N1UW1DQw==</picture>
        <placeOfBirth>Aalst</placeOfBirth>
        <points>9.000</points>
        <postalCode>9300</postalCode>
        <registrationBalieConsumerKey>cad22a20fa67b12ac1306b49755a2f7e</registrationBalieConsumerKey>
        <street>Wolvenveld</street>
        <telephone>0444/44.44.44</telephone>
        <uitIdUser>
            <ns2:id>031db251-9475-475e-bd0c-66dff0fa0577</ns2:id>
            <ns3:nick>willywouters</ns3:nick>
            <optInPreferences>
                <optInServiceMails>false</optInServiceMails>
                <optInMilestoneMails>true</optInMilestoneMails>
                <optInInfoMails>false</optInInfoMails>
                <optInSms>false</optInSms>
                <optInPost>true</optInPost>
            </optInPreferences>
        </uitIdUser>
        <verified>false</verified>
    </passHolder>
    <eventCheckin>
        <cdbid>eef2c9b0-3bb5-4711-bcde-a1e3dff9d3b8</cdbid>
        <checkinAllowed>false</checkinAllowed>
        <numberOfPoints>1</numberOfPoints>
        <checkinConstraintReason>MAXIMUM_REACHED</checkinConstraintReason>
    </eventCheckin>
    <eventBuyTicket>
        <cdbid>c6f9df84-22de-4775-abe3-187bb8649efd</cdbid>
        <tariff>0.0</tariff>
        <price>0.0</price>
    </eventBuyTicket>
     <eventBuyTicketWithTicketSaleCoupon>
        <cdbid>eef2c9b0-3bb5-4711-bcde-a1e3dff9d3b8</cdbid>
        <price>10.0</price>
        <ticketSaleCouponTariff type="COUPON">
            <ticketSaleCoupon>
                <buyConstraint>
                    <periodType>ABSOLUTE</periodType>
                    <periodVolume>1</periodVolume>
                </buyConstraint>
                <exchangeConstraint>
                    <periodType>ABSOLUTE</periodType>
                    <periodVolume>1</periodVolume>
                </exchangeConstraint>
                <id>24</id>
                <name>Coupon1</name>
            </ticketSaleCoupon>
            <remainingForEvent>
                <periodType>ABSOLUTE</periodType>
                <periodVolume>1</periodVolume>
            </remainingForEvent>
            <remainingTotal>
                <periodType>ABSOLUTE</periodType>
                <periodVolume>1</periodVolume>
            </remainingTotal>
            <priceClasses>
                <priceClass>
                    <name>Default prijsklasse</name>
                    <price>10.0</price>
                    <tariff>6.0</tariff>
                </priceClass>
            </priceClasses>
        </ticketSaleCouponTariff>
        <ticketSaleCouponTariff type="COUPON">
            <ticketSaleCoupon>
                <buyConstraint>
                    <periodType>ABSOLUTE</periodType>
                    <periodVolume>1</periodVolume>
                </buyConstraint>
                <exchangeConstraint>
                    <periodType>ABSOLUTE</periodType>
                    <periodVolume>1</periodVolume>
                </exchangeConstraint>
                <id>36</id>
                <name>Coupon 2</name>
            </ticketSaleCoupon>
            <remainingForEvent>
                <periodType>ABSOLUTE</periodType>
                <periodVolume>1</periodVolume>
            </remainingForEvent>
            <remainingTotal>
                <periodType>ABSOLUTE</periodType>
                <periodVolume>1</periodVolume>
            </remainingTotal>
            <priceClasses>
                <priceClass>
                    <name>Default prijsklasse</name>
                    <price>10.0</price>
                    <tariff>2.0</tariff>
                </priceClass>
            </priceClasses>
        </ticketSaleCouponTariff>
    </eventBuyTicketWithTicketSaleCoupon>
    <welcomeAdvantages>
        <total>2</total>
        <promotions>
            <welcomeAdvantage>
                <id>1</id>
                <title>welkomstvoordeel: gratis sleutelhanger</title>
            </welcomeAdvantage>
            <welcomeAdvantage>
                <id>2</id>
                <title>Een theatercheque van 2,5 euro in cc De Werf</title>
            </welcomeAdvantage>
        </promotions>
    </welcomeAdvantages>
    <pointsPromotions>
        <total>2</total>
        <promotions>
            <pointsPromotion>
                <id>4</id>
                <title>Gratis stickers</title>
                <cashInState>POSSIBLE</cashInState>
                <points>1</points>
            </pointsPromotion>
            <pointsPromotion>
                <id>3</id>
                <title>Gratis drankje</title>
                <cashInState>POSSIBLE</cashInState>
                <points>1</points>
            </pointsPromotion>
        </promotions>
    </pointsPromotions>
    <checkinAction>
        <code>ACTION_SUCCEEDED</code>
        <resource>Punt sparen</resource>
    </checkinAction>
</response>
~~~
