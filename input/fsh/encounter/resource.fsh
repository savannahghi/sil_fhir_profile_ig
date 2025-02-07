Profile: SGHIEncounter
Parent: Encounter
Id: sghi-encounter
Title: "SGHI Encounter"
Description: "SGHI profile for Encounter"

* meta.profile = "https://fhir.slade360.co.ke/StructureDefinition/sghi-encounter" (exactly)

* identifier 1..*
  * insert CommonIdentifierRules
  * assigner 1..1
  * assigner only Reference(SGHIOrganization)
* class 1..* MS
* class from SGHIEncounterClass (required)
* priority 1..1
* priority from SGHIActPriority (required)
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


