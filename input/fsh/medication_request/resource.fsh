Profile: SGHIMedicationRequest
Parent: MedicationRequest
Id: sghi-medication-request
Title: "SGHI MedicationRequest profile"
Description: "SGHI's profile for FHIR MedicationRequest"

* identifier 1..*
  * use from http://hl7.org/fhir/ValueSet/identifier-use (required)
  * type from http://hl7.org/fhir/ValueSet/identifier-type (extensible)
  * value 1..1
* category 1..*
* priority 1..1
* subject only Reference(SGHIPatient)
* encounter only Reference(SGHIEncounter)
* authoredOn 1..1
* requester only Reference(SGHIPatient or SGHIOrganization)
* recorder 1..1
* reason only CodeableReference(SGHICondition) // do be changed to also include Observation profile 
* effectiveDosePeriod 1..1
* dosageInstruction 1..*
