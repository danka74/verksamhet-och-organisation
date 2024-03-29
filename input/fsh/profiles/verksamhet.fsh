Profile: VOKVerksamhet
Parent: HealthcareService
Id: VOKVerksamhet
Title: "VOKVerksamhet"
Description: """arbete som fortlöpande utförs i linje med viss övergripande inriktning"""
* ^status = #active
* providedBy 1..1 MS
* providedBy only Reference(VOKOrganization)
* category 1..1 MS // utbud vs. verksamhetstyp??
* type.coding ^slicing.discriminator.type = #value
* type.coding ^slicing.discriminator.path = "system"
* type.coding ^slicing.rules = #open
* type.coding ^slicing.ordered = false 
* type.coding ^slicing.description = "Slice on CodeableConcept.coding based on the system value"
* type.coding contains VOKType 0..1 and HSAType 0..1 // etc.
* type.coding[VOKType] 1..1 MS
* type.coding[VOKType] from VOKServiceTypeValueSet (required)
* type.coding[HSAType] from HSAServiceTypeValueSet (required)