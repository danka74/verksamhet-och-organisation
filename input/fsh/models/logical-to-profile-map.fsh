// 2.2: Informationsmodell maps




Mapping: AvtalLogicalToProfile
Source: AvtalLogical
Target: "Contract"
* id -> "Contract.identifier"
* typ -> "Contract.subType"
* url -> "Contract.url"
* giltigFrom -> "Contract.applies.start"
* giltigTom -> "Contract.applies.end"
* optionForlangning -> "Contract.term.offer.text"
* beskrivning -> ""
* avser -> "Contract.topicReference(SENDIUppdragLogical)"
* relationAvtal -> ""


Mapping: AvtalssambandLogicalToProfile
Source: AvtalssambandLogical
Target: ""
* typ -> ""


Mapping: KontaktuppgiftLogicalToProfile
Source: KontaktuppgiftLogical
Target: ""
* id -> ""
* syfte -> "ExtendedContactDetail.purpose"
* adressrad -> "ExtendedContactDetail.address.line"
* adresspostnummer -> "ExtendedContactDetail.address.postalCode"
* adresspostort -> ""
* adressland -> "ExtendedContactDetail.address.country"
* giltigFrom -> "ExtendedContactDetail.period.start"
* giltigTom -> "ExtendedContactDetail.period.end"
* har -> "Organization.contact"
* finnsTillgangligUnder -> ""
* arEnDelAv -> ""
* harTillganglighetsavvikelse -> ""


Mapping: MalgruppLogicalToProfile
Source: MalgruppLogical
Target: "HealthcareService"
* kod -> "HealthcareService.eligibility.code"
* beskrivning -> "HealthcareService.eligibility.comment"
* vardemin -> "HealthcareService.eligibility.where(code = #424144002).extension[eligibilityValue].valueRange.low"
* vardemax -> "HealthcareService.eligibility.where(code = #424144002).extension[eligibilityValue].valueRange.high"
* vardekod -> "HealthcareService.eligibility.where(code = #184100006).extension[eligibilityValue].valueCoding"


Mapping: OrganisationLogicalToProfile
Source: OrganisationLogical
Target: "Organization"
* id -> "Organization.identifier"
* typ -> ""
* status -> "Organization.extension[organizationActive].valueBoolean"
* namn -> "Organization.name"
* alias -> "Organization.alias"
* juridiskForm -> "Organization.extension[legalForm]"
* agarkategori -> "Organization.extension[ownershipType].valueCoding"
* giltigFrom -> "Organization.extension[period].valuePeriod.start"
* giltigTom -> "Organization.extension[period].valuePeriod.end"
* relationOrganisation -> ""
* harKontaktuppgift -> ""
* harTillstand -> ""


Mapping: OrganisationSambandLogicalToProfile
Source: OrganisationSambandLogical
Target: ""
* sambandstyp -> ""


Mapping: OrganisatoriskEnhetLogicalToProfile
Source: OrganisatoriskEnhetLogical
Target: "Organization"
* id -> "Organization.identifier"
* typ -> "Organization.type"
* status -> "Organization.extension[organizationActive].valueBoolean"
* enhetsnamn -> "Organization.name"
* alias -> "Organization.alias"
* giltigFrom -> "Organization.extension[period].valuePeriod.start"
* giltigTom -> "Organization.extension[period].valuePeriod.end"
* relationOrganisatoriskEnhet -> ""
* tillhor -> ""
* arBelagenPa -> ""
* erbjuder -> ""
* harOppetUnder -> ""
* harTillganglighetsavvikelse -> ""
* har -> ""


Mapping: OrganisatoriskEnhetSambandLogicalToProfile
Source: OrganisatoriskEnhetSambandLogical
Target: ""
* sambandstyp -> ""


Mapping: PersonLogicalToProfile
Source: PersonLogical
Target: "Person"
* id -> ""
* namn -> "Person.name.text"
* skyddadIdentitet -> ""
* antar -> ""


