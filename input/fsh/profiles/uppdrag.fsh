Profile: VOKOrganizationAffiliation
Parent: OrganizationAffiliation
Id: vok-organization-affiliation
Title: "VOK OrganizationAffiliation"
Description: """Representation of an assigned commission from a client/customer organization to 
    a performing organization related to a certain service."""
* ^status = #active
* organization 1..1 MS
* organization only Reference(VOKOrganization)
* participatingOrganization 1..1 MS
* participatingOrganization only Reference(VOKOrganization)
* healthcareService 1..1 MS
* healthcareService only Reference(VOKHealthcareService)
* code 1..* MS
* extension contains http://hl7.org/fhir/5.0/StructureDefinition/extension-OrganizationAffiliation.contact named contact 0..1 MS