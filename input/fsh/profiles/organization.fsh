// överväger att ha en gemensam profil med två specialiseringar för Organisation och Organisatorisk enhet


Profile: SENDIOrganization
Parent: http://hl7.se/fhir/ig/base/StructureDefinition/SEBaseOrganization
Id: sendi-organization
Title: "SENDI Organization"
Description: "Organization profile for SENDI"
* ^status = #active
* identifier 1..* MS
* type 0..* MS // skulle behövas en slice på type för olika kodverk
* name 1..1 MS
* alias 0..* MS
* extension contains SENDIOrganizationActiveStatusExtension named organizationActive 0..1 MS
* extension contains http://hl7.org/fhir/StructureDefinition/organization-period named period 1..1 MS
* extension contains http://hl7.org/fhir/5.0/StructureDefinition/extension-Organization.qualification named qualification 0..1 MS
* extension[period].valuePeriod.start 1..1 MS
* extension[period].valuePeriod.end 0..1 MS
* extension contains SENDIOrganizationLegalFormExtension named legalForm 1..1 MS
* extension contains SENDIOrganizationOwnershipExtension named ownershipType 0..1 MS
* partOf 0..1 MS
* partOf only Reference(SENDIOrganization)
* partOf ^short = "Definition av partOf för SENDIen"
* extension contains SENDIOrganizationAdditionalRelationshipExtension named additionalRelationship 0..1 MS

Profile: SENDIOrganizationalUnit
Parent: http://hl7.se/fhir/ig/base/StructureDefinition/SEBaseOrganization
Id: sendi-organizational-unit
Title: "SENDI Organizational Unit"
Description: "Organizational unit profile for SENDI"
* ^status = #active
* contained ^slicing.discriminator.type = #value
* contained ^slicing.discriminator.path = "resourceType"
* contained ^slicing.rules = #open
* contained contains SENDIBusiness 0..1 MS
* identifier 1..* MS
* type 0..* MS // skulle behövas en slice på type för olika kodverk
* name 1..1 MS
* alias 0..* MS
* extension contains SENDIOrganizationActiveStatusExtension named organizationActive 0..1 MS
* extension contains http://hl7.org/fhir/StructureDefinition/organization-period named period 1..1 MS
* extension contains http://hl7.org/fhir/5.0/StructureDefinition/extension-Organization.qualification named qualification 0..1 MS
* extension[period].valuePeriod.start 1..1 MS
* extension[period].valuePeriod.end 0..1 MS
* partOf 0..1 MS
* partOf only Reference(SENDIOrganization)
* partOf ^short = "Definition av partOf för SENDIen"
* extension contains SENDIOrganizationAdditionalRelationshipExtension named additionalRelationship 0..1 MS
