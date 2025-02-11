Profile: SGHICondition
Parent: Condition
Id: sghi-condition
Title: "SGHI Condition"
Description: "A clinical condition, problem, diagnosis, or other event, situation, issue, or clinical concept that has risen to a level of concern."

* meta.profile = "https://fhir.slade360.co.ke/StructureDefinition/sghi-condition" (exactly)

* identifier 1..*
  * insert CommonIdentifierRules

* verificationStatus 1..1
* verificationStatus only SGHICodeableConcept

* category 1..*
* category only SGHICodeableConcept

* severity 1..1
* severity only SGHICodeableConcept

* subject only Reference(SGHIPatient)
* encounter 1..1 
* encounter only Reference(SGHIEncounter)

* code 1..1
* code from https://icd.who.int/browse/2024-01/mms/en (required)

* bodySite only SGHICodeableConcept
  * coding.system from https://loinc.org/

* recordedDate 1..1
* onset[x] only dateTime
* abatement[x] only dateTime

* stage.assessment only Reference(SGHIDiagnosticReport or SGHIObservation)

* participant 1..*
  * actor only Reference(SGHIPatient or SGHIOrganization)
* bodySite only SGHICodeableConcept
