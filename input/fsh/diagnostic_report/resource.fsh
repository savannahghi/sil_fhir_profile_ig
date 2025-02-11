Profile: SGHIDiagnosticReport
Parent: DiagnosticReport
Id: sghi-diagnostic-report
Title: "SGHI DiagnosticReport"
Description: "SGHI's profile for DiagnosticReport"

* meta.profile = "https://fhir.slade360.co.ke/StructureDefinition/sghi-diagnostic-report" (exactly)

* identifier 1..*
  * insert CommonIdentifierRules
  * assigner only Reference(SGHIOrganization)

* basedOn only Reference(SGHIMedicationRequest or SGHIServiceRequest)
* category 1..*

* subject 1..1
* subject only Reference(SGHIPatient)

* encounter 1..1
* encounter only Reference(SGHIEncounter)

* effective[x] only dateTime
* effectiveDateTime 1..1

* issued 1..1

* performer 1..*
* performer only Reference(SGHIOrganization)

* resultsInterpreter 1..*
* resultsInterpreter only Reference(SGHIOrganization)

* result 0..*
* result only Reference(SGHIObservation)

* supportingInfo 0..*
  * reference only Reference(SGHIObservation or SGHIDiagnosticReport)
* conclusionCode from SGHIDiagnosticConclusionICD11 (extensible)
