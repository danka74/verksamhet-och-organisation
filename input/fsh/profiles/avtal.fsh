Profile: NDIContract
Parent: Contract
Id: ndi-contract
Title: "NDI Contract"
Description: "Contract profile for NDI"
* ^status = #active
* identifier 1..* MS
* subject 1..* MS
* subject only Reference(NDIOrganizationAffiliation)
* status 1..1 MS
* applies 1..1 MS
* type 1..1 MS
* subType 1..1 MS
* term 1..1 MS