Profile: VOKContract
Parent: Contract
Id: vok-contract
Title: "VOK Contract"
Description: "Contract profile for VOK"
* ^status = #active
* identifier 1..* MS
* subject 1..* MS
* subject only Reference(VOKOrganizationAffiliation)
* status 1..1 MS
* applies 1..1 MS
* type 1..1 MS
* subType 1..1 MS
* term 1..1 MS