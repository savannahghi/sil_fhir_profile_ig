Profile: SGHIServiceRequest
Parent: ServiceRequest
Id: sghi-service-request
Title: "SGHI ServiceRequest"
Description: "SGHI's profile for ServiceRequest"

* identifier 1..*
  * type from $identifier-type (required)
  * use from $identifier-use (required)
  * value 1..1
  * assigner 1..1
  * assigner only Reference(SGHIOrganization)

* basedOn only Reference(SGHIMedicationRequest or SGHIServiceRequest)
* category 1..*
* priority 1..1
* code 1..1
* subject 1..1
* subject only Reference(SGHIPatient)
* encounter 1..1
* encounter only Reference(SGHIEncounter)
* requester 1..1
* requester only Reference(SGHIOrganization)
* reason 1..
* reason only CodeableReference(SGHICondition or SGHIObservation or SGHIDiagnosticReport)
* performer 1..
* performer only Reference(SGHIOrganization)

