

CodeSystem: SCBOwnershipCodeSystem
Id: scb-ownership-code-system
Title: "ÄGAR 2020"
// HSA använder OID 1.2.752.129.2.2.1.14
* #10 "Statligt kontrollerade enheter" // 10 eller 1? finns i HSA
* #20 "Kommunalt kontrollerade enheter" // 20 eller 2? finns i HSA men som substantiv
* #30 "Regionkontrollerade enheter" // 30 eller 3? Landsting vs. region
* #4 "Privat svenskkontrollerade enheter"
* #4 #41 "Privat svenskkontrollerade enheter utan koncerntillhörighet"
* #4 #42 "Privat svenskkontrollerade enheter med koncerntillhörighet"
* #50 "Utlandskontrollerade enheter"


ValueSet: SCBOwnershipValueSet
* include codes from system SCBOwnershipCodeSystem