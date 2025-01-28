Profile: SGHIObservation
Parent: Observation
Id: sghi-observation
Title: "SGHI Observation"
Description: "SGHI's profile for Observation"

* identifier 1..*
  * type from http://hl7.org/fhir/ValueSet/identifier-type (extensible)
  * use from http://hl7.org/fhir/ValueSet/identifier-use (required)
  * value 1..1
  * assigner only Reference(SGHIOrganization)
* category 1..1
* subject 1..1
* subject only Reference(SGHIPatient)
* encounter 1..1
* encounter only Reference(SGHIEncounter)
* performer 1..*
* performer only Reference(SGHIOrganization)

