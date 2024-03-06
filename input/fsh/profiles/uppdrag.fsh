Profile: VOKOrganizationAffiliation
Parent: OrganizationAffiliation
Id: vok-organization-affiliation
Title: "VOK uppdrag"
Description: "text"
* organization 1..1 MS
* organization only Reference(VOKOrganization)
* participatingOrganization 1..1 MS
* participatingOrganization only Reference(VOKOrganization)
* healthcareService 1..1 MS
* healthcareService only Reference(VOKHealthcareService)
* code 1..* MS
