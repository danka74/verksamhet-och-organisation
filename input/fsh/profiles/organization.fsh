Profile: VOKOrganization
Parent: http://hl7.se/fhir/ig/base/StructureDefinition/SEBaseOrganization
Id: vok-organization
Title: "VOK Organization"
Description: "Organization profile for VOK"
* ^status = #active
* identifier 1..* MS
* type 0..* MS // skulle behövas en slice på type för olika kodverk
* extension contains VOKOrganizationActiveStatusExtension named organizationActive 1..1 MS
* extension contains http://hl7.org/fhir/StructureDefinition/organization-period named period 1..1 MS
* extension contains http://hl7.org/fhir/5.0/StructureDefinition/extension-Organization.description named description 0..1 MS
* extension[period].valuePeriod.start 1..1 MS
* extension[period].valuePeriod.end 0..1 MS
* extension contains VOKOrganizationLegalFormExtension named legalForm 1..1 MS
* extension contains VOKOrganizationOwnershipExtension named ownershipType 0..1 MS
* partOf 0..1 MS
* partOf only Reference(VOKOrganization)
* partOf ^short = "Definition av partOf för VOKen"
// * additionalPartOf extension med Reference(VOKOrganization) och kodad typ
// verksamhet ?