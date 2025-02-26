Profile: SGHIObservation
Parent: Observation
Id: sghi-observation
Title: "SGHI Observation"
Description: "Measurements and simple assertions made about a patient, device or other subject."

* meta.profile = "{{HAPI_FHIR_BASE_URL}}/StructureDefinition/sghi-observation" (exactly)

* identifier 1..*
  * insert CommonIdentifierRules

* category 1..1
* category only SGHICodeableConcept


* code 1..1
* code only SGHICodeableConcept

* subject 1..1
* subject only SGHIReference
* subject only Reference(SGHIPatient)

* encounter 1..1
* encounter only SGHIReference
* encounter only Reference(SGHIEncounter)

* performer 1..*
* performer only SGHIReference
* performer only Reference(SGHIOrganization or SGHIPatient)

* effective[x] only dateTime
* effectiveDateTime 1..1

* issued 1..1
* interpretation 0..*

* basedOn only SGHIReference
* basedOn only Reference(SGHIServiceRequest or SGHIMedicationRequest)

* bodySite from ICD11Codes (required)
* bodySite only SGHICodeableConcept

* triggeredBy.observation only SGHIReference
* triggeredBy.observation only Reference(SGHIObservation)

* partOf only SGHIReference
* partOf only Reference(SGHIMedicationDispense)

* hasMember only SGHIReference
* hasMember only Reference(SGHIObservation)

* derivedFrom only SGHIReference
* derivedFrom only Reference(SGHIObservation)

* valueCodeableConcept only SGHICodeableConcept
* valueReference only SGHIReference
* valueAttachment only SGHIAttachment