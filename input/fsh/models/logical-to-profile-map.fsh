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
* popularnamn -> "aOrganization.lias"
* status -> "Organization.extension[organizationActive].valueBoolean"
* typ -> "Organization.type" 
