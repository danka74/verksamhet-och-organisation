Profile: VOKPractitioner
Parent: Practitioner
Id: vok-practitioner
Title: "VOK person"
Description: "text"
* identifier 1..* MS
* name 1..* MS
* telecom 1..* MS
// * address 0..* MS

Profile: VOKPractitionerRole
Parent: PractitionerRole
Id: cok-practitioner-role
Title: "VOKPractitionerRole"
Description: "text"
* organization 1..1 MS
* organization only Reference(VOKOrganization)
* practitioner 1..1 MS
* practitioner only Reference(VOKPractitioner)
* code 1..* MS

