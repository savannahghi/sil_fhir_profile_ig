Profile: SGHITask
Parent: Task
Id: sghi-task
Title: "SGHI Task"
Description: "SGHI's profile for Task"
* meta.profile = "{{HAPI_FHIR_BASE_URL}}/StructureDefinition/sghi-task" (exactly)

* identifier 1..*
  * insert CommonIdentifierRules
* businessStatus 1..1
* priority 1..1

* authoredOn 1..1
* lastModified 1..1

* for 1..1
* for only SGHIReference
* for only Reference(SGHIPatient)

* owner 1..1
* owner only SGHIReference
* owner only Reference(SGHIOrganization)

* performer 0..1
  * actor 1..1
  * actor only SGHIReference
  * actor only Reference(SGHIOrganization)

* requester 1..1
* requester only SGHIReference
* requester only Reference(SGHIPatient or SGHIOrganization)

* requestedPerformer 1..
* requestedPerformer only SGHICodeableReference
* requestedPerformer only CodeableReference(SGHIOrganization)

* restriction 0..
  * recipient only SGHIReference
  * recipient only Reference(SGHIPatient)

* input 1..*
  * type 1..1
  * type only SGHICodeableConcept
  * value[x] 1..1
  * valueCodeableConcept only SGHICodeableConcept
  * valueCodeableReference only SGHICodeableReference
  * valueDosage only SGHIDosage

* output 1..*
  * type 1..1
  * type only SGHICodeableConcept
  * value[x] 1..1
  * valueCodeableConcept only SGHICodeableConcept
  * valueCodeableReference only SGHICodeableReference
  * valueDosage only SGHIDosage
* obeys task-lastModified

* encounter 1..1
* encounter only SGHIReference
* encounter only Reference(SGHIEncounter)

* partOf only SGHIReference
* partOf only Reference(SGHITask)
* businessStatus only SGHICodeableConcept

Invariant: task-lastModified
Description: "Last modified date must be greater than or equal to authored-on date"
Expression: "lastModified.empty() or authoredOn.empty() or lastModified >= authoredOn"
Severity: #error