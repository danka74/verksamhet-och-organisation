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
* remisskrav -> "HealthcareService.eligibility.where(code = #referralRequired).code.exists()"
* motesform -> "HealthcareService.extension[encounterMeans].valueCoding"
* beskrivning -> "HealthcareService.name"
* giltigFrom -> "HealthcareService.extension[period].valuePeriod.start"
* giltigTom -> "HealthcareService.extension[period].valuePeriod.end"

Mapping: VOKMalgruppLogicalToProfile
Source: VOKMalgruppLogical
Target: "VOKHealthcareService"
* kod -> "HealthcareService.eligibility.code"
* beskrivning -> "HealthcareService.eligibility.comment"
* alderMin -> "HealthcareService.eligibility.where(code = #424144002).extension[eligibilityValue].valueRange.low"
* alderMax -> "HealthcareService.eligibility.where(code = #424144002).extension[eligibilityValue].valueRange.high"
* kon -> "HealthcareService.eligibility.where(code = #184100006).extension[eligibilityValue].valueCoding"

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
* giltigFrom -> "Contract.applies.start"
* giltigTom -> "Contract.applies.end"
* optionForlangning -> "Contract.term.offer.text" // Sträng

Mapping: VOKVerksamhetLogicalToProfile
Source: VOKVerksamhetLogical
Target: "VOKVerksamhet" 
* typ -> "HealthcareService.type"