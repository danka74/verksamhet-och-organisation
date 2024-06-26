Mapping: VOKOrganizationLogicalToProfile
Source: VOKOrganisationLogical
Target: "VOKOrganization"
* id -> "Organization.identifier"
* id -> "Organization.id"
* giltigFrom -> "Organization.extension[period].valuePeriod.start"
* giltigTom -> "Organization.extension[period].valuePeriod.end"
* juridiskForm -> "Organization.extension[legalForm]"
* namn -> "Organization.name"
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
Source: VOKTjanstLogical
Target: "VOKHealthcareService"
* id -> "HealthcareService.identifier"
* typ -> "HealthcareService.type"
* motesform -> "HealthcareService.extension[encounterMeans].valueCoding"
* beskrivning -> "HealthcareService.name"
* giltigFrom -> "HealthcareService.extension[period].valuePeriod.start"
* giltigTom -> "HealthcareService.extension[period].valuePeriod.end"

Mapping: VOKMalgruppLogicalToProfile
Source: VOKMalgruppLogical
Target: "VOKEligibilityGroup"
// * kod - vad ska den bindas till? ska den vara med?
* vardeKod -> "Group.characteristic.code"
* beskrivning -> "Group.text"
// * vardeMax värdet i FHIR är value[x] som kan vara t.ex. en kod, ett intervall etc.

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
* typ -> "Contract.type"
* avser -> "Contract.topicReference(VOKUppdragLogical)"
* url -> "Contract.legal.contentAttechment.url"
* giltigFrom -> "Contract.applies.start"
* giltigTom -> "Contract.applies.end"
* optionForlangning -> "Contract.term.offer.text" // Sträng

Mapping: VOKVerksamhetLogicalToProfile
Source: VOKVerksamhetLogical
Target: "VOKVerksamhet" 
* typ -> "HealthcareService.type"