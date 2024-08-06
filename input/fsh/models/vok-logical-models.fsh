// 2.2: Informationsmodell logical models




Logical: AvtalLogical
Parent: Base
Id: AvtalLogical
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
* avser 0..* Reference(UppdragLogical) "avser"
* avser ^definition = "avser"
* relationAvtal 0..* Reference(AvtalLogical) ""
* relationAvtal ^definition = "relationAvtal"


Logical: AvtalssambandLogical
Parent: Base
Id: AvtalssambandLogical
Title: "Avtalssamband"
Description: "Avtalssamband logical model"
Characteristics: #can-be-target
* typ 1..1 Coding "typ" // Kod


Logical: KontaktuppgiftLogical
Parent: Base
Id: KontaktuppgiftLogical
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
* har 0..1 Reference(OrganisatoriskEnhetLogical) "har"
* har ^definition = "har"
* finnsTillgangligUnder 0..* Reference(TillganglighetstidLogical) "finns tillgänglig under"
* finnsTillgangligUnder ^definition = "finnsTillgangligUnder"
* arEnDelAv 0..* Reference(TelekommunikationLogical) "är en del av"
* arEnDelAv ^definition = "arEnDelAv"
* harTillganglighetsavvikelse 0..* Reference(StorningsinformationLogical) "har tillgänglighetsavvikelse"
* harTillganglighetsavvikelse ^definition = "harTillganglighetsavvikelse"


Logical: MalgruppLogical
Parent: Base
Id: MalgruppLogical
Title: "Målgrupp"
Description: "Målgrupp logical model"
Characteristics: #can-be-target
* kod 1..1 Coding "kod" // Kod
* beskrivning 1..1 string "beskrivning" // Sträng
* vardemin 0..1 Quantity "värde.min" // Kvantitet
* vardemax 0..1 Quantity "värde.max" // Kvantitet
* vardekod 0..1 Coding "värde.kod" // Kod


Logical: OrganisationLogical
Parent: Base
Id: OrganisationLogical
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
* relationOrganisation 0..* Reference(OrganisationLogical) ""
* relationOrganisation ^definition = "relationOrganisation"
* harKontaktuppgift 0..* Reference(KontaktuppgiftLogical) "harKontaktuppgift"
* harKontaktuppgift ^definition = "harKontaktuppgift"
* harTillstand 0..* Reference(TillstandLogical) "harTillstånd"
* harTillstand ^definition = "harTillstand"


Logical: OrganisationSambandLogical
Parent: Base
Id: OrganisationSambandLogical
Title: "OrganisationSamband"
Description: "OrganisationSamband logical model"
Characteristics: #can-be-target
* sambandstyp 1..1 Coding "sambandstyp" // Kod


Logical: OrganisatoriskEnhetLogical
Parent: Base
Id: OrganisatoriskEnhetLogical
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
* relationOrganisatoriskEnhet 0..* Reference(OrganisatoriskEnhetLogical) ""
* relationOrganisatoriskEnhet ^definition = "relationOrganisatoriskEnhet"
* tillhor 0..1 Reference(OrganisationLogical) "tillhör"
* tillhor ^definition = "tillhor"
* arBelagenPa 0..* Reference(PlatsLogical) "är belägen på"
* arBelagenPa ^definition = "arBelagenPa"
* erbjuder 0..* Reference(TjanstLogical) "erbjuder"
* erbjuder ^definition = "erbjuder"
* harOppetUnder 0..* Reference(TillganglighetstidLogical) "har öppet under"
* harOppetUnder ^definition = "harOppetUnder"
* harTillganglighetsavvikelse 0..* Reference(StorningsinformationLogical) "har tillgänglighetsavvikelse"
* harTillganglighetsavvikelse ^definition = "harTillganglighetsavvikelse"
* har 0..* Reference(TillstandLogical) "har"
* har ^definition = "har"


