Profile: SGHIServiceRequest
Parent: ServiceRequest
Id: sghi-service-request
Title: "SGHI ServiceRequest"
Description: "SGHI's profile for ServiceRequest"

* identifier 1..*
  * type from http://hl7.org/fhir/ValueSet/identifier-type (extensible)
  * use from http://hl7.org/fhir/ValueSet/identifier-use (required)
  * value 1..1
  * assigner only Reference(SGHIOrganization)
* basedOn only Reference(SGHIMedicationRequest or SGHIServiceRequest)
* category 1..*
* priority 1..1
* code 1..1
* subject only Reference(SGHIPatient)
* encounter only Reference(SGHIEncounter)
* requester only Reference(SGHIOrganization)
* reason only CodeableReference(SGHICondition or SGHIObservation or SGHIDiagnosticReport)

