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
* optionForlangning 0..1 string "optionFörlängning" // Sträng
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
* adresspostort 0..1 string "adress.postort" // Sträng
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


Logical: VOKKvalifikationLogical
Parent: Base
Id: VOKKvalifikationLogical
Title: "Kvalifikation"
Description: "Kvalifikation logical model"
Characteristics: #can-be-target


Logical: VOKMalgruppLogical
Parent: Base
Id: VOKMalgruppLogical
Title: "Målgrupp"
Description: "Målgrupp logical model"
Characteristics: #can-be-target
* kod 1..1 Coding "kod" // Kod
* beskrivning 1..1 string "beskrivning" // Sträng
* vardeMin 0..1 integer "värde.Min" // Heltal
* vardeMax 0..1 integer "värde.Max" // Heltal
* vardeKod 0..1 Coding "värde.Kod" // Kod


Logical: VOKOrganisationLogical
Parent: Base
Id: VOKOrganisationLogical
Title: "Organisation"
Description: "Organisation logical model"
Characteristics: #can-be-target
* id 1..* string "id" // Identitet
* typ 1..* Coding "typ" // Kod
* status 1..1 boolean "status" // Bool
* namn 1..1 string "namn" // Sträng
* alias 0..* string "alias" // Sträng
* juridiskForm 1..1 Coding "juridiskForm" // Kod
* agarkategori 0..1 Coding "ägarkategori" // Kod
* giltigFrom 1..1 time "giltigFrom" // Tidpunkt
* giltigTom 0..1 time "giltigTom" // Tidpunkt
* relationOrganisation 0..* Reference(VOKOrganisationLogical) ""
* relationOrganisation ^definition = "relationOrganisation"
* relationKontaktuppgift 0..* Reference(VOKKontaktuppgiftLogical) ""
* relationKontaktuppgift ^definition = "relationKontaktuppgift"


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
* status 1..1 boolean "status" // Bool
* enhetsnamn 1..* string "enhetsnamn" // Sträng
* alias 0..* string "alias" // Sträng
* giltigFrom 1..1 time "giltigFrom" // Tidpunkt
* giltigTom 0..1 time "giltigTom" // Tidpunkt
* relationOrganisatoriskEnhet 0..* Reference(VOKOrganisatoriskEnhetLogical) ""
* relationOrganisatoriskEnhet ^definition = "relationOrganisatoriskEnhet"
* tillhor 0..1 Reference(VOKOrganisationLogical) "tillhör"
* tillhor ^definition = "tillhor"
* arBelagenPa 0..* Reference(VOKPlatsLogical) "är belägen på"
* arBelagenPa ^definition = "arBelagenPa"
* erbjuder 0..* Reference(VOKTjanstLogical) "erbjuder"
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
* id 0..1 string "id" // Identitet
* namn 1..1 string "namn" // Sträng
* skyddadIdentitet 0..1 Coding "skyddadIdentitet" // Kod
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
* harDeltagande 0..1 Reference(VOKAvtalLogical) "har deltagande"
* harDeltagande ^definition = "harDeltagande"
* har 0..1 Reference(VOKKontaktuppgiftLogical) "har"
* har ^definition = "har"


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
* adressrad 0..1 string "adress.rad" // Sträng
* adressland 0..1 string "adress.land" // Sträng
* kommunkod 0..1 Coding "kommunkod" // Kod
* lanskod 0..1 Coding "länskod" // Kod
* geografiskaKoordinater 0..1 BackboneElement "geografiskaKoordinater" // GeografiskKoordinat
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
* finnsTillganglig 1..* Reference(VOKTjanstLogical) "finns tillgänglig"
* finnsTillganglig ^definition = "finnsTillganglig"


Logical: VOKTjanstLogical
Parent: Base
Id: VOKTjanstLogical
Title: "Tjänst"
Description: "Tjänst logical model"
Characteristics: #can-be-target
* id 1..1 string "id" // Identitet
* typ 1..1 Coding "typ" // Kod
* motesform 1..* Coding "mötesform" // Kod
* beskrivning 0..1 string "beskrivning" // Sträng
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
* harSarskilda 0..* Reference(VOKVillkorLogical) "har särskilda"
* harSarskilda ^definition = "harSarskilda"


Logical: VOKUppdragLogical
Parent: Base
Id: VOKUppdragLogical
Title: "Uppdrag"
Description: "Uppdrag logical model"
Characteristics: #can-be-target
* typ 0..1 Coding "typ" // Kod
* giltigFrom 1..1 time "giltigFrom" // Tidpunkt
* giltigTom 0..1 time "giltigTom" // Tidpunkt
* omfattar 0..* Reference(VOKTjanstLogical) "omfattar"
* omfattar ^definition = "omfattar"
* harUtforare 1..1 Reference(VOKOrganisationLogical) "har utförare"
* harUtforare ^definition = "harUtforare"
* harBestallare 1..1 Reference(VOKOrganisationLogical) "har beställare"
* harBestallare ^definition = "harBestallare"
* relationTelekommunikation 0..* Reference(VOKTelekommunikationLogical) ""
* relationTelekommunikation ^definition = "relationTelekommunikation"


Logical: VOKVerksamhetLogical
Parent: Base
Id: VOKVerksamhetLogical
Title: "Verksamhet"
Description: "Verksamhet logical model"
Characteristics: #can-be-target
* typ 1..1 Coding "typ" // Kod
* bedriver 1..1 Reference(VOKOrganisatoriskEnhetLogical) "bedriver"
* bedriver ^definition = "bedriver"


Logical: VOKVillkorLogical
Parent: Base
Id: VOKVillkorLogical
Title: "Villkor"
Description: "Villkor logical model"
Characteristics: #can-be-target
* kod 1..1 Coding "kod" // Kod
* beskrivning 1..1 string "beskrivning" // Sträng
* vardeMin 0..1 integer "värde.Min" // Heltal
* vardeMax 0..1 integer "värde.Max" // Heltal
* vardeKod 0..1 Coding "värde.Kod" // Kod
