Profile: SGHIEpisodeOfCare
Parent:  EpisodeOfCare
Description: "An interaction between a patient and the healthcare provider."
* identifier 1..*
  * type from SGHIEpisodeOfCareTypeIndentifierType (extensible)
  * use from SGHIEpisodeOfCareUseIndentifierType (required)
  * value 1..1
* reason 0..*
  * use from SGHIEpisodeOfCareReasonCode (required)
* diagnosis 0..*
  * condition from SGHIEpisodeOfCareDiagnosisCondition (required)
* period 1..1
* patient only Reference(SGHIPatient)
* managingOrganization 1..1
