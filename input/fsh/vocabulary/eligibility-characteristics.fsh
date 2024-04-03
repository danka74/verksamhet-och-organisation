CodeSystem: VOKEligibilityCodeSystem
Id: vok-eligibility-code-system
Title: "VOKEligibilityCodeSystem"
Description: "Code system for eligiblity of healthcare service"
* ^experimental = false
* ^caseSensitive = true
* #referralRequired "Referral required" "A referral is required to use this service"

ValueSet: VOKEligibilityCharacteristicsValueset
Id: vok-eligibility-characteristics-valueset
Title: "VOK Eligibility characteristics valueset"
Description: "Value set for eligibility characteristics"
* include codes from system VOKEligibilityCodeSystem
* $SCT#424144002 "aktuell kronologisk ålder"
* $SCT#184100006 "patientens kön"
* $SCT#60621009 "BMI"
* $SCT#302132005 "ASA-klass"
