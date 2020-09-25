---
---

# Authenticatie via Consumer Request ("2legged oauth")

![2-legged oauth](/img/2leggednieuw.png "2-legged oauth")

Bij deze vorm van authenticatie is er geen accesToken of accessTokenSecret. Deze worden uit de request weggelaten (of als lege string meegegeven).

De Consumer Request wordt gebruikt wanneer een Service Consumer een actie uitvoert die niet namens 1 gebruiker gebeurt. De stap met de gebruikers autorisatie valt dus ook weg.

De Service Consumer tekent de request door middel van zijn consumerKey en consumerSecret.

## Voorbeeld PHP code om met consumer request Search API 2 aan te spreken

In onderstaande voorbeeld code wordt gebruik gemaakt van de [oauth-subscriber](https://github.com/guzzle/oauth-subscriber) in [Guzzle 6](https://github.com/guzzle/guzzle) voor de authenticatie met UiTID. We raden deze PHP HTTP client aan, maar je kan er ook anderen gebruiken. Meer info over de installatie van Guzzle en hoe requests op te bouwen vind je op [http://docs.guzzlephp.org](http://docs.guzzlephp.org/en/stable/overview.html)

<script src="https://gist.github.com/stijnswaanen/b220b05b6f2fe5310138d7ed9badb3bd.js"></script>
