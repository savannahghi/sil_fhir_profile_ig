Profile: SGHIMedicationRequest
Parent: MedicationRequest
Id: sghi-medication-request
Title: "SGHI MedicationRequest"
Description: "SGHI's profile for MedicationRequest"

* identifier 1..*
  * insert CommonIdentifierRules
* category 1..*
* priority 1..1
* subject only Reference(SGHIPatient)
* encounter 1..1
* encounter only Reference(SGHIEncounter)
* authoredOn 1..1
* requester 1..1
* requester only Reference(SGHIPatient or SGHIOrganization)
* recorder 1..1
* reason 1..1
* reason only CodeableReference(SGHICondition) // do be changed to also include Observation profile 
* effectiveDosePeriod 1..1
* dosageInstruction 1..*
