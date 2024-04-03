Extension: VOKOrganizationActiveStatusExtension
Id: vok-organization-active-status-extension
Title: "VOK extension for organization status (active=true, inactive=false)"
Context: Organization
* ^status = #active
* ^experimental = false
* value[x] only boolean

Extension: VOKOrganizationLegalFormExtension
Id: vok-organization-legal-form-extension
Title: "VOK extension for organization legal form"
Context: Organization
* ^status = #active
* ^experimental = false
* value[x] only Coding
* valueCoding from SCBLegalFormValueSet (required)

Extension: VOKOrganizationOwnershipExtension
Id: vok-organization-ownership-extension
Title: "VOK extension for organization ownership type"
Context: Organization
* ^status = #active
* ^experimental = false
* value[x] only Coding
* valueCoding from SCBOwnershipValueSet (required)

Extension: VOKHealthcareServiceEncounterMeansExtension
Id: vok-healthcare-service-encounter-means-extension
Title: "VOK extension for healthcare service means of encounter (e.g. physical, virtual)"
Context: HealthcareService
* ^status = #active
* ^experimental = false
* value[x] only Coding
* valueCoding from VOKEncounterMeansValueSet (required)


// backported from 6.0.0-ci build
Extension: VOKEligibilityValueExtension
Id: vok-eligibility-value-extension
Title: "VOK extension for HealthcareService eligibility value"
Context: HealthcareService.eligibility
* ^status = #active
* ^experimental = false
* value[x] 1..1

Extension: VOKOrganizationAdditionalPartOf
Id: VOKOrganizationAdditionalPartOf
Title: "VOKOrganizationAdditionalPartOf"
Description: "VOKOrganizationAdditionalPartOf"
Context: Organization
* ^status = #active
* ^experimental = false
* extension contains
    additionalPartOf 1..1 and
    additionalPartOfType 1..1
* extension[additionalPartOf].value[x] only Reference(VOKOrganization)
* extension[additionalPartOfType].value[x] only Coding
* extension[additionalPartOfType].valueCoding from VOKOrganizationAdditionalPartOfTypeValueSet (required)

Extension: VOKHealthcareServicePeriod
Id: vok-healthcare-service-period
Title: "VOKHealthcareServicePeriod"
Description: "Extension for the period during which the service is available and offered"
Context: HealthcareService
* ^status = #active
* ^experimental = false
* valueRange 1..1