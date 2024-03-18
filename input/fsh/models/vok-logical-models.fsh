// 2.2: Informationsmodell logical model




Logical: VOKAvtalLogical
Parent: Base
Id: avtal-logical
Title: "Avtal"
Characteristics: #can-be-target
* id 1..* string "Id" // Identitet
* typ 0..* Coding "typ" // Kod
* url 1..1 url "url" // URL
* giltigFrom 1..1 time "giltigFrom" // Tidpunkt
* giltigTom 0..1 time "giltigTom" // Tidpunkt
* kategori 1..1 Coding "kategori" // Kod
* optionForlangning 1..1 string "optionFörlängning" // Sträng
* beskrivning 1..1 string "beskrivning" // Sträng
* avser 0..* Reference(VOKUppdragLogical) "avser"
* relationAvtal 0..* Reference(VOKAvtalLogical) ""


Logical: VOKAvtalssambandLogical
Parent: Base
Id: avtalssamband-logical
Title: "Avtalssamband"
Characteristics: #can-be-target
* typ 1..1 Coding "typ" // Kod


Logical: VOKKontaktuppgiftLogical
Parent: Base
Id: kontaktuppgift-logical
Title: "Kontaktuppgift"
Characteristics: #can-be-target
* id 1..1 string "id" // Identitet
* syfte 1..1 Coding "syfte" // Kod
* adress 0..* BackboneElement "adress"
* adress.rad 0..* string "adress.rad" // Sträng
* adress.postnummer 0..1 string "adress.postnummer" // Sträng
* adress.land 0..1 string "adress.land" // Sträng
* giltigFrom 1..1 time "giltigFrom" // Tidpunkt
* giltigTom 0..1 time "giltigTom" // Tidpunkt
* har 0..1 Reference(VOKOrganisatoriskEnhetLogical) "har"
* finnsTillgangligUnder 0..* Reference(VOKTillganglighetstidLogical) "finns tillgänglig under"
* arEnDelAv 0..* Reference(VOKTelekommunikationLogical) "är en del av"
* harTillganglighetsavvikelse 0..* Reference(VOKStorningsinformationLogical) "har tillgänglighetsavvikelse"


Logical: VOKMalgruppLogical
Parent: Base
Id: malgrupp-logical
Title: "Målgrupp"
Characteristics: #can-be-target
* kod 1..1 Coding "kod" // Kod
* beskrivning 1..1 string "beskrivning" // Sträng
* alderMin 0..1 integer "ålderMin" // Heltal
* alderMax 0..1 integer "ålderMax" // Heltal
* kon 1..1 Coding "kön" // Kod


Logical: VOKOrganisationLogical
Parent: Base
Id: organisation-logical
Title: "Organisation"
Characteristics: #can-be-target
* id 1..* string "id" // Identitet
* typ 1..1 Coding "typ" // Kod
* status 1..1 Coding "status" // Kod
* foretagsnamn 1..1 string "företagsnamn" // Sträng
* alias 0..* string "alias" // Sträng
* juridiskForm 1..1 Coding "juridiskForm" // Kod
* agarkategori 1..1 Coding "ägarkategori" // Kod
* giltigFrom 0..1 time "giltigFrom" // Tidpunkt
* giltigTom 0..1 time "giltigTom" // Tidpunkt
* relationOrganisation 0..* Reference(VOKOrganisationLogical) ""


Logical: VOKOrganisationSambandLogical
Parent: Base
Id: organisation-samband-logical
Title: "OrganisationSamband"
Characteristics: #can-be-target
* sambandstyp 1..1 Coding "sambandstyp" // Kod


Logical: VOKOrganisatoriskEnhetLogical
Parent: Base
Id: organisatorisk-enhet-logical
Title: "OrganisatoriskEnhet"
Characteristics: #can-be-target
* id 1..* string "id" // Identitet
* typ 0..* Coding "typ" // Kod
* status 1..1 Coding "status" // Kod
* enhetsnamn 1..* string "enhetsnamn" // Sträng
* alias 0..* string "alias" // Sträng
* giltigFrom 1..1 time "giltigFrom" // Tidpunkt
* giltigTom 0..1 time "giltigTom" // Tidpunkt
* relationOrganisatoriskEnhet 0..* Reference(VOKOrganisatoriskEnhetLogical) ""
* tillhor 1..1 Reference(VOKOrganisationLogical) "tillhör"
* arBelagenPa 0..* Reference(VOKPlatsLogical) "är belägen på"
* erbjuder 1..* Reference(VOKVardOchOmsorgstjanstLogical) "erbjuder"
* harOppetUnder 0..* Reference(VOKTillganglighetstidLogical) "har öppet under"
* harTillganglighetsavvikelse 0..* Reference(VOKStorningsinformationLogical) "har tillgänglighetsavvikelse"


Logical: VOKOrganisatoriskEnhetSambandLogical
Parent: Base
Id: organisatorisk-enhet-samband-logical
Title: "OrganisatoriskEnhetSamband"
Characteristics: #can-be-target
* sambandstyp 1..1 Coding "sambandstyp" // Kod


Logical: VOKPersonLogical
Parent: Base
Id: person-logical
Title: "Person"
Characteristics: #can-be-target
* namn 1..1 string "namn" // Sträng
* antar 0..* Reference(VOKPersonrollLogical) "antar"


