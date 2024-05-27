Extension: VOKOrganizationActiveStatusExtension
Id: vok-organization-active-status-extension
Title: "VOKOrganizationActiveStatusExtension"
Description: "VOK extension for organization status (active=true, inactive=false)"
Context: Organization
* ^status = #active
* ^experimental = false
* value[x] only boolean

Extension: VOKOrganizationLegalFormExtension
Id: vok-organization-legal-form-extension
Title: "VOKOrganizationLegalFormExtension"
Description: "VOK extension for organization legal form"
Context: Organization
* ^status = #active
* ^experimental = false
* value[x] only Coding
* valueCoding from SkatteverketLegalFormValueSet (required)

Extension: VOKOrganizationOwnershipExtension
Id: vok-organization-ownership-extension
Title: "VOKOrganizationOwnershipExtension"
Description: "VOK extension for organization ownership type"
Context: Organization
* ^status = #active
* ^experimental = false
* value[x] only Coding
* valueCoding from SCBOwnershipValueSet (required)

Extension: VOKHealthcareServiceEncounterMeansExtension
Id: vok-healthcare-service-encounter-means-extension
Title: "VOKHealthcareServiceEncounterMeansExtension"
Description: "VOK extension for healthcare service means of encounter (e.g. physical, virtual)"
Context: HealthcareService
* ^status = #active
* ^experimental = false
* value[x] only Coding
* valueCoding from VOKEncounterMeansValueSet (required)

// backported from 6.0.0-ci build
Extension: VOKEligibilityValueExtension
Id: vok-eligibility-value-extension
Title: "VOKEligibilityValueExtension"
Description: "VOK extension for HealthcareService eligibility value"
Context: HealthcareService.eligibility
* ^status = #active
* ^experimental = false
* valueReference 1..1

Extension: VOKOrganizationAdditionalPartOfExtension
Id: vok-organization-additional-part-of-extension
Title: "VOKOrganizationAdditionalPartOfExtension"
Description: "Extension for an additional partOf to represent additional organizational structure"
Context: Organization
* ^status = #active
* ^experimental = false
* extension contains
    additionalPartOf 1..1 and
    additionalPartOfType 1..1
* extension[additionalPartOf].value[x] only Reference(VOKOrganization)
* extension[additionalPartOfType].value[x] only Coding
* extension[additionalPartOfType].valueCoding from VOKOrganizationAdditionalPartOfTypeValueSet (required)

Extension: VOKHealthcareServicePeriodExtension
Id: vok-healthcare-service-period-extension
Title: "VOKHealthcareServicePeriodExtension"
Description: "Extension for the period during which the service is available and offered"
Context: HealthcareService
* ^status = #active
* ^experimental = false
* valueRange 1..1

Extension: VOKOrganizationAffiliationContactExtension
Id: vok-organization-affiliation-contact-extension
Title: "VOKOrganizationAffiliationContactExtension"
Description: "Extension to add R5 ExtendedContactDetail element name to R4"
Context: OrganizationAffiliation.telecom
* ^status = #active
* ^experimental = false
* extension contains purpose 0..1 and 
    name 0..* and
    telecom 0..* and
    address 0..1 and
    organization 0..1 and
    period 0..1
* extension[purpose] ^short = "The type of contact"
* extension[purpose].value[x] only CodeableConcept
* extension[purpose].valueCodeableConcept from VOKOrganizationAffiliationContactPurposeValueSet
* extension[name] ^short = "Name of an individual to contact"
* extension[name].value[x] only HumanName
* extension[telecom] ^short = "Contact details (e.g.phone/fax/url)"
* extension[telecom].value[x] only ContactPoint
* extension[address] ^short = "Address for the contact"
* extension[address].value[x] only Address
* extension[organization] ^short = "This contact detail is handled/monitored by a specific organization"
* extension[organization].value[x] only Reference(VOKOrganization) 
* extension[period] ^short = "Period that this contact was valid for usage"
* extension[period].value[x] only Period


/*
Extension: VOKOrganizationAffiliationTelecomNameExtension
Id: vok-organization-affiliation-telecom-name-extension
Title: "VOKOrganizationAffiliationTelecomNameExtension"
Description: "Extension to add R5 ExtendedContactDetail element name to R4 ContactPoint"
Context: OrganizationAffiliation.telecom
* ^status = #active
* ^experimental = false
* valueHumanName 1..1

Extension: VOKOrganizationAffiliationTelecomPurposeExtension
Id: vok-organization-affiliation-telecom-purpose-extension
Title: "VOKOrganizationAffiliationTelecomPurposeExtension"
Description: "Extension to add R5 ExtendedContactDetail element purpose to R4 ContactPoint"
Context: OrganizationAffiliation.telecom
* ^status = #active
* ^experimental = false
* valueCodeableConcept 1..1
* valueCodeableConcept from VOKOrganizationAffiliationContactPurposeValueSet

Extension: VOKOrganizationAffiliationTelecomAddressExtension
Id: vok-organization-affiliation-telecom-address-extension
Title: "VOKOrganizationAffiliationTelecomAddressExtension"
Description: "Extension to add R5 ExtendedContactDetail element address to R4 ContactPoint"
Context: OrganizationAffiliation.telecom
* ^status = #active
* ^experimental = false
* valueAddress 1..1
*/