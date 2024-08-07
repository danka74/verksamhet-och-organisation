CodeSystem: NDIOrganizationAdditionalRelationshipTypeCodeSystem
Id: ndi-organization-additional-relationship-type-code-system
Title: "NDI Organization Additional Relationship Type CodeSystem"
Description: "text"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* #ownedBy "Owner" "This organization is owned by the referenced organization"
* #careProvider "Care provider" "The care provider organization of which the organizational unit is a part" // ska denna vara med, eller räcker det med ägare? Hur ser det ut för socialtjänsten?

ValueSet: NDIOrganizationAdditionalRelationshipTypeValueSet
Id: ndi-organization-additional-relationship-type-value-set
Title: "NDI Organization Additional Relationship Type ValueSet"
Description: "text"
* ^status = #active
* include codes from system NDIOrganizationAdditionalRelationshipTypeCodeSystem

