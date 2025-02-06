Profile: SGHICondition
Parent: Condition
Id: sghi-condition
Title: "SGHI Condition"
Description: "SGHI's profile for Condition"

* identifier 1..*
  * insert CommonIdentifierRules
* verificationStatus 1..1
* category 1..*
* severity 1..1
* subject only Reference(SGHIPatient)
* encounter 1..1 
* encounter only Reference(SGHIEncounter)
* code 1..1
* bodySite 1..*
* recordedDate 1..1
* onset[x] only dateTime
* abatement[x] only dateTime
* participant 1..*
  * actor only Reference(SGHIPatient)
