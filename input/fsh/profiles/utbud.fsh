Profile: SENDIHealthcareService
Parent: HealthcareService
Id: sendi-healthcare-service
Title: "SENDI Service"
Description: "A service provided by an organization"
* ^status = #active
* identifier 1..* MS
* type 1..1 MS
* category 0..*
* name 0..1 MS // beskrivning? 0..*
* comment 0..1 MS
* extension contains SENDIHealthcareServiceEncounterMeansExtension named encounterMeans 1..1 MS
* extension contains SENDIHealthcareServicePeriodExtension named period 1..1 MS
* availableTime 0..* MS
* notAvailable 0..* MS
* eligibility 0..* MS
* eligibility.extension contains SENDIEligibilityValueExtension named eligibilityValue 0..1 MS
* eligibility.extension[eligibilityValue].valueReference only Reference(SENDIEligibilityGroup)
* location 0..* MS
* location only Reference(SENDILocation)
* telecom 0..* MS
* extension contains SENDIContactExtension named contact 0..1 MS
* providedBy 0..1 MS
* providedBy only Reference(SENDIOrganization)

Profile: SENDIEligibilityGroup
Parent: Group
Id: sendi-eligibility-group
Title: "SENDI Eligibility Group"
Description: "A group resource describing en eligibility group"
* ^status = #active
* characteristic.code from SENDIEligibilityCharacteristicsValueset (extensible)

Profile: VSEligibilityGroup
Parent: SENDIEligibilityGroup
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
* characteristic[kon].valueCodeableConcept from SENDIEligibilitySexValueSet (required)
* characteristic[kon].valueCodeableConcept 1..1 MS
* characteristic[alder].code = $SCTSE#424144002 "aktuell kronologisk ålder"
* characteristic[alder].valueRange 1..1 MS

// Profile: VSHealthcareService
// Parent: SENDIHealthcareService
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
// * eligibility[kon].extension[SENDIEligibilityValueExtension].valueCodeableConcept from SENDIEligibilitySexValueSet (required)
// * eligibility[kon].extension[SENDIEligibilityValueExtension].valueCodeableConcept 1..1 MS
// * eligibility[alder].code = $SCT#424144002 "aktuell kronologisk ålder"
// * eligibility[alder].extension[SENDIEligibilityValueExtension].valueRange 1..1