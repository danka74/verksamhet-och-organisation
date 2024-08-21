Profile: SENDIBusiness
Parent: HealthcareService
Id: SENDIBusiness
Title: "SENDI Business"
Description: """arbete som fortlöpande utförs i linje med viss övergripande inriktning"""
* ^status = #active
* providedBy 1..1 MS
* providedBy only Reference(SENDIOrganization or SENDIOrganizationalUnit)
* category.coding ^slicing.discriminator.type = #value
* category.coding ^slicing.discriminator.path = "system"
* category.coding ^slicing.rules = #open
* category.coding ^slicing.ordered = false 
* category.coding ^slicing.description = "Slice on CodeableConcept.coding based on the system value"
* category.coding contains SENDIBusinessType 0..1 MS and HSABusinessType 0..1 // etc.
* category.coding[SENDIBusinessType] from SENDIBusinessTypeValueSet (required)
* category.coding[HSABusinessType] from HSABusinessTypeValueSet (required)
* location 0..* MS
* location only Reference(SENDILocation)