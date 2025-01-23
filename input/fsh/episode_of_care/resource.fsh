Profile: SGHIEpisodeOfCare
Parent:  EpisodeOfCare
Description: "An interaction between a patient and the healthcare provider."
* identifier 1..*
  * type from SGHIEpisodeOfCareTypeIndentifierType (extensible)
  * use from SGHIEpisodeOfCareUseIndentifierType (required)
  * value 1..1
* reason 1..*
  * value only CodeableReference(SGHICondition) // This could be also an Observation to be added in the future
* diagnosis 1..*
  * condition only CodeableReference(SGHICondition)
* period 1..1
* patient only Reference(SGHIPatient)
* managingOrganization only Reference(SGHIOrganization)
