Profile: SENDIContract
Parent: Contract
Id: sendi-contract
Title: "SENDI Contract"
Description: "Contract profile for SENDI"
* ^status = #active
* extension contains SENDIContactExtension named contact 0..1 MS
* identifier 1..* MS
* subject 1..* MS
* subject only Reference(SENDIOrganizationAffiliation)
* status 1..1 MS
* applies 1..1 MS
* type 1..1 MS
* subType 1..1 MS
* term 1..1 MS