Logical: OrganisatoriskEnhetSambandLogical
Parent: Base
Id: OrganisatoriskEnhetSambandLogical
Title: "OrganisatoriskEnhetSamband"
Description: "OrganisatoriskEnhetSamband logical model"
Characteristics: #can-be-target
* sambandstyp 1..1 Coding "sambandstyp" // Kod


Logical: PersonLogical
Parent: Base
Id: PersonLogical
Title: "Person"
Description: "Person logical model"
Characteristics: #can-be-target
* id 0..1 string "id" // Identitet
* namn 1..1 string "namn" // Sträng
* skyddadIdentitet 0..1 Coding "skyddadIdentitet" // Kod
* antar 0..* Reference(PersonrollLogical) "antar"
* antar ^definition = "antar"


Logical: PersonrollLogical
Parent: Base
Id: PersonrollLogical
Title: "Personroll"
Description: "Personroll logical model"
Characteristics: #can-be-target
* kod 1..1 Coding "kod" // Kod
* giltigFrom 1..1 time "giltigFrom" // Tidpunkt
* giltigTom 0..1 time "giltigTom" // Tidpunkt
* relationOrganisation 0..1 Reference(OrganisationLogical) ""
* relationOrganisation ^definition = "relationOrganisation"
* relationOrganisatoriskEnhet 0..1 Reference(OrganisatoriskEnhetLogical) ""
* relationOrganisatoriskEnhet ^definition = "relationOrganisatoriskEnhet"
* harDeltagande 0..1 Reference(AvtalLogical) "har deltagande"
* harDeltagande ^definition = "harDeltagande"
* har 0..1 Reference(KontaktuppgiftLogical) "har"
* har ^definition = "har"


Logical: PlatsLogical
Parent: Base
Id: PlatsLogical
Title: "Plats"
Description: "Plats logical model"
Characteristics: #can-be-target
* id 1..1 string "id" // Identitet
* namn 0..1 string "namn" // Sträng
* beskrivning 0..* string "beskrivning" // Sträng
* status 1..1 Coding "status" // Kod
* platstyp 1..1 Coding "platstyp" // Kod
* adressrad 0..* string "adress.rad" // Sträng
* kommunkod 0..1 Coding "kommunkod" // Kod
* lanskod 0..1 Coding "länskod" // Kod
* giltigFrom 1..1 time "giltigFrom" // Tidpunkt
* giltigTom 0..1 time "giltigTom" // Tidpunkt
* delAv 0..1 Reference(PlatsLogical) "del av"
* delAv ^definition = "delAv"
* harPosition 0..1 Reference(PositionLogical) "har position"
* harPosition ^definition = "harPosition"
* avgransasGeografisktAv 3..* Reference(PositionLogical) "avgränsas geografiskt av"
* avgransasGeografisktAv ^definition = "avgransasGeografisktAv"


Logical: PositionLogical
Parent: Base
Id: PositionLogical
Title: "Position"
Description: "Position logical model"
Characteristics: #can-be-target
* longitud 1..1 decimal "longitud" // Decimaltal
* latitud 1..1 decimal "latitud" // Decimaltal
* hojdOverHavet 0..1 decimal "höjdÖverHavet" // Decimaltal


Logical: StorningsinformationLogical
Parent: Base
Id: StorningsinformationLogical
Title: "Störningsinformation"
Description: "Störningsinformation logical model"
Characteristics: #can-be-target
* beskrivning 1..1 string "beskrivning" // Sträng
* giltigFrom 1..1 time "giltigFrom" // Tidpunkt
* giltigTom 0..1 time "giltigTom" // Tidpunkt


Logical: TelekommunikationLogical
Parent: Base
Id: TelekommunikationLogical
Title: "Telekommunikation"
Description: "Telekommunikation logical model"
Characteristics: #can-be-target
* varde 1..1 string "värde" // Sträng
* system 1..1 Coding "system" // Kod
* giltigFrom 1..1 time "giltigFrom" // Tidpunkt
* giltigTom 0..1 time "giltigTom" // Tidpunkt


