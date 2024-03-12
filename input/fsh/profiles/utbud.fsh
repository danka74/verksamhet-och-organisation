Profile: VOKHealthcareService
Parent: HealthcareService
Id: vok-healthcare-service
Title: "VOK service"
Description: "text"
* identifier 1..* MS
* type 1..1 MS
* category 0..*
* name 0..1 MS // beskrivning? 0..*
* extension contains VOKHealthcareServiceReferralRequiredExtension named referralRequired 1..1 MS
* extension contains VOKHealthcareServiceEncounterMeansExtension named encounterMeans 1..1 MS
* availableTime 0..* MS
* notAvailable 0..* MS
* eligibility 0..* MS
* eligibility.extension contains VOKEligibilityValueExtension named eligibilityValue 1..1 MS
* eligibility ^slicing.discriminator.type = #value
* eligibility ^slicing.discriminator.path = "code"
* eligibility ^slicing.rules = #open
* eligibility ^slicing.ordered = false   // can be omitted, since false is the default
* eligibility ^slicing.description = "Slice based on the eligibility.code value"
// * eligibility contains ageRange 0..1 and sex 0..1 and BMI 0..1
// * eligibility[ageRange].code = $SCT#424144002 "aktuell kronologisk ålder" (exactly)
// * eligibility[sex].code = $SCT#184100006 "patientens kön"  (exactly)
// BMI
* eligibility.code.coding from VOKEligibilityCharacteristicsValueset (extensible)
* location 0..* MS
* location only Reference(VOKLocation)
* telecom 0..* MS