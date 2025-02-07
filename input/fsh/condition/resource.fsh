Profile: SGHICondition
Parent: Condition
Id: sghi-condition
Title: "SGHI Condition"
Description: "A customized FHIR Condition resource designed to standardize how medical diagnoses, problems, and health concerns are captured within SGHI systems."

* meta.profile = "https://fhir.slade360.co.ke/StructureDefinition/sghi-condition" (exactly)

* identifier 1..*
  * insert CommonIdentifierRules
* verificationStatus 1..1
* category 1..*
* severity 1..1
* subject only Reference(SGHIPatient)
* encounter 1..1 
* encounter only Reference(SGHIEncounter)
* code 1..1 MS
  * insert CommonLOINCTerminologyBindingRules
* bodySite 1..*
  * insert CommonLOINCTerminologyBindingRules
* recordedDate 1..1 MS
* onset[x] only dateTime
* abatement[x] only dateTime
* participant 1..*
  * actor only Reference(SGHIPatient)
* stage 0.. MS
  * assessment only Reference(SGHIDiagnosticReport or SGHIObservation)
* note 0.. MS