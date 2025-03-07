Profile: SGHISubstance
Parent: Substance
Id: sghi-substance
Title: "SGHI Substance"
Description: "Profile for representing substances in the SGHI context"

* identifier 1..*
  * insert CommonIdentifierRules
* instance 1..1
* status 1..1
* status from http://hl7.org/fhir/ValueSet/substance-status (required)

* category 1..*
* category only SGHICodeableConcept

* code 1..1
* code only SGHICodeableReference
* code from SGHISubstanceCodes (required)
* description 1..1
* expiry 1..1
* quantity 1..1

* ingredient 1..*
  * quantity 1..1
  * substance[x] 1..1
  * substance[x] only SGHICodeableConcept
  * substance[x] from SGHISubstanceCodes (required)