Logical: VOKPersonrollLogical
Parent: Base
Id: personroll-logical
Title: "Personroll"
Characteristics: #can-be-target
* kod 1..1 Coding "kod" // Kod
* giltigFrom 1..1 time "giltigFrom" // Tidpunkt
* giltigTom 0..1 time "giltigTom" // Tidpunkt
* relationOrganisation 0..1 Reference(VOKOrganisationLogical) ""
* relationOrganisatoriskEnhet 0..1 Reference(VOKOrganisatoriskEnhetLogical) ""
* relationAvtal 0..1 Reference(VOKAvtalLogical) ""
* relationKontaktuppgift 0..1 Reference(VOKKontaktuppgiftLogical) ""


Logical: VOKPlatsLogical
Parent: Base
Id: plats-logical
Title: "Plats"
Characteristics: #can-be-target
* id 1..1 string "id" // Identitet
* namn 0..1 string "namn" // Sträng
* beskrivning 0..* string "beskrivning" // Sträng
* status 1..1 Coding "status" // Kod
* platstyp 1..1 Coding "platstyp" // Kod
* besoksadress 0..1 Address "besöksadress" // Besöksadress
* kommunkod 1..1 Coding "kommunkod" // Kod
* lanskod 1..1 Coding "länskod" // Kod
* geografiskaKoordinater 3..* BackboneElement "geografiskaKoordinater" // GeografiskKoordinat
* giltigFrom 1..1 time "giltigFrom" // Tidpunkt
* giltigTom 0..1 time "giltigTom" // Tidpunkt
* delAv 0..1 Reference(VOKPlatsLogical) "del av"


Logical: VOKRemissanvisningLogical
Parent: Base
Id: remissanvisning-logical
Title: "Remissanvisning"
Characteristics: #can-be-target
* adress 1..1 url "adress" // URL


Logical: VOKStorningsinformationLogical
Parent: Base
Id: storningsinformation-logical
Title: "Störningsinformation"
Characteristics: #can-be-target
* beskrivning 1..1 string "beskrivning" // Sträng
* giltigFrom 1..1 time "giltigFrom" // Tidpunkt
* giltigTom 0..1 time "giltigTom" // Tidpunkt


Logical: VOKTelekommunikationLogical
Parent: Base
Id: telekommunikation-logical
Title: "Telekommunikation"
Characteristics: #can-be-target
* varde 1..1 string "värde" // Sträng
* system 1..1 Coding "system" // Kod
* rangordning 1..1 positiveInt "rangordning" // PositivtHeltal
* giltigFrom 1..1 time "giltigFrom" // Tidpunkt
* giltigTom 0..1 time "giltigTom" // Tidpunkt


Logical: VOKTillganglighetstidLogical
Parent: Base
Id: tillganglighetstid-logical
Title: "Tillgänglighetstid"
Characteristics: #can-be-target
* dygnetRunt 0..1 boolean "dygnetRunt" // Bool
* starttid 0..1 time "starttid" // Tid
* sluttid 0..1 time "sluttid" // Tid
* veckodag 0..* Coding "veckodag" // Kod
* finnsTillganglig 1..* Reference(VOKVardOchOmsorgstjanstLogical) "finns tillgänglig"


Logical: VOKUppdragLogical
Parent: Base
Id: uppdrag-logical
Title: "Uppdrag"
Characteristics: #can-be-target
* typ 1..1 Coding "typ" // Kod
* beskrivning 1..1 string "beskrivning" // Sträng
* giltigFrom 1..1 time "giltigFrom" // Tidpunkt
* giltigTom 0..1 time "giltigTom" // Tidpunkt
* omfattar 0..* Reference(VOKVardOchOmsorgstjanstLogical) "omfattar"
* harUtforare 1..1 Reference(VOKOrganisationLogical) "har utförare"
* harBestallare 1..1 Reference(VOKOrganisationLogical) "har beställare"


Logical: VOKVerksamhetLogical
Parent: Base
Id: verksamhet-logical
Title: "Verksamhet"
Characteristics: #can-be-target
* typ 1..1 Coding "typ" // Kod
* bedriver 1..1 Reference(VOKOrganisatoriskEnhetLogical) "bedriver"


Logical: VOKVardOchOmsorgstjanstLogical
Parent: Base
Id: vard-och-omsorgstjanst-logical
Title: "Vård- och omsorgstjänst"
Characteristics: #can-be-target
* id 1..1 string "id" // Identitet
* typ 1..1 Coding "typ" // Kod
* remisskrav 1..1 boolean "remisskrav" // Bool
* motesform 1..* Coding "mötesform" // Kod
* beskrivning 0..* string "beskrivning" // Sträng
* giltigFrom 1..1 time "giltigFrom" // Tidpunkt
* giltigTom 0..1 time "giltigTom" // Tidpunkt
* erbjudsPa 0..* Reference(VOKPlatsLogical) "erbjuds på"
* harTillhorande 0..1 Reference(VOKRemissanvisningLogical) "har tillhörande"
* har 0..* Reference(VOKKontaktuppgiftLogical) "har"
* erbjudsTill 0..* Reference(VOKMalgruppLogical) "erbjuds till"
* harTillganglighetsavvikelse 0..* Reference(VOKStorningsinformationLogical) "har tillgänglighetsavvikelse"
