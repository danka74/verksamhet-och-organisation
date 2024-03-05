// 2.2: Informationsmodell logical model




Logical: VOKAdressForTelekommunikationLogical
Parent: Base
Id: adress-for-telekommunikation
Title: "Adress för telekommunikation"
* typAvMedium 1..1 Coding "typ av medium" // Kod
* adress 1..1 uri "adress" // Uri



Logical: VOKAvtalLogical
Parent: Base
Id: avtal
Title: "Avtal"
* id 1..1 string "Id" // Identitet
* typ 1..1 Coding "typ" // Kod
* url 1..1 uri "url" // URL
* giltigFrom 1..1 dateTime "giltigFrom" // Datum
* giltigTom 0..1 dateTime "giltigTom" // Datum
* kategori 1..1 Coding "kategori" // Kod
* optionForlangning 1..1 string "optionFörlängning" // Sträng



Logical: VOKEgenskapLogical
Parent: Base
Id: egenskap
Title: "Egenskap"
* typAvEgenskap 1..1 Coding "typ av egenskap" // Kod
* varde 1..1 string "värde" // Sträng



Logical: VOKFysiskPlatsLogical
Parent: Base
Id: fysisk-plats
Title: "FysiskPlats"
* besoksadress 0..1 Address "besöksadress" // Besöksadress
* geografiskaKoordinater 0..* BackboneElement "geografiskaKoordinater" // GeografiskKoordinat



Logical: VOKGeografisktOmradeLogical
Parent: Base
Id: geografiskt-omrade
Title: "GeografisktOmråde"



Logical: VOKKommunLogical
Parent: Base
Id: kommun
Title: "Kommun"
* kommunkod 1..1 Coding "kommunkod" // Kod
* namn 1..1 string "namn" // Sträng



Logical: VOKKommunikationskanalLogical
Parent: Base
Id: kommunikationskanal
Title: "Kommunikationskanal"



Logical: VOKKontaktuppgiftLogical
Parent: Base
Id: kontaktuppgift
Title: "Kontaktuppgift"
* id 1..1 string "id" // Identitet
* syfte 1..1 Coding "syfte" // Kod
* adressrad 0..* string "adressrad" // Sträng
* adress 0..1 string "adress" // Sträng
* adresstyp 0..1 Coding "adresstyp" // Kod
* postnummer 0..1 string "postnummer" // Sträng
* stad 0..1 string "stad" // Sträng
* land 0..1 string "land" // Sträng
* giltigFrom 1..1 dateTime "giltigFrom" // Datum
* giltigTom 0..1 dateTime "giltigTom" // Datum



Logical: VOKLanLogical
Parent: Base
Id: lan
Title: "Län"
* lanskod 1..1 Coding "länskod" // Kod
* namn 1..1 string "namn" // Sträng



Logical: VOKMalgruppLogical
Parent: Base
Id: malgrupp
Title: "Målgrupp"
* kod 1..1 Coding "kod" // Kod
* beskrivning 1..1 string "beskrivning" // Sträng
* alderMin 0..1 integer "ålderMin" // Heltal
* alderMax 0..1 integer "ålderMax" // Heltal
* kon 1..1 Coding "kön" // Kod



Logical: VOKOrganisationLogical
Parent: Base
Id: organisation
Title: "Organisation"
* id 1..* string "id" // Identitet
* typ 1..1 Coding "typ" // Kod
* status 1..1 Coding "status" // Kod
* registreratnamn 1..1 string "registreratnamn" // Sträng
* popularnamn 0..* string "populärnamn" // Sträng
* juridiskForm 1..1 Coding "juridiskForm" // Kod
* agarkategori 1..1 Coding "ägarkategori" // Kod
* giltigFrom 0..1 dateTime "giltigFrom" // Datum
* giltigTom 0..1 dateTime "giltigTom" // Datum



Logical: VOKOrganisationSambandLogical
Parent: Base
Id: organisation-samband
Title: "OrganisationSamband"
* sambandstyp 1..1 Coding "sambandstyp" // Kod




Logical: VOKOrganisatoriskEnhetLogical
Parent: Base
Id: organisatorisk-enhet
Title: "OrganisatoriskEnhet"
* id 1..1 string "id" // Identitet
* typ 0..* Coding "typ" // Kod
* status 1..1 Coding "status" // Kod
* enhetsnamn 1..* string "enhetsnamn" // Sträng
* popularnamn 0..* string "populärnamn" // Sträng
* beskrivning 0..* string "beskrivning" // Sträng
* giltigFrom 1..1 dateTime "giltigFrom" // Datum
* giltigTom 0..1 dateTime "giltigTom" // Datum



