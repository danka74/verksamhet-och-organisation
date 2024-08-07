CodeSystem: NDIContactPurposeCodeSystem
Id: ndi-contact-purpose-code-system
Title: "NDIContactPurposeCodeSystem"
Description: "Code system to represent contact purposes"
* ^experimental = false
* ^caseSensitive = true
* ^status = #active
* #contractPerformerContact "Person at performing organization to contact regarding contract"

ValueSet: NDIContactPurposeValueSet
Id: ndi-contact-purpose-value-set
Title: "NDIContactPurposeValueSet"
Description: "Value set for purpose of contact"
* ^status = #active
* include codes from system NDIContactPurposeCodeSystem
// In R5, this value set is preferred binding for purpose https://terminology.hl7.org/5.1.0/ValueSet-contactentity-type.html