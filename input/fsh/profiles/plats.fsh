Profile: VOKLocation
Parent: Location
Id: vok-location
Title: "VOK plats"
Description: "text"
* ^status = #active
* identifier 1..* MS
* name MS
* description 0..1 MS
* status 1..1 MS
* type 1..* MS // or 1..1
* physicalType 0..1 MS
* address 0..1 MS
* position 0..1 MS
