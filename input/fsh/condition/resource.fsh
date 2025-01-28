Profile: SGHICondition
Parent: Condition
Id: sghi-condition
Title: "SGHI Condition"
Description: "SGHI's profile for Condition"

* identifier 1..*
  * use from http://hl7.org/fhir/ValueSet/identifier-use (required)
  * type from http://hl7.org/fhir/ValueSet/identifier-type (extensible)
  * value 1..1
* verificationStatus 1..1
* category 1..*
* severity 1..1
* subject only Reference(SGHIPatient)
* encounter 1..1 
* encounter only Reference(SGHIEncounter)
* code 1..1
* bodySite 1..*
* recordedDate 1..1
* participant 1..*
  * actor only Reference(SGHIPatient)