Mapping: PersonrollLogicalToProfile
Source: PersonrollLogical
Target: "PractitionerRole"
* kod -> "PractitionerRole.code"
* giltigFrom -> "PractitionerRole.period.start"
* giltigTom -> "PractitionerRole.period.end"
* relationOrganisation -> ""
* relationOrganisatoriskEnhet -> ""
* harDeltagande -> ""
* har -> ""


Mapping: PlatsLogicalToProfile
Source: PlatsLogical
Target: "Location"
* id -> "Location.identifier"
* namn -> "Location.name"
* beskrivning -> "Location.description"
* status -> "Location.status"
* platstyp -> ""
* adressrad -> ""
* kommunkod -> ""
* lanskod -> ""
* giltigFrom -> ""
* giltigTom -> ""
* delAv -> ""
* harPosition -> ""
* avgransasGeografisktAv -> ""


Mapping: PositionLogicalToProfile
Source: PositionLogical
Target: ""
* longitud -> ""
* latitud -> ""
* hojdOverHavet -> ""


Mapping: StorningsinformationLogicalToProfile
Source: StorningsinformationLogical
Target: "Availability"
* beskrivning -> "Availability.notAvailableTime.description"
* giltigFrom -> "Availability.notAvailableTime.during.start"
* giltigTom -> "Availability.notAvailableTime.during.end"


Mapping: TelekommunikationLogicalToProfile
Source: TelekommunikationLogical
Target: "ContactPoint"
* varde -> "ContactPoint.value"
* system -> "ContactPoint.system"
* giltigFrom -> "ContactPoint.period.start"
* giltigTom -> "ContactPoint.period.end"


Mapping: TillganglighetstidLogicalToProfile
Source: TillganglighetstidLogical
Target: "Availability"
* dygnetRunt -> "Availability.allDay"
* starttid -> "Availability.availableStartTime"
* sluttid -> "Availability.availableEndTime"
* veckodag -> "Availability.daysOfWeek"
* finnsTillganglig -> ""


Mapping: TillstandLogicalToProfile
Source: TillstandLogical
Target: ""
* id -> ""
* kod -> ""
* giltigFrom -> ""
* giltigTom -> ""


Mapping: TjanstLogicalToProfile
Source: TjanstLogical
Target: "HealthcareService"
* id -> "HealthcareService.identifier"
* typ -> "HealthcareService.type"
* motesform -> "HealthcareService.characteristic"
* beskrivning -> ""
* giltigFrom -> "HealthcareService.extension[period].valuePeriod.start"
* giltigTom -> "HealthcareService.extension[period].valuePeriod.end"
* erbjudsPa -> ""
* har -> ""
* erbjudsTill -> ""
* harTillganglighetsavvikelse -> ""
* harSarskilda -> ""


Mapping: UppdragLogicalToProfile
Source: UppdragLogical
Target: "OrganizationAffiliation"
* typ -> "OrganizationAffiliation.code"
* giltigFrom -> "OrganizationAffiliation.period.start"
* giltigTom -> "OrganizationAffiliation.period.end"
* omfattar -> "OrganizationAffiliation.healthcareService"
* harUtforare -> "OrganizationAffiliation.participatingOrganization"
* harBestallare -> "OrganizationAffiliation.organization"
* relationTelekommunikation -> ""


Mapping: VerksamhetLogicalToProfile
Source: VerksamhetLogical
Target: ""
* typ -> ""
* bedriver -> ""


Mapping: VillkorLogicalToProfile
Source: VillkorLogical
Target: "HealthcareService"
* kod -> "HealthcareService.eligibility.code"
* beskrivning -> "HealthcareService.eligibility.comment"
* vardemin -> ""
* vardemax -> ""
* vardekod -> ""


