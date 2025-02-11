Profile: SGHIServiceRequest
Parent: ServiceRequest
Id: sghi-service-request
Title: "SGHI ServiceRequest"
Description: "ServiceRequest represents an order or proposal or plan, as distinguished by ServiceRequest.intent to perform a diagnostic or other service on or for a patient. ServiceRequest represents a proposal or plan or order for a service to be performed that would result in a Procedure or DiagnosticReport, which in turn may reference one or more Observations, which summarize the performance of the procedures and associated documentation such as observations, images, findings that are relevant to the treatment/management of the subject. This resource may be used to share relevant information required to support a referral or a transfer of care request from one practitioner or organization to another when a patient is required to be referred to another provider for a consultation /second opinion and/or for short term or longer term management of one or more health issues or problems."

* meta.profile = "https://fhir.slade360.co.ke/StructureDefinition/sghi-service-request" (exactly)
* identifier 1..*
  * insert CommonIdentifierRules

* basedOn only Reference(SGHIMedicationRequest or SGHIServiceRequest)
* replaces only Reference(SGHIServiceRequest)

* category 1..*
* category from SGHIServiceRequestCategory

* priority 1..1
* code 1..1
* code only SGHICodeableReference
* code from http://loinc.org (required)
* subject 1..1
* subject only Reference(SGHIPatient)

* encounter 1..1
* encounter only Reference(SGHIEncounter)

* authoredOn 1..1

* requester 1..1
* requester only Reference(SGHIOrganization or SGHIPatient)

* reason 1..*
* reason only CodeableReference(SGHICondition or SGHIObservation or SGHIDiagnosticReport)

* performer 1..*
* performer only Reference(SGHIOrganization)

* location only CodeableReference(SGHILocation)
