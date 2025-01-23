Profile: SGHIEncounter
Parent: Encounter
Id: sghi-encounter
Title: "SGHI Encounter"
Description: "SGHI profile for Encounter resource"

* identifier 1..*
  * type from http://hl7.org/fhir/ValueSet/identifier-type (extensible)
  * use from http://hl7.org/fhir/ValueSet/identifier-use (required)
  * value 1..1
  * assigner only Reference(SGHIOrganization)
* priority 1..1
* status 1..1
* class 1..*
* class only CodeableConcept
* subject only Reference(SGHIPatient)
* episodeOfCare only Reference(SGHIEpisodeOfCare)
* serviceProvider only Reference(SGHIOrganization)
* participant 1..*
  * actor only Reference(SGHIPatient)
* diagnosis 1..*
  * condition only 	CodeableReference(SGHICondition)


