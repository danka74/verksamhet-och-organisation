CodeSystem: SENDIOrganizationAdditionalRelationshipTypeCodeSystem
Id: sendi-organization-additional-relationship-type-code-system
Title: "SENDI Organization Additional Relationship Type CodeSystem"
Description: "text"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* #ownedBy "Owner" "This organization is owned by the referenced organization"
* #careProvider "Care provider" "The care provider organization of which the organizational unit is a part" // ska denna vara med, eller räcker det med ägare? Hur ser det ut för socialtjänsten?

ValueSet: SENDIOrganizationAdditionalRelationshipTypeValueSet
Id: sendi-organization-additional-relationship-type-value-set
Title: "SENDI Organization Additional Relationship Type ValueSet"
Description: "text"
* ^status = #active
* include codes from system SENDIOrganizationAdditionalRelationshipTypeCodeSystem

