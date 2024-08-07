Profile: NDIOrganizationAffiliation
Parent: OrganizationAffiliation
Id: ndi-organization-affiliation
Title: "NDI OrganizationAffiliation"
Description: """Representation of an assigned commission from a client/customer organization to 
    a performing organization related to a certain service."""
* ^status = #active
* organization 1..1 MS
* organization only Reference(NDIOrganization)
* participatingOrganization 1..1 MS
* participatingOrganization only Reference(NDIOrganization)
* healthcareService 1..* MS
* healthcareService only Reference(NDIHealthcareService)
* code 1..* MS
* extension contains NDIContactExtension named contact 0..1 MS
