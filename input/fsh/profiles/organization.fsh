// överväger att ha en gemensam profil med två specialiseringar för Organisation och Organisatorisk enhet


Profile: VOKOrganization
Parent: http://hl7.se/fhir/ig/base/StructureDefinition/SEBaseOrganization
Id: vok-organization
Title: "VOK Organization"
Description: "Organization profile for VOK"
* ^status = #active
* identifier 1..* MS
* type 0..* MS // skulle behövas en slice på type för olika kodverk
* extension contains VOKOrganizationActiveStatusExtension named organizationActive 0..1 MS
* extension contains http://hl7.org/fhir/StructureDefinition/organization-period named period 1..1 MS
* extension contains http://hl7.org/fhir/5.0/StructureDefinition/extension-Organization.qualification named qualification 0..1 MS
* extension[period].valuePeriod.start 1..1 MS
* extension[period].valuePeriod.end 0..1 MS
* extension contains VOKOrganizationLegalFormExtension named legalForm 1..1 MS
* extension contains VOKOrganizationOwnershipExtension named ownershipType 0..1 MS
* partOf 0..1 MS
* partOf only Reference(VOKOrganization)
* partOf ^short = "Definition av partOf för VOKen"
* extension contains VOKOrganizationAdditionalRelationshipExtension named additionalRelationship 0..1 MS

// * additionalPartOf extension med Reference(VOKOrganization) och kodad typ
// verksamhet ?

Profile: VOKOrganizationalUnit
Parent: http://hl7.se/fhir/ig/base/StructureDefinition/SEBaseOrganization
Id: vok-organizational-unit
Title: "VOK Organizational Unit"
Description: "Organizational unit profile for VOK"
* ^status = #active
* identifier 1..* MS
* type 0..* MS // skulle behövas en slice på type för olika kodverk
* extension contains VOKOrganizationActiveStatusExtension named organizationActive 0..1 MS
* extension contains http://hl7.org/fhir/StructureDefinition/organization-period named period 1..1 MS
* extension contains http://hl7.org/fhir/5.0/StructureDefinition/extension-Organization.qualification named qualification 0..1 MS
* extension[period].valuePeriod.start 1..1 MS
* extension[period].valuePeriod.end 0..1 MS
// * extension contains VOKOrganizationLegalFormExtension named legalForm 1..1 MS
// * extension contains VOKOrganizationOwnershipExtension named ownershipType 0..1 MS
* partOf 0..1 MS
* partOf only Reference(VOKOrganization)
* partOf ^short = "Definition av partOf för VOKen"
* extension contains VOKOrganizationAdditionalRelationshipExtension named additionalRelationship 0..1 MS
