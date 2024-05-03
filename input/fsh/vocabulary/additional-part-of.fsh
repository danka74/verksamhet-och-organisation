CodeSystem: VOKOrganizationAdditionalPartOfTypeCodeSystem
Id: vok-organization-additional-part-of-type-code-system
Title: "VOK Organization Additional PartOf Type CodeSystem"
Description: "text"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* #ownedBy "Owner" "This organization is owned by the referenced organization"

ValueSet: VOKOrganizationAdditionalPartOfTypeValueSet
Id: vok-organization-additional-part-of-type-value-set
Title: "VOK Organization Additional PartOf Type ValueSet"
Description: "text"
* ^status = #active
* include codes from system VOKOrganizationAdditionalPartOfTypeCodeSystem