Logical: TillganglighetstidLogical
Parent: Base
Id: TillganglighetstidLogical
Title: "Tillgänglighetstid"
Description: "Tillgänglighetstid logical model"
Characteristics: #can-be-target
* dygnetRunt 0..1 boolean "dygnetRunt" // Bool
* starttid 0..1 time "starttid" // Tid
* sluttid 0..1 time "sluttid" // Tid
* veckodag 0..* Coding "veckodag" // Kod
* finnsTillganglig 1..* Reference(TjanstLogical) "finns tillgänglig"
* finnsTillganglig ^definition = "finnsTillganglig"


Logical: TillstandLogical
Parent: Base
Id: TillstandLogical
Title: "Tillstånd"
Description: "Tillstånd logical model"
Characteristics: #can-be-target
* id 1..1 string "id" // Identitet
* kod 1..1 Coding "kod" // Kod
* giltigFrom 1..1 time "giltigFrom" // Tidpunkt
* giltigTom 0..1 time "giltigTom" // Tidpunkt


Logical: TjanstLogical
Parent: Base
Id: TjanstLogical
Title: "Tjänst"
Description: "Tjänst logical model"
Characteristics: #can-be-target
* id 1..1 string "id" // Identitet
* typ 1..1 Coding "typ" // Kod
* motesform 1..* Coding "mötesform" // Kod
* beskrivning 0..1 string "beskrivning" // Sträng
* giltigFrom 1..1 time "giltigFrom" // Tidpunkt
* giltigTom 0..1 time "giltigTom" // Tidpunkt
* erbjudsPa 0..* Reference(PlatsLogical) "erbjuds på"
* erbjudsPa ^definition = "erbjudsPa"
* har 0..* Reference(KontaktuppgiftLogical) "har"
* har ^definition = "har"
* erbjudsTill 0..* Reference(MalgruppLogical) "erbjuds till"
* erbjudsTill ^definition = "erbjudsTill"
* harTillganglighetsavvikelse 0..* Reference(StorningsinformationLogical) "har tillgänglighetsavvikelse"
* harTillganglighetsavvikelse ^definition = "harTillganglighetsavvikelse"
* harSarskilda 0..* Reference(VillkorLogical) "har särskilda"
* harSarskilda ^definition = "harSarskilda"


Logical: UppdragLogical
Parent: Base
Id: UppdragLogical
Title: "Uppdrag"
Description: "Uppdrag logical model"
Characteristics: #can-be-target
* typ 0..1 Coding "typ" // Kod
* giltigFrom 1..1 time "giltigFrom" // Tidpunkt
* giltigTom 0..1 time "giltigTom" // Tidpunkt
* omfattar 0..* Reference(TjanstLogical) "omfattar"
* omfattar ^definition = "omfattar"
* harUtforare 1..1 Reference(OrganisationLogical) "har utförare"
* harUtforare ^definition = "harUtforare"
* harBestallare 1..1 Reference(OrganisationLogical) "har beställare"
* harBestallare ^definition = "harBestallare"
* relationTelekommunikation 0..* Reference(TelekommunikationLogical) ""
* relationTelekommunikation ^definition = "relationTelekommunikation"


Logical: VerksamhetLogical
Parent: Base
Id: VerksamhetLogical
Title: "Verksamhet"
Description: "Verksamhet logical model"
Characteristics: #can-be-target
* typ 1..1 Coding "typ" // Kod
* bedriver 1..1 Reference(OrganisatoriskEnhetLogical) "bedriver"
* bedriver ^definition = "bedriver"


Logical: VillkorLogical
Parent: Base
Id: VillkorLogical
Title: "Villkor"
Description: "Villkor logical model"
Characteristics: #can-be-target
* kod 1..1 Coding "kod" // Kod
* beskrivning 1..1 string "beskrivning" // Sträng
* vardemin 0..1 Quantity "värde.min" // Kvantitet
* vardemax 0..1 Quantity "värde.max" // Kvantitet
* vardekod 0..1 Coding "värde.kod" // Kod
