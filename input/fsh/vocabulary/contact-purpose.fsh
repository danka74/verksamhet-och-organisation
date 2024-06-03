CodeSystem: VOKContactPurposeCodeSystem
Id: vok-contact-purpose-code-system
Title: "VOKContactPurposeCodeSystem"
Description: "Code system to represent contact purposes"
* ^experimental = false
* ^caseSensitive = true
* ^status = #active
* #contractPerformerContact "Person at performing organization to contact regarding contract"

ValueSet: VOKContactPurposeValueSet
Id: vok-contact-purpose-value-set
Title: "VOKContactPurposeValueSet"
Description: "Value set for purpose of contact"
* ^status = #active
* include codes from system VOKContactPurposeCodeSystem
// In R5, this value set is preferred binding for purpose https://terminology.hl7.org/5.1.0/ValueSet-contactentity-type.html