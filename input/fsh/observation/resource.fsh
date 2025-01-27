Profile: SGHIObservation
Parent: Observation
Id: sghi-observation
Title: "SGHI Observation profile"
Description: "SGHI's profile for Observation"

* identifier 1..*
  * type from http://hl7.org/fhir/ValueSet/identifier-type (extensible)
  * use from http://hl7.org/fhir/ValueSet/identifier-use (required)
  * value 1..1
  * assigner only Reference(SGHIOrganization)
* category 1..*
* subject only Reference(SGHIPatient)
* encounter only Reference(SGHIEncounter)
* performer only Reference(SGHIOrganization)

