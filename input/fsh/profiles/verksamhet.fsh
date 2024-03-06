Profile: VOKVerksamhet
Parent: HealthcareService
Id: VOKVerksamhet
Title: "VOKVerksamhet"
Description: """arbete som fortlöpande utförs i linje med viss övergripande inriktning"""
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

ValueSet: VOKServiceTypeValueSet
Id: vok-service-type-value-set
Title: "VOK Service Type ValueSet"
// Description: ""
* $SCTSE#1255914002 "brännskadevård"

ValueSet: HSAServiceTypeValueSet
Id: hsa-service-type-value-set
Title: "HSAServiceTypeValueSet"
// Description: ""
* include codes from system urn:oid:1.2.752.129.2.2.1.3