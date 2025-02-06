Profile: SGHIObservation
Parent: Observation
Id: sghi-observation
Title: "SGHI Observation"
Description: "SGHI's profile for Observation"

* meta.profile = "https://fhir.slade360.co.ke/StructureDefinition/sghi-observation" (exactly)

* identifier 1..*
  * insert CommonIdentifierRules
  * assigner only Reference(SGHIOrganization)
* category 1..1
* code 1..1 MS
  * ^short = "LOINC code representing the type of observation."
  * coding 1..*
    * system = "http://loinc.org"
    * system 1..1
    * code 1..1
    * display 1..1
  * text 0..1
* subject 1..1
* subject only Reference(SGHIPatient)
* encounter 1..1
* encounter only Reference(SGHIEncounter)
* performer 1..*
* performer only Reference(SGHIOrganization)
* effective[x] only dateTime
* effectiveDateTime 1..1
* interpretation 1..*