Logical: VOKOrganisatoriskEnhetSambandLogical
Parent: Base
Id: organisatorisk-enhet-samband
Title: "OrganisatoriskEnhetSamband"
* sambandstyp 1..1 Coding "sambandstyp" // Kod



Logical: VOKPersonLogical
Parent: Base
Id: person
Title: "Person"
* namn 1..1 string "namn" // Sträng



Logical: VOKPlatsLogical
Parent: Base
Id: plats
Title: "Plats"
* id 1..1 string "id" // Identitet
* namn 0..1 string "namn" // Sträng
* beskrivning 0..* string "beskrivning" // Sträng
* status 1..1 Coding "status" // Kod
* platstyp 1..1 Coding "platstyp" // Kod
* besoksadress 0..1 Address "besöksadress" // Besöksadress
* kommunkod 1..1 Coding "kommunkod" // Kod
* lanskod 1..1 Coding "länskod" // Kod
* geografiskaKoordinater 0..* BackboneElement "geografiskaKoordinater" // GeografiskKoordinat
* giltigFrom 1..1 dateTime "giltigFrom" // Datum
* giltigTom 0..1 dateTime "giltigTom" // Datum



Logical: VOKPostadressLogical
Parent: Base
Id: postadress
Title: "Postadress"
* adress 1..1 string "adress" // Sträng



Logical: VOKRemissanvisningLogical
Parent: Base
Id: remissanvisning
Title: "Remissanvisning"
* adress 1..1 uri "adress" // URL



Logical: VOKRollLogical
Parent: Base
Id: roll
Title: "Roll"
* typ 1..1 Coding "typ" // Kod



Logical: VOKSamverkanLogical
Parent: Base
Id: samverkan
Title: "Samverkan"
* typ 1..1 Coding "typ" // Kod
* giltigFrom 0..1 dateTime "giltigFrom" // Datum
* giltigTom 0..1 dateTime "giltigTom" // Datum
* beskrivning 0..* string "beskrivning" // Sträng



Logical: VOKStorningsinformationLogical
Parent: Base
Id: storningsinformation
Title: "Störningsinformation"
* beskrivning 1..1 string "beskrivning" // Sträng
* giltigFrom 1..1 dateTime "giltigFrom" // Datum
* giltigTom 0..1 dateTime "giltigTom" // Datum



Logical: VOKTelekommunikationLogical
Parent: Base
Id: telekommunikation
Title: "Telekommunikation"
* varde 1..1 string "värde" // Sträng
* system 1..1 Coding "system" // Kod
* rang 1..1 positiveInt "rang" // PositivtHeltal
* giltigFrom 1..1 dateTime "giltigFrom" // Datum
* giltigTom 0..1 dateTime "giltigTom" // Datum



Logical: VOKTillganglighetstidLogical
Parent: Base
Id: tillganglighetstid
Title: "Tillgänglighetstid"
* dygnetRunt 0..1 boolean "dygnetRunt" // Bool
* starttid 0..1 time "starttid" // Tidpunkt
* sluttid 0..1 time "sluttid" // Tidpunkt
* veckodag 0..* Coding "veckodag" // Kod



Logical: VOKUppdragLogical
Parent: Base
Id: uppdrag
Title: "Uppdrag"
* typ 1..1 Coding "typ" // Kod
* beskrivning 1..1 string "beskrivning" // Sträng
* giltigFrom 1..1 dateTime "giltigFrom" // Datum
* giltigTom 0..1 dateTime "giltigTom" // Datum



Logical: VOKVerksamhetLogical
Parent: Base
Id: verksamhet
Title: "Verksamhet"
* typ 1..1 Coding "typ" // Kod



Logical: VOKVirtuellPlatsLogical
Parent: Base
Id: virtuell-plats
Title: "VirtuellPlats"
* webbadress 1..1 url "webbadress" // Url



Logical: VOKVardOchOmsorgstjanstLogical
Parent: Base
Id: vard-och-omsorgstjanst
Title: "Vård- och omsorgstjänst"
* id 1..1 string "id" // Identitet
* typ 1..1 Coding "typ" // Kod
* remisskrav 1..1 boolean "remisskrav" // Bool
* motesform 1..* Coding "mötesform" // Kod
* beskrivning 0..* string "beskrivning" // Sträng
* giltigFrom 1..1 dateTime "giltigFrom" // Datum
* giltigTom 0..1 dateTime "giltigTom" // Datum



Logical: VOKOvrigtOmradeLogical
Parent: Base
Id: ovrigt-omrade
Title: "ÖvrigtOmråde"
* benamning 1..1 string "benämning" // Sträng
* kartpolygon 3..* BackboneElement "kartpolygon" // GeografiskKoordinat

