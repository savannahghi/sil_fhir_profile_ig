Profile: SGHICondition
Parent: Condition
Id: condition
Title: "SGHI Condition"
Description: "A clinical condition, problem, diagnosis, or other event, situation, issue, or clinical concept that has risen to a level of concern."

* identifier 1..*
  * type from SGHIDefaultIdentifierTypes (required)
  * insert CommonIdentifierRules

* verificationStatus 1..1
* verificationStatus only SGHICodeableConcept

* category 1..*
* category only SGHICodeableConcept

* severity 1..1
* severity only SGHICodeableConcept
* severity from https://terminology.hl7.org/ValueSet-adverse-event-severity.html (required)
* severity ^binding.description = "Custom severity values intentionally override the HL7 preferred ConditionSeverity ValueSet."

* subject only SGHIReference
* subject only Reference(SGHIPatient)

* encounter 1..1
* encounter only SGHIReference
* encounter only Reference(SGHIEncounter)

* code 1..1
* code only SGHICodeableConcept
* code from ICD11Codes (required)

* bodySite only SGHICodeableConcept
* bodySite from ICD11Codes (required)

* recordedDate 1..1
* onset[x] only dateTime
* abatement[x] only dateTime

* stage.assessment only SGHIReference
* stage.assessment only Reference(SGHIDiagnosticReport or SGHIObservation)

* participant 1..*
  * actor only SGHIReference
  * actor only Reference(SGHIPatient or SGHIOrganization)

* bodySite only SGHICodeableConcept
* clinicalStatus only SGHICodeableConcept