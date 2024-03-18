Profile: VOKPractitioner
Parent: http://hl7.se/fhir/ig/base/StructureDefinition/SEBasePractitioner
Id: vok-practitioner
Title: "VOK vård- och omsorgspersonal"
Description: "text"
* identifier 1..* MS
* name 1..1 MS
* telecom 1..* MS
// * address 0..* MS

Profile: VOKPractitionerRole
Parent: http://hl7.se/fhir/ig/base/StructureDefinition/SEBasePractitionerRole
Id: cok-practitioner-role
Title: "VOK personalroll"
Description: "text"
* organization 1..1 MS
* organization only Reference(VOKOrganization)
* practitioner 1..1 MS
* practitioner only Reference(VOKPractitioner)
* code 1..* MS

