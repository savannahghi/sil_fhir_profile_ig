Profile: SGHIMedication
Parent: Medication
Id: sghi-medication
Title: "SGHI Medication"
Description: "SGHI's Medication profile for Medication resource"

* identifier 1..*
  * insert CommonIdentifierRules
* code 1..1
* status 1..1
* ingredient 1..*
  * item 1..1
  * item only CodeableReference(SGHIMedication or Substance)
  * isActive 1..1
  * strength[x] 1..1
