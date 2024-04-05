Profile: VOKHealthcareService
Parent: HealthcareService
Id: vok-healthcare-service
Title: "VOK Service"
Description: "A service provided by an organization"
* ^status = #active
* identifier 1..* MS
* type 1..1 MS
* category 0..*
* name 0..1 MS // beskrivning? 0..*
* extension contains VOKHealthcareServiceEncounterMeansExtension named encounterMeans 1..1 MS
* extension contains VOKHealthcareServicePeriod named period 1..1 MS
* availableTime 0..* MS
* notAvailable 0..* MS
// * eligibility ^slicing.discriminator.type = #value
// * eligibility ^slicing.discriminator.path = "code"
// * eligibility ^slicing.rules = #open
// * eligibility ^slicing.description = "Slice based on eligibility.code value"
// * eligibility ^slicing.ordered = false
* eligibility 0..* MS
* eligibility.extension contains VOKEligibilityValueExtension named eligibilityValue 0..1 MS
* eligibility.code from VOKEligibilityCharacteristicsValueset (extensible)
* eligibility.code 1..1 MS
* location 0..* MS
* location only Reference(VOKLocation)
* telecom 0..* MS
* providedBy 0..1 MS
* providedBy only Reference(VOKOrganization)


Profile: VSHealthCareService
Parent: VOKHealthcareService
Id: VSHealthCareService
Title: "VSHealthCareService"
Description: "A service provided by an organization, constrained for Vårdsök project"
* eligibility ^slicing.discriminator.type = #value
* eligibility ^slicing.discriminator.path = "code"
* eligibility ^slicing.rules = #open
* eligibility ^slicing.description = "Slice based on eligibility.code value"
* eligibility ^slicing.ordered = false
* eligibility contains kon 0..1 and alder 0..1
* eligibility[kon].code = $SCT#184100006 "patientens kön"
* eligibility[kon].extension[VOKEligibilityValueExtension].valueCodeableConcept from VOKEligibilitySexValueSet (required)
* eligibility[kon].extension[VOKEligibilityValueExtension].valueCodeableConcept 1..1 MS
* eligibility[alder].code = $SCT#424144002 "aktuell kronologisk ålder"
* eligibility[alder].extension[VOKEligibilityValueExtension].valueRange 1..1