Profile: SENDIPractitioner
Parent: http://hl7.se/fhir/ig/base/StructureDefinition/SEBasePractitioner
Id: sendi-practitioner
Title: "SENDI Practitioner"
Description: "text"
* ^status = #active
* identifier 1..* MS
* name 1..1 MS
* telecom 1..* MS
// * address 0..* MS

Profile: SENDIPractitionerRole
Parent: http://hl7.se/fhir/ig/base/StructureDefinition/SEBasePractitionerRole
Id: sendi-practitioner-role
Title: "SENDI PractitionerRole"
Description: "text"
* ^status = #active
* organization 1..1 MS
* organization only Reference(SENDIOrganization)
* practitioner 1..1 MS
* practitioner only Reference(SENDIPractitioner)
* code 1..* MS

