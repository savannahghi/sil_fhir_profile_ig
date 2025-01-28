Profile: SGHIEncounter
Parent: Encounter
Id: sghi-encounter
Title: "SGHI Encounter"
Description: "SGHI profile for Encounter"

* identifier 1..*
  * type from http://hl7.org/fhir/ValueSet/identifier-type (extensible)
  * use from http://hl7.org/fhir/ValueSet/identifier-use (required)
  * value 1..1
  * assigner 1..1
  * assigner only Reference(SGHIOrganization)
* priority 1..1
* status 1..1
* class 1..*
* appointment 0..*
* appointment only Reference(SGHIAppointment)
* class only CodeableConcept
* subject 1..1
* subject only Reference(SGHIPatient) 
* episodeOfCare 1..*
* episodeOfCare only Reference(SGHIEpisodeOfCare)
* serviceProvider 1..1
* serviceProvider only Reference(SGHIOrganization)
* participant 1..*
  * actor 1..1
  * actor only Reference(SGHIPatient)
* diagnosis 1..*
  * condition 1..
  * condition only CodeableReference(SGHICondition)


