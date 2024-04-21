CodeSystem: VOKContactPurposeCodeSystem
Id: vok-contact-purpose-code-system
Title: "VOKContactPurposeCodeSystem"
Description: "Code system to represent contact purposes"
* ^experimental = false
* ^caseSensitive = true
* #contractPerformerContact "Person at performing organization to contact regarding contract"

ValueSet: VOKOrganizationAffiliationContactPurposeValueSet
Id: VOKOrganizationAffiliationContactPurposeValueSet
Title: "VOKOrganizationAffiliationContactPurposeValueSet"
Description: "Value set for purpose of contact"
* include codes from system VOKContactPurposeCodeSystem
// In R5, this value set is preferred binding for purpose https://terminology.hl7.org/5.1.0/ValueSet-contactentity-type.html