/*
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
* avser 0..* Reference(SENDIUppdragLogical) "avser"
* avser ^definition = "avser"
* relationAvtal 0..* Reference(SENDIAvtalLogical) ""
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
* har 0..1 Reference(SENDIOrganisatoriskEnhetLogical) "har"
* har ^definition = "har"
* finnsTillgangligUnder 0..* Reference(SENDITillganglighetstidLogical) "finns tillgänglig under"
* finnsTillgangligUnder ^definition = "finnsTillgangligUnder"
* arEnDelAv 0..* Reference(SENDITelekommunikationLogical) "är en del av"
* arEnDelAv ^definition = "arEnDelAv"
* harTillganglighetsavvikelse 0..* Reference(SENDIStorningsinformationLogical) "har tillgänglighetsavvikelse"
* harTillganglighetsavvikelse ^definition = "harTillganglighetsavvikelse"


Logical: MalgruppLogical
Parent: Base
Id: MalgruppLogical
Title: "Målgrupp"
Description: "Målgrupp logical model"
Characteristics: #can-be-target
* kod 1..1 Coding "kod" // Kod
* beskrivning 1..1 string "beskrivning" // Sträng
* vardemin 0..1 kvantitet "värde.min" // Kvantitet
* vardemax 0..1 kvantitet "värde.max" // Kvantitet
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
* relationOrganisation 0..* Reference(SENDIOrganisationLogical) ""
* relationOrganisation ^definition = "relationOrganisation"
* har 0..* Reference(SENDIKontaktuppgiftLogical) "har"
* har ^definition = "har"
* har 0..* Reference(SENDITillstandLogical) "har"
* har ^definition = "har"


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
* relationOrganisatoriskEnhet 0..* Reference(SENDIOrganisatoriskEnhetLogical) ""
* relationOrganisatoriskEnhet ^definition = "relationOrganisatoriskEnhet"
* tillhor 0..1 Reference(SENDIOrganisationLogical) "tillhör"
* tillhor ^definition = "tillhor"
* arBelagenPa 0..* Reference(SENDIPlatsLogical) "är belägen på"
* arBelagenPa ^definition = "arBelagenPa"
* erbjuder 0..* Reference(SENDITjanstLogical) "erbjuder"
* erbjuder ^definition = "erbjuder"
* harOppetUnder 0..* Reference(SENDITillganglighetstidLogical) "har öppet under"
* harOppetUnder ^definition = "harOppetUnder"
* harTillganglighetsavvikelse 0..* Reference(SENDIStorningsinformationLogical) "har tillgänglighetsavvikelse"
* harTillganglighetsavvikelse ^definition = "harTillganglighetsavvikelse"
* har 0..* Reference(SENDITillstandLogical) "har"
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
* antar 0..* Reference(SENDIPersonrollLogical) "antar"
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
* relationOrganisation 0..1 Reference(SENDIOrganisationLogical) ""
* relationOrganisation ^definition = "relationOrganisation"
* relationOrganisatoriskEnhet 0..1 Reference(SENDIOrganisatoriskEnhetLogical) ""
* relationOrganisatoriskEnhet ^definition = "relationOrganisatoriskEnhet"
* harDeltagande 0..1 Reference(SENDIAvtalLogical) "har deltagande"
* harDeltagande ^definition = "harDeltagande"
* har 0..1 Reference(SENDIKontaktuppgiftLogical) "har"
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
* delAv 0..1 Reference(SENDIPlatsLogical) "del av"
* delAv ^definition = "delAv"
* harPosition 0..1 Reference(SENDIPositionLogical) "har position"
* harPosition ^definition = "harPosition"
* avgransasGeografisktAv 3..* Reference(SENDIPositionLogical) "avgränsas geografiskt av"
* avgransasGeografisktAv ^definition = "avgransasGeografisktAv"


Logical: PositionLogical
Parent: Base
Id: PositionLogical
Title: "Position"
Description: "Position logical model"
Characteristics: #can-be-target
* longitud 1..1 decimaltal "longitud" // Decimaltal
* latitud 1..1 decimaltal "latitud" // Decimaltal
* hojdOverHavet 0..1 decimaltal "höjdÖverHavet" // Decimaltal


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
* finnsTillganglig 1..* Reference(SENDITjanstLogical) "finns tillgänglig"
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

*/