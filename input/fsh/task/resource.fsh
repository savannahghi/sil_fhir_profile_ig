Profile: SGHITask
Parent: Task
Id: sghi-task
Title: "SGHI Task"
Description: "SGHI's profile for Task"

* identifier 1..*
  * insert CommonIdentifierRules
  * assigner 1..1
  * assigner only Reference(SGHIOrganization)

* businessStatus 1..1
* priority 1..1

* authoredOn 1..1
* lastModified 1..1
* for 1..1
* for only Reference(SGHIPatient)
* owner 1..1
* owner only Reference(SGHIOrganization)

* performer 0..1
  * actor 1..1
  * actor only Reference(SGHIOrganization)

* requester 1..1
* requester only Reference(SGHIPatient or SGHIOrganization)
* requestedPerformer 1..
* requestedPerformer only CodeableReference(SGHIOrganization)

* restriction 0..
  * recipient only Reference(SGHIPatient)

* input 1..*
  * type 1..1
  * value[x] 1..1

* output 1..*
  * type 1..1
  * value[x] 1..1

* obeys task-lastModified
* encounter 1..1
* encounter only Reference(SGHIEncounter)

Invariant: task-lastModified
Description: "Last modified date must be greater than or equal to authored-on date"
Expression: "lastModified.empty() or authoredOn.empty() or lastModified >= authoredOn"
Severity: #error