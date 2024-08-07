Profile: SENDIOrganizationAffiliation
Parent: OrganizationAffiliation
Id: sendi-organization-affiliation
Title: "SENDI OrganizationAffiliation"
Description: """Representation of an assigned commission from a client/customer organization to 
    a performing organization related to a certain service."""
* ^status = #active
* organization 1..1 MS
* organization only Reference(SENDIOrganization)
* participatingOrganization 1..1 MS
* participatingOrganization only Reference(SENDIOrganization)
* healthcareService 1..* MS
* healthcareService only Reference(SENDIHealthcareService)
* code 1..* MS
* extension contains SENDIContactExtension named contact 0..1 MS
