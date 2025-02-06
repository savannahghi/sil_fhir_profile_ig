Profile: SGHIEpisodeOfCare
Parent:  EpisodeOfCare
Title: "SGHI EpisodeOfCare"
Description: "An interaction between a patient and the healthcare provider."
* identifier 1..*
  * insert CommonIdentifierRules
* reason 1..*
  * value only CodeableReference(SGHICondition) // This could be also an Observation to be added in the future
* diagnosis 1..*
  * condition 1..1
  * condition only CodeableReference(SGHICondition)
* period 1..1
* patient 1..1
* patient only Reference(SGHIPatient)
* managingOrganization 1..1
* managingOrganization only Reference(SGHIOrganization)
