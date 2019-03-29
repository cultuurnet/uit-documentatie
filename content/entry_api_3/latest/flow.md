---
---

# Project flow from TEST to PRODUCTION

**Step 1: start on TEST environment**

Every Entry API project starts developing on the TEST environment.

* You can apply for a free API-key at https://projectaanvraag.uitdatabank.be.
* Every request to the UiTdatabank API must be signed with a valid JSON Webtoken (JWT). A webtoken is provided by authenticating with UiTiD credentials at the JSON Webtoken provider service.

With these credentials you can authenticate on these services:

| Service | Testing |
| ----------- | ------- |
| UiTdatabank host | `https://io-test.uitdatabank.be` |
| JSON Web Token provider | `https://jwtprovider-test.uitdatabank.be` |

**Step 2: validation by publiq vzw**

Create a representative set of events on the TEST environment. A contact at publiq vzw will approve this set: they will validate if the events are appropriate for publication, if specific details are missing...

**Step 3: switch to PRODUCTION**

After validation, you will receive the credentials to authenticate with the PRODUCTION environment.

With these credentials you can authenticate on these services:

| Service | Production |
| ----------- | ------- |
| UiTdatabank host | `https://io.uitdatabank.be` |
| JSON Web Token provider | `https://jwtprovider.uitdatabank.be` |
