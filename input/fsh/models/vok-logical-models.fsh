// 2.2: Informationsmodell logical models




Logical: VOKAvtalLogical
Parent: Base
Id: VOKAvtalLogical
Title: "Avtal"
Description: "Avtal logical model"
Characteristics: #can-be-target
* id 1..* string "id" // Identitet
* typ 0..* Coding "typ" // Kod
* url 0..1 url "url" // URL
* giltigFrom 1..1 time "giltigFrom" // Tidpunkt
* giltigTom 0..1 time "giltigTom" // Tidpunkt
* kategori 1..1 Coding "kategori" // Kod
* optionForlangning 1..1 string "optionFörlängning" // Sträng
* beskrivning 1..1 string "beskrivning" // Sträng
* avser 0..* Reference(VOKUppdragLogical) "avser"
* avser ^definition = "avser"
* relationAvtal 0..* Reference(VOKAvtalLogical) ""
* relationAvtal ^definition = "relationAvtal"


Logical: VOKAvtalssambandLogical
Parent: Base
Id: VOKAvtalssambandLogical
Title: "Avtalssamband"
Description: "Avtalssamband logical model"
Characteristics: #can-be-target
* typ 1..1 Coding "typ" // Kod


Logical: VOKKontaktuppgiftLogical
Parent: Base
Id: VOKKontaktuppgiftLogical
Title: "Kontaktuppgift"
Description: "Kontaktuppgift logical model"
Characteristics: #can-be-target
* id 1..1 string "id" // Identitet
* syfte 1..1 Coding "syfte" // Kod
* adressrad 0..* string "adress.rad" // Sträng
* adresspostnummer 0..1 string "adress.postnummer" // Sträng
* adressland 0..1 string "adress.land" // Sträng
* giltigFrom 1..1 time "giltigFrom" // Tidpunkt
* giltigTom 0..1 time "giltigTom" // Tidpunkt
* har 0..1 Reference(VOKOrganisatoriskEnhetLogical) "har"
* har ^definition = "har"
* finnsTillgangligUnder 0..* Reference(VOKTillganglighetstidLogical) "finns tillgänglig under"
* finnsTillgangligUnder ^definition = "finnsTillgangligUnder"
* arEnDelAv 0..* Reference(VOKTelekommunikationLogical) "är en del av"
* arEnDelAv ^definition = "arEnDelAv"
* harTillganglighetsavvikelse 0..* Reference(VOKStorningsinformationLogical) "har tillgänglighetsavvikelse"
* harTillganglighetsavvikelse ^definition = "harTillganglighetsavvikelse"


Logical: VOKMalgruppLogical
Parent: Base
Id: VOKMalgruppLogical
Title: "Målgrupp"
Description: "Målgrupp logical model"
Characteristics: #can-be-target
* kod 1..1 Coding "kod" // Kod
* beskrivning 1..1 string "beskrivning" // Sträng
* alderMin 0..1 integer "ålderMin" // Heltal
* alderMax 0..1 integer "ålderMax" // Heltal
* kon 1..1 Coding "kön" // Kod


Logical: VOKOrganisationLogical
Parent: Base
Id: VOKOrganisationLogical
Title: "Organisation"
Description: "Organisation logical model"
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
* relationOrganisation ^definition = "relationOrganisation"


Logical: VOKOrganisationSambandLogical
Parent: Base
Id: VOKOrganisationSambandLogical
Title: "OrganisationSamband"
Description: "OrganisationSamband logical model"
Characteristics: #can-be-target
* sambandstyp 1..1 Coding "sambandstyp" // Kod


Logical: VOKOrganisatoriskEnhetLogical
Parent: Base
Id: VOKOrganisatoriskEnhetLogical
Title: "OrganisatoriskEnhet"
Description: "OrganisatoriskEnhet logical model"
Characteristics: #can-be-target
* id 1..* string "id" // Identitet
* typ 0..* Coding "typ" // Kod
* status 1..1 Coding "status" // Kod
* enhetsnamn 1..* string "enhetsnamn" // Sträng
* alias 0..* string "alias" // Sträng
* giltigFrom 1..1 time "giltigFrom" // Tidpunkt
* giltigTom 0..1 time "giltigTom" // Tidpunkt
* relationOrganisatoriskEnhet 0..* Reference(VOKOrganisatoriskEnhetLogical) ""
* relationOrganisatoriskEnhet ^definition = "relationOrganisatoriskEnhet"
* tillhor 1..1 Reference(VOKOrganisationLogical) "tillhör"
* tillhor ^definition = "tillhor"
* arBelagenPa 0..* Reference(VOKPlatsLogical) "är belägen på"
* arBelagenPa ^definition = "arBelagenPa"
* erbjuder 1..* Reference(VOKVardOchOmsorgstjanstLogical) "erbjuder"
* erbjuder ^definition = "erbjuder"
* harOppetUnder 0..* Reference(VOKTillganglighetstidLogical) "har öppet under"
* harOppetUnder ^definition = "harOppetUnder"
* harTillganglighetsavvikelse 0..* Reference(VOKStorningsinformationLogical) "har tillgänglighetsavvikelse"
* harTillganglighetsavvikelse ^definition = "harTillganglighetsavvikelse"


Logical: VOKOrganisatoriskEnhetSambandLogical
Parent: Base
Id: VOKOrganisatoriskEnhetSambandLogical
Title: "OrganisatoriskEnhetSamband"
Description: "OrganisatoriskEnhetSamband logical model"
Characteristics: #can-be-target
* sambandstyp 1..1 Coding "sambandstyp" // Kod


