Profile: NDIPractitioner
Parent: http://hl7.se/fhir/ig/base/StructureDefinition/SEBasePractitioner
Id: ndi-practitioner
Title: "NDI Practitioner"
Description: "text"
* ^status = #active
* identifier 1..* MS
* name 1..1 MS
* telecom 1..* MS
// * address 0..* MS

Profile: NDIPractitionerRole
Parent: http://hl7.se/fhir/ig/base/StructureDefinition/SEBasePractitionerRole
Id: ndi-practitioner-role
Title: "NDI PractitionerRole"
Description: "text"
* ^status = #active
* organization 1..1 MS
* organization only Reference(NDIOrganization)
* practitioner 1..1 MS
* practitioner only Reference(NDIPractitioner)
* code 1..* MS

