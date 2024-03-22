Mapping: VOKOrganizationLogicalToProfile
Source: VOKOrganisationLogical
Target: "VOKOrganization"
* id -> "Organization.identifier"
* giltigFrom -> "Organization.extension[period].valuePeriod.start"
* giltigTom -> "Organization.extension[period].valuePeriod.end"
* juridiskForm -> "Organization.extension[legalForm]"
* foretagsnamn -> "Organization.name"
* alias -> "Organization.alias"
* status -> "Organization.extension[organizationActive].valueBoolean"
* agarkategori -> "Organization.extension[ownershipType].valueCoding"

Mapping: VOKOrganizationUnitLogicalToProfile
Source: VOKOrganisatoriskEnhetLogical
Target: "VOKOrganization"
* tillhor -> "Organization.partOf" 
* id -> "Organization.identifier"
* giltigFrom -> "Organization.extension[period].valuePeriod.start"
* giltigTom -> "Organization.extension[period].valuePeriod.end"
* enhetsnamn -> "Organization.name"
* alias -> "Organization.alias"
* status -> "Organization.extension[organizationActive].valueBoolean"
* typ -> "Organization.type" 

Mapping: VOKVardOchOmsorgstjanstLogicalToProfile
Source: VOKVardOchOmsorgstjanstLogical
Target: "VOKHealthcareService"
* id -> "HealthcareService.identifier"
* typ -> "HealthcareService.type"
* remisskrav -> "HealthcareService.eligibility.code" // if code == #referralRequired
* motesform -> "HealthcareService.extension[encounterMeans].valueCoding"
* beskrivning -> "HealthcareService.name"
// tid under vilken tjänsten är tillgänglig, extension!
// * giltigFrom -> "HealthcareService"
// * giltigTom 0..1 dateTime "giltigTom" // Datum

Mapping: VOKMalgruppLogicalToProfile
Source: VOKMalgruppLogical
Target: "VOKHealthcareService"
* beskrivning -> "HealthcareService.eligibility.comment"
* alderMin -> "HealthcareService.eligibility[ageRange].extension[eligibilityValue].valueRange.low"
* alderMax -> "HealthcareService.eligibility[ageRange].extension[eligibilityValue].valueRange.high"
* kon -> "HealthcareService.eligibility[sex].extension[eligibilityValue].valueCoding"

Mapping: VOKUppdragLogicalToProfile
Source: VOKUppdragLogical
Target: "VOKOrganizationAffiliation"
* typ -> "VOKOrganizationAffiliation.code"
* giltigFrom -> "VOKOrganizationAffiliation.period.start"
* giltigTom -> "VOKOrganizationAffiliation.period.end"
// * beskrivning -> "VOKOrganizationAffiliation"
* giltigFrom -> "VOKOrganizationAffiliation.period.start"
* giltigTom -> "VOKOrganizationAffiliation.period.end"
* omfattar -> "VOKOrganizationAffiliation.healthcareService"
* harUtforare -> "VOKOrganizationAffiliation.participatingOrganization"
* harBestallare -> "VOKOrganizationAffiliation.organization"

Mapping: VOKAvtalLogicalToProfile
Source: VOKAvtalLogical
Target: "VOKContract"
* id -> "Contract.identifier"
* kategori -> "Contract.type" // lagrum
* typ -> "Contract.subType" // upphandlingskodverk
* avser -> "Contract.topicReference(VOKUppdragLogical)"
* url -> "Contract.legal.contentAttechment.url"
// * giltigFrom 1..1 dateTime "giltigFrom" // Datum
// * giltigTom 0..1 dateTime "giltigTom" // Datum
* optionForlangning -> "Contract.term.offer.text" // Sträng

Mapping: VOKVerksamhetLogicalToProfile
Source: VOKVerksamhetLogical
Target: "VOKVerksamhet" 
* typ -> "HealthcareService.type"