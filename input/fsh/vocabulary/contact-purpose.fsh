CodeSystem: SENDIContactPurposeCodeSystem
Id: sendi-contact-purpose-code-system
Title: "SENDIContactPurposeCodeSystem"
Description: "Code system to represent contact purposes"
* ^experimental = false
* ^caseSensitive = true
* ^status = #active
* #contractPerformerContact "Person at performing organization to contact regarding contract"

ValueSet: SENDIContactPurposeValueSet
Id: sendi-contact-purpose-value-set
Title: "SENDIContactPurposeValueSet"
Description: "Value set for purpose of contact"
* ^status = #active
* include codes from system SENDIContactPurposeCodeSystem
// In R5, this value set is preferred bisending for purpose https://terminology.hl7.org/5.1.0/ValueSet-contactentity-type.html