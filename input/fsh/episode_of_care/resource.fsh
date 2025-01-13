Profile: SGHIEpisodeOfCare
Parent:  EpisodeOfCare
Description: "An interaction between a patient and the healthcare provider."
* identifier 1..*
  * type from http://hl7.org/fhir/ValueSet/identifier-type (extensible)
  * use from http://hl7.org/fhir/ValueSet/identifier-use (required)
  * value 1..1
* period 1..1
* patient only Reference(SGHIPatient)
// * managingOrganization 1..1