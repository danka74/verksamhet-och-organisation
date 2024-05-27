CodeSystem: VOKEligibilityCodeSystem
Id: vok-eligibility-code-system
Title: "VOKEligibilityCodeSystem"
Description: "Code system for eligiblity of healthcare service"
* ^experimental = false
* ^caseSensitive = true
* ^status = #active
* #referralRequired "Referral required" "A referral is required to use this service"
* #otherDescription "Other description" "Used for unstructured descriptions of the eligibility together with the eligibility.comment element."
* #specialReferralProcedure "Special referral procedure" "Used when a special referral procedure is noted, together with eligibility.comment element"
* #promissoryNote "Promissory note" "A note that the ordering party will pay the performing party for the services agreed"

CodeSystem: VOKReferralTypeCodeSystem
Id: vok-referral-type-code-system
Title: "VOK Referral Type Code System"
Description: "Code system for type of referral required for a healthcare service"
* ^experimental = false
* ^caseSensitive = true
* ^status = #active
* #regionReferral "Region referral" "Definition..."
* #professionReferral "Profession referral" "Defintion..."

ValueSet: VOKTargetGroupEligibilityCharacteristicsValueset
Id: vok-target-group-eligibility-characteristics-valueset
Title: "VOK Target Group Eligibility characteristics valueset"
Description: "Value set for target group eligibility characteristics"
* ^status = #active
* $SCTSE#424144002 "aktuell kronologisk ålder"
* $SCTSE#184100006 "patientens kön"
* $SCTSE#60621009 "BMI"
* $SCTSE#302132005 "ASA-klass"

ValueSet: VOKEligibilityConditionCharacteristicsValueset
Id: vok-eligibility-condition-characteristics-valueset
Title: "VOK Eligibility condition characteristics valueset"
Description: "Value set for eligibility condition characteristics"
* ^status = #active
* include codes from system VOKEligibilityCodeSystem


ValueSet: VOKEligibilityCharacteristicsValueset
Id: vok-eligibility-characteristics-valueset
Title: "VOK Eligibility characteristics valueset"
Description: "Value set for eligibility characteristics"
* ^status = #active
* include codes from valueset VOKEligibilityConditionCharacteristicsValueset
* include codes from valueset VOKTargetGroupEligibilityCharacteristicsValueset

ValueSet: VOKReferralTypeValueSet
Id: VOKReferralTypeValueSet
Title: "VOKReferralTypeValueSet"
Description: "Value set for type of referral"
* ^status = #active
* include codes from system VOKReferralTypeCodeSystem