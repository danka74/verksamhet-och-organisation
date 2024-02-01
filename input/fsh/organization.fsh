Logical: VOKOrganizationLogical
Id: vok-organization-logical-model
Title: "Organization logical model"
Description: "Organization in VOK logical model"
Characteristics: #can-bind
* giltigFrom 1..1 dateTime "organisationen är aktiv?? från och med"
* giltigTill 0..1 dateTime "organisationen är aktiv?? till"
* id 1..* string "id"
* juridiskForm 1..1 Coding "juridisk form"
* popularnamn 0..* string "populärnamn"
* registreratNamn 1..1 string "registrerat namn"
* status 1..1 code "status"
* agarkategori 1..1 Coding "ägarkategori"


Profile: VOKOrganization
Parent: http://hl7.se/fhir/ig/base/StructureDefinition/SEBaseOrganization
Id: vok-organization
Title: "VOK organization"
Description: "organisation i VOK"
* identifier 1..*
* type 0..*
* extension contains VOKOrganizationStatusExtension named active 1..1

CodeSystem: VOKOrganizationStatusCS
Id: vok-organization-status-cs
Title: "VOK code system for organization status"
Description: "VOK code system for organization status"
* #active "aktiv"
* #suspended "vilande"
* #deregistrerd "avvecklat"

ValueSet: VOKOrganizationStatusVS
Id: vok-organization-status-vs
Title: "VOK value set for organization"
Description: "VOK value set for organization"
* include codes from system VOKOrganizationStatusCS

Extension: VOKOrganizationStatusExtension
Title: "VOK extension for organization status (active, suspended, 'avvecklat')"
* ^status = #active
* ^experimental = false
* ^context[0].type = #element
* ^context[0].expression = "Organization"
* value[x] only code
* valueCode from VOKOrganizationStatusVS

Mapping: VOKOrganizationProfileToLogical
Source: VOKOrganization
Target: "VOKOrganizationLogical"
* identifier -> "vok-organization-logical-model.id"
// * giltigFrom 
// * giltigTill 
// * juridiskForm 
* name -> "vok-organization-logical-model.registreratNamn"
* alias -> "popularnamn"
// * status 
// * agarkategori 