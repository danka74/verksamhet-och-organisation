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
* availableTime 0..* MS
* notAvailable 0..* MS
* eligibility 0..* MS
* eligibility.extension contains VOKEligibilityValueExtension named eligibilityValue 0..1 MS
* eligibility.code from VOKEligibilityCharacteristicsValueset (extensible)
* location 0..* MS
* location only Reference(VOKLocation)
* telecom 0..* MS
* providedBy 0..1 MS
* providedBy only Reference(VOKOrganization)