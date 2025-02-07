Profile: SGHIAllergyIntolerance
Parent: AllergyIntolerance
Id: sghi-allergy-intolerance
Title: "SGHI AllergyIntolerance"
Description: "SGHI's profile for AllergyIntolerance"

* meta.profile = "https://fhir.slade360.co.ke/StructureDefinition/sghi-allergy-intolerance" (exactly)

* identifier 1..*
  * insert CommonIdentifierRules
* type from http://hl7.org/fhir/ValueSet/allergy-intolerance-type (preferred)
* category from http://hl7.org/fhir/ValueSet/allergy-intolerance-category (required)
* criticality from http://hl7.org/fhir/ValueSet/allergy-intolerance-criticality (required)
* code from http://hl7.org/fhir/ValueSet/allergyintolerance-code (example)
* onset[x] 1..1
* participant 1..*
  * actor only Reference(SGHIPatient)
* clinicalStatus 1..1
* verificationStatus 1..1
* code 1..1 MS
  * insert CommonLOINCTerminologyBindingRules
* patient only Reference(SGHIPatient)
* encounter 1..1
* encounter only Reference(SGHIEncounter)
* recordedDate 1..1
* reaction 1..*
  * substance
    * insert CommonLOINCTerminologyBindingRules
  * description 1..1
  * severity 1..1
  * manifestation only CodeableReference(SGHIObservation)
* onset[x] only dateTime
* onsetDateTime 1..1