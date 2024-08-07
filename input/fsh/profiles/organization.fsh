// överväger att ha en gemensam profil med två specialiseringar för Organisation och Organisatorisk enhet


Profile: NDIOrganization
Parent: http://hl7.se/fhir/ig/base/StructureDefinition/SEBaseOrganization
Id: ndi-organization
Title: "NDI Organization"
Description: "Organization profile for NDI"
* ^status = #active
* identifier 1..* MS
* type 0..* MS // skulle behövas en slice på type för olika kodverk
* name 1..1 MS
* alias 0..* MS
* extension contains NDIOrganizationActiveStatusExtension named organizationActive 0..1 MS
* extension contains http://hl7.org/fhir/StructureDefinition/organization-period named period 1..1 MS
* extension contains http://hl7.org/fhir/5.0/StructureDefinition/extension-Organization.qualification named qualification 0..1 MS
* extension[period].valuePeriod.start 1..1 MS
* extension[period].valuePeriod.end 0..1 MS
* extension contains NDIOrganizationLegalFormExtension named legalForm 1..1 MS
* extension contains NDIOrganizationOwnershipExtension named ownershipType 0..1 MS
* partOf 0..1 MS
* partOf only Reference(NDIOrganization)
* partOf ^short = "Definition av partOf för NDIen"
* extension contains NDIOrganizationAdditionalRelationshipExtension named additionalRelationship 0..1 MS

Profile: NDIOrganizationalUnit
Parent: http://hl7.se/fhir/ig/base/StructureDefinition/SEBaseOrganization
Id: ndi-organizational-unit
Title: "NDI Organizational Unit"
Description: "Organizational unit profile for NDI"
* ^status = #active
* identifier 1..* MS
* type 0..* MS // skulle behövas en slice på type för olika kodverk
* name 1..1 MS
* alias 0..* MS
* extension contains NDIOrganizationActiveStatusExtension named organizationActive 0..1 MS
* extension contains http://hl7.org/fhir/StructureDefinition/organization-period named period 1..1 MS
* extension contains http://hl7.org/fhir/5.0/StructureDefinition/extension-Organization.qualification named qualification 0..1 MS
* extension[period].valuePeriod.start 1..1 MS
* extension[period].valuePeriod.end 0..1 MS
* partOf 0..1 MS
* partOf only Reference(NDIOrganization)
* partOf ^short = "Definition av partOf för NDIen"
* extension contains NDIOrganizationAdditionalRelationshipExtension named additionalRelationship 0..1 MS
