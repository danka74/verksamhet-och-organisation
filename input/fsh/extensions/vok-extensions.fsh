Extension: NDIOrganizationActiveStatusExtension
Id: ndi-organization-active-status-extension
Title: "NDIOrganizationActiveStatusExtension"
Description: "NDI extension for organization status (active=true, inactive=false)"
Context: Organization
* ^status = #active
* ^experimental = false
* value[x] only boolean

Extension: NDIOrganizationLegalFormExtension
Id: ndi-organization-legal-form-extension
Title: "NDIOrganizationLegalFormExtension"
Description: "NDI extension for organization legal form"
Context: Organization
* ^status = #active
* ^experimental = false
* value[x] only Coding
* valueCoding from SkatteverketLegalFormValueSet (required)

Extension: NDIOrganizationOwnershipExtension
Id: ndi-organization-ownership-extension
Title: "NDIOrganizationOwnershipExtension"
Description: "NDI extension for organization ownership type"
Context: Organization
* ^status = #active
* ^experimental = false
* value[x] only Coding
* valueCoding from SCBOwnershipValueSet (required)

Extension: NDIHealthcareServiceEncounterMeansExtension
Id: ndi-healthcare-service-encounter-means-extension
Title: "NDIHealthcareServiceEncounterMeansExtension"
Description: "NDI extension for healthcare service means of encounter (e.g. physical, virtual)"
Context: HealthcareService
* ^status = #active
* ^experimental = false
* value[x] only Coding
* valueCoding from NDIEncounterMeansValueSet (required)

// backported from 6.0.0-ci build
Extension: NDIEligibilityValueExtension
Id: ndi-eligibility-value-extension
Title: "NDIEligibilityValueExtension"
Description: "NDI extension for HealthcareService eligibility value"
Context: HealthcareService.eligibility
* ^status = #active
* ^experimental = false
* valueReference 1..1
* valueReference only Reference(NDIEligibilityGroup)

Extension: NDIOrganizationAdditionalRelationshipExtension
Id: ndi-organization-additional-relationship-extension
Title: "NDIOrganizationAdditionalRelationshipExtension"
Description: "Extension for an additional partOf to represent additional organizational structure"
Context: Organization
* ^status = #active
* ^experimental = false
* extension contains
    additionalRelationship 1..1 and
    additionalRelationshipType 1..1
* extension[additionalRelationship].value[x] only Reference(NDIOrganization)
* extension[additionalRelationshipType].value[x] only Coding
* extension[additionalRelationshipType].valueCoding from NDIOrganizationAdditionalRelationshipTypeValueSet (required)

Extension: NDIHealthcareServicePeriodExtension
Id: ndi-healthcare-service-period-extension
Title: "NDIHealthcareServicePeriodExtension"
Description: "Extension for the period during which the service is available and offered"
Context: HealthcareService
* ^status = #active
* ^experimental = false
* valueRange 1..1

Extension: NDIContactExtension
Id: ndi-contact-extension
Title: "NDIContactExtension"
Description: "Extension to add R5 ExtendedContactDetail data type to R4"
Context: OrganizationAffiliation, HealthcareService
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
* extension[purpose].valueCodeableConcept from NDIContactPurposeValueSet
* extension[name] ^short = "Name of an individual to contact"
* extension[name].value[x] only HumanName
* extension[telecom] ^short = "Contact details (e.g.phone/fax/url)"
* extension[telecom].value[x] only ContactPoint
* extension[address] ^short = "Address for the contact"
* extension[address].value[x] only Address
* extension[organization] ^short = "This contact detail is handled/monitored by a specific organization"
* extension[organization].value[x] only Reference(NDIOrganization) 
* extension[period] ^short = "Period that this contact was valid for usage"
* extension[period].value[x] only Period


/*
Extension: NDIOrganizationAffiliationTelecomNameExtension
Id: ndi-organization-affiliation-telecom-name-extension
Title: "NDIOrganizationAffiliationTelecomNameExtension"
Description: "Extension to add R5 ExtendedContactDetail element name to R4 ContactPoint"
Context: OrganizationAffiliation.telecom
* ^status = #active
* ^experimental = false
* valueHumanName 1..1

Extension: NDIOrganizationAffiliationTelecomPurposeExtension
Id: ndi-organization-affiliation-telecom-purpose-extension
Title: "NDIOrganizationAffiliationTelecomPurposeExtension"
Description: "Extension to add R5 ExtendedContactDetail element purpose to R4 ContactPoint"
Context: OrganizationAffiliation.telecom
* ^status = #active
* ^experimental = false
* valueCodeableConcept 1..1
* valueCodeableConcept from NDIOrganizationAffiliationContactPurposeValueSet

Extension: NDIOrganizationAffiliationTelecomAddressExtension
Id: ndi-organization-affiliation-telecom-address-extension
Title: "NDIOrganizationAffiliationTelecomAddressExtension"
Description: "Extension to add R5 ExtendedContactDetail element address to R4 ContactPoint"
Context: OrganizationAffiliation.telecom
* ^status = #active
* ^experimental = false
* valueAddress 1..1
*/