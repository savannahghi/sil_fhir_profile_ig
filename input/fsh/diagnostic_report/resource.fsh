Profile: SGHIDiagnosticReport
Parent: DiagnosticReport
Id: sghi-diagnostic-report
Title: "SGHI DiagnosticReport"
Description: "SGHI's profile for DiagnosticReport"

* identifier 1..*
  * type from http://hl7.org/fhir/ValueSet/identifier-type (extensible)
  * use from http://hl7.org/fhir/ValueSet/identifier-use (required)
  * value 1..1
  * assigner only Reference(SGHIOrganization)
* basedOn only Reference(SGHIMedicationRequest or SGHIServiceRequest)
* category 1..*
* subject only Reference(SGHIPatient)
* encounter only Reference(SGHIEncounter)
* performer only Reference(SGHIOrganization)
* supportingInfo 0..*
  * reference only Reference(SGHIObservation or SGHIDiagnosticReport)

