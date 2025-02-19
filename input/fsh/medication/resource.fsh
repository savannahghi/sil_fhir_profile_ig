Profile: SGHIMedication
Parent: Medication
Id: sghi-medication
Title: "SGHI Medication"
Description: "SGHI's Medication profile for Medication resource"
* meta.profile = "https://fhir.slade360.co.ke/StructureDefinition/sghi-medication" (exactly)

* identifier 1..*
  * insert CommonIdentifierRules

* code 1..1
* code only SGHICodeableConcept
* code from https://ocl-testing-api.savannahghi.org/fhir/CodeSystem/KNC4Drugs (required)
* status 1..1

* doseForm from https://ocl-testing-api.savannahghi.org/fhir/ValueSet/DoseForm (required)
* doseForm only SGHICodeableConcept

* marketingAuthorizationHolder only SGHIReference
* marketingAuthorizationHolder only Reference(SGHIOrganization)

* ingredient 1..*
  * item 1..1
  * item only SGHICodeableReference
  * item only CodeableReference(SGHIMedication or SGHISubstance)
  * item from SGHIMedicationCodes (required)
  * isActive 1..1
  * strength[x] 1..1
  * strengthCodeableConcept only SGHICodeableConcept