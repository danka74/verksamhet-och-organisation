Profile: NDIVerksamhet
Parent: HealthcareService
Id: NDIVerksamhet
Title: "NDI Business"
Description: """arbete som fortlöpande utförs i linje med viss övergripande inriktning"""
* ^status = #active
* providedBy 1..1 MS
* providedBy only Reference(NDIOrganization)
* category.coding ^slicing.discriminator.type = #value
* category.coding ^slicing.discriminator.path = "system"
* category.coding ^slicing.rules = #open
* category.coding ^slicing.ordered = false 
* category.coding ^slicing.description = "Slice on CodeableConcept.coding based on the system value"
* category.coding contains NDIType 0..1 and HSAType 0..1 // etc.
* category.coding[NDIType] 1..1 MS
* category.coding[NDIType] from NDIServiceTypeValueSet (required)
* category.coding[HSAType] from HSAServiceTypeValueSet (required)