Profile: SGHIEncounter
Parent: Encounter
Id: sghi-encounter
Title: "SGHI Encounter"
Description: "An interaction between a patient and healthcare provider(s) for the purpose of providing healthcare service(s) or assessing the health status of a patient. Encounter is primarily used to record information about the actual activities that occurred, where Appointment is used to record planned activities."

* meta.profile = "https://fhir.slade360.co.ke/StructureDefinition/sghi-encounter" (exactly)

* identifier 1..*
  * insert CommonIdentifierRules

* class 1..* MS
* class from SGHIEncounterClass (required)

* priority 1..1
* priority from SGHIActPriority (required)
* priority only SGHICodeableConcept

* type only SGHICodeableConcept
* subjectStatus only SGHICodeableConcept
* status 1..1

* class 1..*
* class only SGHICodeableConcept

* appointment 0..*
* appointment only SGHIReference
* appointment only Reference(SGHIAppointment)

* subject 1..1
* subject only SGHIReference
* subject only Reference(SGHIPatient) 

* episodeOfCare 1..*
* episodeOfCare only SGHIReference
* episodeOfCare only Reference(SGHIEpisodeOfCare)

* serviceProvider 1..1
* serviceProvider only SGHIReference
* serviceProvider only Reference(SGHIOrganization)

* participant 1..*
  * actor 1..1
  * actor only SGHIReference
  * actor only Reference(SGHIPatient)
  * type only SGHICodeableConcept

* diagnosis 1..*
  * condition 1..
  * condition only SGHICodeableReference
  * condition only CodeableReference(SGHICondition)

* basedOn only SGHIReference
* basedOn only Reference(SGHIMedicationRequest or SGHIServiceRequest)

* partOf only SGHIReference
* partOf only Reference(SGHIEncounter)

* reason.value only SGHICodeableReference
* reason.value only CodeableReference(SGHICondition or SGHIObservation or SGHIDiagnosticReport)

* admission.origin only SGHIReference
* admission.origin only Reference(SGHILocation or SGHIOrganization)

* admission.destination only SGHIReference
* admission.destination only Reference(SGHILocation or SGHIOrganization)

* location.location only SGHIReference
* location.location only Reference(SGHILocation)
