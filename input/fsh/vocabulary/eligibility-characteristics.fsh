CodeSystem: SENDIEligibilityCodeSystem
Id: sendi-eligibility-code-system
Title: "SENDIEligibilityCodeSystem"
Description: "Code system for eligiblity of healthcare service"
* ^experimental = false
* ^caseSensitive = true
* ^status = #active
* #referralRequired "Referral required" "A referral is required to use this service"
* #otherDescription "Other description" "Used for unstructured descriptions of the eligibility together with the eligibility.comment element."
* #specialReferralProcedure "Special referral procedure" "Used when a special referral procedure is noted, together with eligibility.comment element"
* #promissoryNote "Promissory note" "A note that the ordering party will pay the performing party for the services agreed"

CodeSystem: SENDIReferralTypeCodeSystem
Id: sendi-referral-type-code-system
Title: "SENDI Referral Type Code System"
Description: "Code system for type of referral required for a healthcare service"
* ^experimental = false
* ^caseSensitive = true
* ^status = #active
* #regionReferral "Region referral" "Definition..."
* #professionReferral "Profession referral" "Defintion..."

ValueSet: SENDITargetGroupEligibilityCharacteristicsValueset
Id: sendi-target-group-eligibility-characteristics-valueset
Title: "SENDI Target Group Eligibility characteristics valueset"
Description: "Value set for target group eligibility characteristics"
* ^status = #active
* $SCTSE#424144002 "aktuell kronologisk ålder"
* $SCTSE#184100006 "patientens kön"
* $SCTSE#60621009 "BMI"
* $SCTSE#302132005 "ASA-klass"

ValueSet: SENDIEligibilityCosenditionCharacteristicsValueset
Id: sendi-eligibility-cosendition-characteristics-valueset
Title: "SENDI Eligibility cosendition characteristics valueset"
Description: "Value set for eligibility cosendition characteristics"
* ^status = #active
* include codes from system SENDIEligibilityCodeSystem


ValueSet: SENDIEligibilityCharacteristicsValueset
Id: sendi-eligibility-characteristics-valueset
Title: "SENDI Eligibility characteristics valueset"
Description: "Value set for eligibility characteristics"
* ^status = #active
* include codes from valueset SENDIEligibilityCosenditionCharacteristicsValueset
* include codes from valueset SENDITargetGroupEligibilityCharacteristicsValueset

ValueSet: SENDIReferralTypeValueSet
Id: SENDIReferralTypeValueSet
Title: "SENDIReferralTypeValueSet"
Description: "Value set for type of referral"
* ^status = #active
* include codes from system SENDIReferralTypeCodeSystem