Logical: VOKPersonLogical
Parent: Base
Id: VOKPersonLogical
Title: "Person"
Description: "Person logical model"
Characteristics: #can-be-target
* namn 1..1 string "namn" // Sträng
* antar 0..* Reference(VOKPersonrollLogical) "antar"
* antar ^definition = "antar"


Logical: VOKPersonrollLogical
Parent: Base
Id: VOKPersonrollLogical
Title: "Personroll"
Description: "Personroll logical model"
Characteristics: #can-be-target
* kod 1..1 Coding "kod" // Kod
* giltigFrom 1..1 time "giltigFrom" // Tidpunkt
* giltigTom 0..1 time "giltigTom" // Tidpunkt
* relationOrganisation 0..1 Reference(VOKOrganisationLogical) ""
* relationOrganisation ^definition = "relationOrganisation"
* relationOrganisatoriskEnhet 0..1 Reference(VOKOrganisatoriskEnhetLogical) ""
* relationOrganisatoriskEnhet ^definition = "relationOrganisatoriskEnhet"
* relationAvtal 0..1 Reference(VOKAvtalLogical) ""
* relationAvtal ^definition = "relationAvtal"
* relationKontaktuppgift 0..1 Reference(VOKKontaktuppgiftLogical) ""
* relationKontaktuppgift ^definition = "relationKontaktuppgift"


Logical: VOKPlatsLogical
Parent: Base
Id: VOKPlatsLogical
Title: "Plats"
Description: "Plats logical model"
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
* delAv ^definition = "delAv"


Logical: VOKStorningsinformationLogical
Parent: Base
Id: VOKStorningsinformationLogical
Title: "Störningsinformation"
Description: "Störningsinformation logical model"
Characteristics: #can-be-target
* beskrivning 1..1 string "beskrivning" // Sträng
* giltigFrom 1..1 time "giltigFrom" // Tidpunkt
* giltigTom 0..1 time "giltigTom" // Tidpunkt


Logical: VOKTelekommunikationLogical
Parent: Base
Id: VOKTelekommunikationLogical
Title: "Telekommunikation"
Description: "Telekommunikation logical model"
Characteristics: #can-be-target
* varde 1..1 string "värde" // Sträng
* system 1..1 Coding "system" // Kod
* rangordning 1..1 positiveInt "rangordning" // PositivtHeltal
* giltigFrom 1..1 time "giltigFrom" // Tidpunkt
* giltigTom 0..1 time "giltigTom" // Tidpunkt


Logical: VOKTillganglighetstidLogical
Parent: Base
Id: VOKTillganglighetstidLogical
Title: "Tillgänglighetstid"
Description: "Tillgänglighetstid logical model"
Characteristics: #can-be-target
* dygnetRunt 0..1 boolean "dygnetRunt" // Bool
* starttid 0..1 time "starttid" // Tid
* sluttid 0..1 time "sluttid" // Tid
* veckodag 0..* Coding "veckodag" // Kod
* finnsTillganglig 1..* Reference(VOKVardOchOmsorgstjanstLogical) "finns tillgänglig"
* finnsTillganglig ^definition = "finnsTillganglig"


Logical: VOKUppdragLogical
Parent: Base
Id: VOKUppdragLogical
Title: "Uppdrag"
Description: "Uppdrag logical model"
Characteristics: #can-be-target
* typ 1..1 Coding "typ" // Kod
* beskrivning 1..1 string "beskrivning" // Sträng
* giltigFrom 1..1 time "giltigFrom" // Tidpunkt
* giltigTom 0..1 time "giltigTom" // Tidpunkt
* omfattar 0..* Reference(VOKVardOchOmsorgstjanstLogical) "omfattar"
* omfattar ^definition = "omfattar"
* harUtforare 1..1 Reference(VOKOrganisationLogical) "har utförare"
* harUtforare ^definition = "harUtforare"
* harBestallare 1..1 Reference(VOKOrganisationLogical) "har beställare"
* harBestallare ^definition = "harBestallare"


Logical: VOKVerksamhetLogical
Parent: Base
Id: VOKVerksamhetLogical
Title: "Verksamhet"
Description: "Verksamhet logical model"
Characteristics: #can-be-target
* typ 1..1 Coding "typ" // Kod
* bedriver 1..1 Reference(VOKOrganisatoriskEnhetLogical) "bedriver"
* bedriver ^definition = "bedriver"


Logical: VOKVardOchOmsorgstjanstLogical
Parent: Base
Id: VOKVardOchOmsorgstjanstLogical
Title: "Vård- och omsorgstjänst"
Description: "Vård- och omsorgstjänst logical model"
Characteristics: #can-be-target
* id 1..1 string "id" // Identitet
* typ 1..1 Coding "typ" // Kod
* remisskrav 1..1 boolean "remisskrav" // Bool
* motesform 1..* Coding "mötesform" // Kod
* beskrivning 0..* string "beskrivning" // Sträng
* giltigFrom 1..1 time "giltigFrom" // Tidpunkt
* giltigTom 0..1 time "giltigTom" // Tidpunkt
* erbjudsPa 0..* Reference(VOKPlatsLogical) "erbjuds på"
* erbjudsPa ^definition = "erbjudsPa"
* har 0..* Reference(VOKKontaktuppgiftLogical) "har"
* har ^definition = "har"
* erbjudsTill 0..* Reference(VOKMalgruppLogical) "erbjuds till"
* erbjudsTill ^definition = "erbjudsTill"
* harTillganglighetsavvikelse 0..* Reference(VOKStorningsinformationLogical) "har tillgänglighetsavvikelse"
* harTillganglighetsavvikelse ^definition = "harTillganglighetsavvikelse"
