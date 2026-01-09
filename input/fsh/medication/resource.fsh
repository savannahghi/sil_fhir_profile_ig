Profile: SGHIMedication
Parent: Medication
Id: medication
Title: "SGHI Medication"
Description: "SGHI's Medication profile for Medication resource"
* identifier 1..*
  * type from SGHIDefaultIdentifierTypes (required)
  * insert CommonIdentifierRules

* code 1..1
* code only SGHICodeableConcept
* code from SGHIMedicationCodes (required)
* status 1..1

* doseForm from SGHIMedicationFormCodes (required)
* doseForm only SGHICodeableConcept

* marketingAuthorizationHolder only SGHIReference
* marketingAuthorizationHolder only Reference(SGHIOrganization)

* ingredient 0..*
  * item 1..1
  * item only SGHICodeableReference
  * item only CodeableReference(SGHIMedication or SGHISubstance)
  * item from SGHIMedicationCodes (required)
  * isActive 1..1
  * strength[x] 1..1
  * strengthCodeableConcept only SGHICodeableConcept