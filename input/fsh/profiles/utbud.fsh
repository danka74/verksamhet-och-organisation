Profile: NDIHealthcareService
Parent: HealthcareService
Id: ndi-healthcare-service
Title: "NDI Service"
Description: "A service provided by an organization"
* ^status = #active
* identifier 1..* MS
* type 1..1 MS
* category 0..*
* name 0..1 MS // beskrivning? 0..*
* comment 0..1 MS
* extension contains NDIHealthcareServiceEncounterMeansExtension named encounterMeans 1..1 MS
* extension contains NDIHealthcareServicePeriodExtension named period 1..1 MS
* availableTime 0..* MS
* notAvailable 0..* MS
* eligibility 0..* MS
* eligibility.extension contains NDIEligibilityValueExtension named eligibilityValue 0..1 MS
* eligibility.extension[eligibilityValue].valueReference only Reference(NDIEligibilityGroup)
* location 0..* MS
* location only Reference(NDILocation)
* telecom 0..* MS
* extension contains NDIContactExtension named contact 0..1 MS
* providedBy 0..1 MS
* providedBy only Reference(NDIOrganization)

Profile: NDIEligibilityGroup
Parent: Group
Id: ndi-eligibility-group
Title: "NDI Eligibility Group"
Description: "A group resource describing en eligibility group"
* ^status = #active
* characteristic.code from NDIEligibilityCharacteristicsValueset (extensible)

Profile: VSEligibilityGroup
Parent: NDIEligibilityGroup
Id: VSEligibilityGroup
Title: "VS Eligibility Group"
Description: "A group resource describing en eligibility group for Vårdsök use case"
* characteristic ^slicing.discriminator.type = #value
* characteristic ^slicing.discriminator.path = "code"
* characteristic ^slicing.rules = #open
* characteristic ^slicing.description = "Slice based on eligibility.code value"
* characteristic ^slicing.ordered = false
* characteristic contains kon 0..1 and alder 0..1
* characteristic[kon].code = $SCTSE#184100006 "patientens kön"
* characteristic[kon].valueCodeableConcept from NDIEligibilitySexValueSet (required)
* characteristic[kon].valueCodeableConcept 1..1 MS
* characteristic[alder].code = $SCTSE#424144002 "aktuell kronologisk ålder"
* characteristic[alder].valueRange 1..1 MS

// Profile: VSHealthcareService
// Parent: NDIHealthcareService
// Id: vs-healthcare-service
// Title: "VS HealthcareService"
// Description: "A service provided by an organization, constrained for Vårdsök project"
// * eligibility ^slicing.discriminator.type = #value
// * eligibility ^slicing.discriminator.path = "code"
// * eligibility ^slicing.rules = #open
// * eligibility ^slicing.description = "Slice based on eligibility.code value"
// * eligibility ^slicing.ordered = false
// * eligibility contains kon 0..1 and alder 0..1
// * eligibility[kon].code = $SCT#184100006 "patientens kön"
// * eligibility[kon].extension[NDIEligibilityValueExtension].valueCodeableConcept from NDIEligibilitySexValueSet (required)
// * eligibility[kon].extension[NDIEligibilityValueExtension].valueCodeableConcept 1..1 MS
// * eligibility[alder].code = $SCT#424144002 "aktuell kronologisk ålder"
// * eligibility[alder].extension[NDIEligibilityValueExtension].valueRange 1..1