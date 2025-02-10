Profile: SGHIMedicationRequest
Parent: MedicationRequest
Id: sghi-medication-request
Title: "SGHI MedicationRequest"
Description: "SGHI's profile for MedicationRequest"
* meta.profile = "https://fhir.slade360.co.ke/StructureDefinition/sghi-medication-request" (exactly)

* identifier 1..*
  * insert CommonIdentifierRules
  * assigner 1..1
  * assigner only Reference(SGHIOrganization)
* basedOn only Reference(SGHIServiceRequest or SGHIMedicationRequest)
* priorPrescription only Reference(SGHIMedicationRequest)
* medication only CodeableReference(SGHIMedication)
* informationSource only Reference(SGHIPatient or SGHIOrganization)
* category 1..*
* priority 1..1
* subject only Reference(SGHIPatient)
* encounter 1..1
* dispenseRequest.dispenser only Reference(SGHIOrganization)
* encounter only Reference(SGHIEncounter)
* authoredOn 1..1
* requester 1..1
* requester only Reference(SGHIPatient or SGHIOrganization)
* recorder 1..1
* reason 1..1
* reason only CodeableReference(SGHICondition or SGHIObservation)
* effectiveDosePeriod 1..1
* dosageInstruction 1..*
