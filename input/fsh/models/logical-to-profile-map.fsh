Mapping: VOKOrganizationLogicalToProfile
Source: VOKOrganisationLogical
Target: "VOKOrganization"
* id -> "Organization.identifier"
// * beskrivning -> "Organization.description" in R5 only
* giltigFrom -> "Organization.extension[period].valuePeriod.start"
* giltigTom -> "Organization.extension[period].valuePeriod.end"
* juridiskForm -> "Organization.extension[legalForm]"
* registreratnamn -> "Organization.name"
* popularnamn -> "Organization.alias"
* status -> "Organization.extension[organizationActive].valueBoolean"
* agarkategori -> "Organization.extension[ownershipType].valueCoding"

Mapping: VOKOrganizationUnitLogicalToProfile
Source: VOKOrganisatoriskEnhetLogical
Target: "VOKOrganization"
// * tillhor -> "Organization.partOf"
* id -> "Organization.identifier"
* giltigFrom -> "Organization.extension[period].valuePeriod.start"
* giltigTom -> "Organization.extension[period].valuePeriod.end"
* enhetsnamn -> "Organization.name"
* popularnamn -> "Organization.alias"
* status -> "Organization.extension[organizationActive].valueBoolean"
* typ -> "Organization.type" 

Mapping: VOKVardOchOmsorgstjanstLogicalToProfile
Source: VOKVardOchOmsorgstjanstLogical
Target: "VOKHealthcareService"
* id -> "HealthcareService.identifier"
* typ -> "HealthcareService.type"
// * remisskrav 1..1 boolean "remisskrav" // Bool
// * motesform 1..* Coding "mötesform" // Kod
* beskrivning -> "HealthcareService.name" // TODO: korrekt?
// * giltigFrom -> "HealthcareService"
// * giltigTom 0..1 dateTime "giltigTom" // Datum

Mapping: VOKUppdragLogicalToProfile
Source: VOKUppdragLogical
Target: "VOKOrganizationAffiliation"
* typ -> "VOKOrganizationAffiliation.code"
// * beskrivning -> "VOKOrganizationAffiliation"
* giltigFrom -> "VOKOrganizationAffiliation.period.start"
* giltigTom -> "VOKOrganizationAffiliation.period.end"

Mapping: VOKAvtalLogicalToProfile
Source: VOKAvtalLogical
Target: "VOKContract"
* id -> "VOKContract.identifier"
* kategori -> "VOKContract.type"
* typ -> "VOKContract.subType"
// avser -> "VOKContract.subject"
// * url 1..1 uri "url" // URL
// * giltigFrom 1..1 dateTime "giltigFrom" // Datum
// * giltigTom 0..1 dateTime "giltigTom" // Datum
// * optionForlangning 1..1 string "optionFörlängning" // Sträng