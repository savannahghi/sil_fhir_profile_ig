Profile: SGHIDiagnosticReport
Parent: DiagnosticReport
Id: sghi-diagnostic-report
Title: "SGHI DiagnosticReport"
Description: "SGHI's profile for DiagnosticReport"

* identifier 1..*
  * insert CommonIdentifierRules
  * assigner only Reference(SGHIOrganization)
* basedOn only Reference(SGHIMedicationRequest or SGHIServiceRequest)
* category 1..*
* subject 1..1
* subject only Reference(SGHIPatient)
* encounter 1..1
* encounter only Reference(SGHIEncounter)
* performer 1..*
* performer only Reference(SGHIOrganization)
* result 0..*
* supportingInfo 0..*
  * reference only Reference(SGHIObservation or SGHIDiagnosticReport)

