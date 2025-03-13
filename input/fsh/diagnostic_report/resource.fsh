Profile: SGHIDiagnosticReport
Parent: DiagnosticReport
Id: sghi-diagnosticreport
Title: "SGHI DiagnosticReport"
Description: "SGHI's profile for DiagnosticReport"

* identifier 1..*
  * insert CommonIdentifierRules

* basedOn only SGHIReference
* basedOn only Reference(SGHIMedicationRequest or SGHIServiceRequest)

* code only SGHICodeableConcept


* category 1..*
* category only SGHICodeableConcept

* subject 1..1
* subject only SGHIReference
* subject only Reference(SGHIPatient)

* encounter 1..1
* encounter only SGHIReference
* encounter only Reference(SGHIEncounter)

* effective[x] only dateTime
* effectiveDateTime 1..1

* issued 1..1

* performer 1..*
* performer only SGHIReference
* performer only Reference(SGHIOrganization)

* resultsInterpreter 1..*
* resultsInterpreter only SGHIReference
* resultsInterpreter only Reference(SGHIOrganization)

* result 0..*
* result only SGHIReference
* result only Reference(SGHIObservation)

* supportingInfo 0..*
  * reference only SGHIReference
  * reference only Reference(SGHIObservation or SGHIDiagnosticReport)

* conclusionCode only SGHICodeableConcept
* conclusionCode from SGHIDiagnosticConclusionICD11 (extensible)
