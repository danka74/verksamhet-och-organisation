Extension: SENDIOrganizationActiveStatusExtension
Id: sendi-organization-active-status-extension
Title: "SENDIOrganizationActiveStatusExtension"
Description: "SENDI extension for organization status (active=true, inactive=false)"
Context: Organization
* ^status = #active
* ^experimental = false
* value[x] only boolean

Extension: SENDIOrganizationLegalFormExtension
Id: sendi-organization-legal-form-extension
Title: "SENDIOrganizationLegalFormExtension"
Description: "SENDI extension for organization legal form"
Context: Organization
* ^status = #active
* ^experimental = false
* value[x] only Coding
* valueCoding from SkatteverketLegalFormValueSet (required)

Extension: SENDIOrganizationOwnershipExtension
Id: sendi-organization-ownership-extension
Title: "SENDIOrganizationOwnershipExtension"
Description: "SENDI extension for organization ownership type"
Context: Organization
* ^status = #active
* ^experimental = false
* value[x] only Coding
* valueCoding from SCBOwnershipValueSet (required)

Extension: SENDIHealthcareServiceEncounterMeansExtension
Id: sendi-healthcare-service-encounter-means-extension
Title: "SENDIHealthcareServiceEncounterMeansExtension"
Description: "SENDI extension for healthcare service means of encounter (e.g. physical, virtual)"
Context: HealthcareService
* ^status = #active
* ^experimental = false
* value[x] only Coding
* valueCoding from SENDIEncounterMeansValueSet (required)

// backported from 6.0.0-ci build
Extension: SENDIEligibilityValueExtension
Id: sendi-eligibility-value-extension
Title: "SENDIEligibilityValueExtension"
Description: "SENDI extension for HealthcareService eligibility value"
Context: HealthcareService.eligibility
* ^status = #active
* ^experimental = false
* valueReference 1..1
* valueReference only Reference(SENDIEligibilityGroup)

Extension: SENDIOrganizationAdditionalRelationshipExtension
Id: sendi-organization-additional-relationship-extension
Title: "SENDIOrganizationAdditionalRelationshipExtension"
Description: "Extension for an additional partOf to represent additional organizational structure"
Context: Organization
* ^status = #active
* ^experimental = false
* extension contains
    additionalRelationship 1..1 and
    additionalRelationshipType 1..1
* extension[additionalRelationship].value[x] only Reference(SENDIOrganization)
* extension[additionalRelationshipType].value[x] only Coding
* extension[additionalRelationshipType].valueCoding from SENDIOrganizationAdditionalRelationshipTypeValueSet (required)

Extension: SENDIHealthcareServicePeriodExtension
Id: sendi-healthcare-service-period-extension
Title: "SENDIHealthcareServicePeriodExtension"
Description: "Extension for the period during which the service is available and offered"
Context: HealthcareService
* ^status = #active
* ^experimental = false
* valueRange 1..1

Extension: SENDIContactExtension
Id: sendi-contact-extension
Title: "SENDIContactExtension"
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
* extension[purpose].valueCodeableConcept from SENDIContactPurposeValueSet
* extension[name] ^short = "Name of an isendividual to contact"
* extension[name].value[x] only HumanName
* extension[telecom] ^short = "Contact details (e.g.phone/fax/url)"
* extension[telecom].value[x] only ContactPoint
* extension[address] ^short = "Address for the contact"
* extension[address].value[x] only Address
* extension[organization] ^short = "This contact detail is handled/monitored by a specific organization"
* extension[organization].value[x] only Reference(SENDIOrganization) 
* extension[period] ^short = "Period that this contact was valid for usage"
* extension[period].value[x] only Period


/*
Extension: SENDIOrganizationAffiliationTelecomNameExtension
Id: sendi-organization-affiliation-telecom-name-extension
Title: "SENDIOrganizationAffiliationTelecomNameExtension"
Description: "Extension to add R5 ExtendedContactDetail element name to R4 ContactPoint"
Context: OrganizationAffiliation.telecom
* ^status = #active
* ^experimental = false
* valueHumanName 1..1

Extension: SENDIOrganizationAffiliationTelecomPurposeExtension
Id: sendi-organization-affiliation-telecom-purpose-extension
Title: "SENDIOrganizationAffiliationTelecomPurposeExtension"
Description: "Extension to add R5 ExtendedContactDetail element purpose to R4 ContactPoint"
Context: OrganizationAffiliation.telecom
* ^status = #active
* ^experimental = false
* valueCodeableConcept 1..1
* valueCodeableConcept from SENDIOrganizationAffiliationContactPurposeValueSet

Extension: SENDIOrganizationAffiliationTelecomAddressExtension
Id: sendi-organization-affiliation-telecom-address-extension
Title: "SENDIOrganizationAffiliationTelecomAddressExtension"
Description: "Extension to add R5 ExtendedContactDetail element address to R4 ContactPoint"
Context: OrganizationAffiliation.telecom
* ^status = #active
* ^experimental = false
* valueAddress 1..1
*/