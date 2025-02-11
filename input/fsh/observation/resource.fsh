Profile: SGHIObservation
Parent: Observation
Id: sghi-observation
Title: "SGHI Observation"
Description: "Measurements and simple assertions made about a patient, device or other subject."

* meta.profile = "https://fhir.slade360.co.ke/StructureDefinition/sghi-observation" (exactly)

* identifier 1..*
  * insert CommonIdentifierRules
  * assigner only Reference(SGHIOrganization)
* category 1..1
* code only SGHICodeableConcept
* code 1..1
* code.coding from https://loinc.org/ (required)
* subject 1..1
* subject only Reference(SGHIPatient)
* encounter 1..1
* encounter only Reference(SGHIEncounter)
* performer 1..*
* performer only Reference(SGHIOrganization or SGHIPatient)
* effective[x] only dateTime
* effectiveDateTime 1..1
* issued 1..1
* interpretation 0..*
* basedOn only Reference(SGHIServiceRequest or SGHIMedicationRequest)
* bodySite from https://icd.who.int/browse/2024-01/mms/en (required)
* bodySite only SGHICodeableConcept
