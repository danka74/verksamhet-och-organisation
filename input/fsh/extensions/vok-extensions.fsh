Extension: VOKOrganizationActiveStatusExtension
Id: vok-organization-active-status-extension
Title: "VOK extension for organization status (active=true, inactive=false)"
* ^status = #active
* ^experimental = false
* ^context[0].type = #element
* ^context[0].expression = "Organization"
* value[x] only boolean

Extension: VOKOrganizationLegalFormExtension
Id: vok-organization-legal-form-extension
Title: "VOK extension for organization legal form"
* ^status = #active
* ^experimental = false
* ^context[0].type = #element
* ^context[0].expression = "Organization"
* value[x] only Coding
* valueCoding from SCBLegalFormValueSet (required)

Extension: VOKOrganizationOwnershipExtension
Id: vok-organization-ownership-extension
Title: "VOK extension for organization ownership type"
* ^status = #active
* ^experimental = false
* ^context[0].type = #element
* ^context[0].expression = "Organization"
* value[x] only Coding
* valueCoding from SCBOwnershipValueSet (required)

Extension: VOKHealthcareServiceReferralRequiredExtension
Id: vok-healthcare-service-referral-required-extension
Title: "VOK extension for whether health care services require referral or not (yes=true, no=false)"
* ^status = #active
* ^experimental = false
* ^context[0].type = #element
* ^context[0].expression = "HealthcareService"
* value[x] only boolean

Extension: VOKHealthcareServiceEncounterMeansExtension
Id: vok-healthcare-service-encounter-means-extension
Title: "VOK extension for healthcare service means of encounter (e.g. physical, virtual)"
* ^status = #active
* ^experimental = false
* ^context[0].type = #element
* ^context[0].expression = "HealthcareService"
* value[x] only Coding
* valueCoding from VOKEncounterMeansValueSet (required)


// backported from 6.0.0-ci build
Extension: VOKEligibilityValueExtension
Id: vok-eligibility-value-extension
Title: "VOK extension for HealthcareService eligibility value"
* ^status = #active
* ^experimental = false
* ^context[0].type = #element
* ^context[0].expression = "HealthcareService.eligibility"
* value[x] 1..1