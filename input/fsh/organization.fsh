Logical: VOKOrganizationLogical
Id: vok-organization-logical-model
Title: "Organization logical model"
Description: "Organization in VOK logical model"
Characteristics: #can-bind
* giltigFrom 1..1 dateTime "organisationen är aktiv/inaktiv/vilande från och med"
* giltigTill 0..1 dateTime "organisationen är aktiv etc. till"
* id 1..* string "id"
* juridiskForm 1..1 Coding "juridisk form" // är detta företagsregistrets kodverk? https://www.scb.se/vara-tjanster/bestall-data-och-statistik/foretagsregistret/variabelbeskrivning/#J"
* popularnamn 0..* string "populärnamn"
* registreratNamn 1..1 string "registrerat namn"
* status 1..1 code "status (aktivt, ej aktivt)"
* agarkategori 1..1 Coding "ägarkategori" /*
är detta företagsregistrets kodverk? (Statligt; Kommunalt; Region; Privat svenskt, ej koncern; Privat svenskt, koncern; Utlandsägda)
HSA har bara en kod för privat.*/ 


Profile: VOKOrganization
Parent: http://hl7.se/fhir/ig/base/StructureDefinition/SEBaseOrganization
Id: vok-organization
Title: "VOK organization"
Description: "organisation i VOK"
* identifier 1..*
* type 0..* // skulle behövas en slice på type för olika kodverk
* extension contains VOKOrganizationActiveStatusExtension named organizationActive 1..1
* extension contains http://hl7.org/fhir/StructureDefinition/organization-period named period 1..1
* extension[period].valuePeriod.start 1..1
* extension[period].valuePeriod.end 0..1

Mapping: VOKOrganizationProfileToLogical
Source: VOKOrganization
Target: "VOKOrganizationLogical"
* identifier -> "id"
* extension[period].valuePeriod.start -> "giltigFrom"
* extension[period].valuePeriod.end -> "giltigTill"
// * juridiskForm 
* name -> "egistreratNamn"
* alias -> "popularnamn"
// * status 
// * agarkategori 

Extension: VOKOrganizationActiveStatusExtension
Title: "VOK extension for organization status (active=-true, inactive=false)"
* ^status = #active
* ^experimental = false
* ^context[0].type = #element
* ^context[0].expression = "Organization"
* value[x] only boolean

Extension: VOKOrganizationLegalFormExtension
Title: "VOK extension for organization status (active=-true, inactive=false)"
* ^status = #active
* ^experimental = false
* ^context[0].type = #element
* ^context[0].expression = "Organization"
* value[x] only Coding
* valueCoding from SCBLegalFormValueSet

Extension: VOKOrganizationOwnershipExtension
Title: "VOK extension for organization status (active=-true, inactive=false)"
* ^status = #active
* ^experimental = false
* ^context[0].type = #element
* ^context[0].expression = "Organization"
* value[x] only Coding
* valueCoding from SCBOwnershipValueSet

CodeSystem: SCBLegalFormCodeSystem
* #10	"Fysiska personer"
* #21	"Enkla bolag"
* #22	"Partrederier"
* #23	"Värdepappersfonder"
* #31	"Handelsbolag, kommanditbolag"
* #41	"Bankaktiebolag"
* #42	"Försäkringsaktiebolag"
* #43	"Europabolag"
* #49	"Övriga aktiebolag"
* #51	"Ekonomiska föreningar"
* #53	"Bostadsrättsföreningar"
* #54	"Kooperativ hyresrättsförening"
* #55	"Europakooperativ, grupperingar"
* #61	"Ideella föreningar"
* #62	"Samfälligheter"
* #63	"Registrerade trossamfund"
* #71	"Familjestiftelser"
* #72	"Övriga stiftelser och fonder"
* #81	"Statliga enheter"
* #82	"Kommuner"
* #83	"Kommunalförbund"
* #84	"Landsting"
* #87	"Off. korporationer o anstalter"
* #88	"Hypoteksföreningar"
* #91	"Oskiftade dödsbon"
* #92	"Ömsesidiga försäkringsbolag"
* #93	"Sparbanker"
* #94	"Understöds-, Försäkringsfören."
* #95	"Arbetslöshetskassor"
* #96	"Utländska juridiska personer"
* #98	"Övr sv jur pers, enl särsk lag"
* #99	"Juridisk form ej utredd"

ValueSet: SCBLegalFormValueSet
* include codes from system SCBLegalFormCodeSystem

CodeSystem: SCBOwnershipCodeSystem
// HSA använder OID 1.2.752.129.2.2.1.14
* #Statlig "Statligt" // finns i HSA (i utrum!)
* #Kommun "Kommunalt" // finns i HSA men som substantiv
* #Region "Region" // finns i HSA - samma kod!
* #psnk "Privat svenskt, ej koncern"
* #psk "Privat svenskt, koncern"
* #u "Utlandsägda"

ValueSet: SCBOwnershipValueSet
* include codes from system SCBOwnershipCodeSystem