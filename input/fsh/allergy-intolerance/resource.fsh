Profile: SGHIAllergyIntolerance
Parent: AllergyIntolerance
Id: sghi-allergy-intolerance
Title: "SGHI AllergyIntolerance"
Description: "SGHI's profile for AllergyIntolerance"

* identifier 1..*
  * use from http://hl7.org/fhir/ValueSet/identifier-use (required)
  * type from http://hl7.org/fhir/ValueSet/identifier-type (extensible)
  * value 1..1
* type from http://hl7.org/fhir/ValueSet/allergy-intolerance-type (preferred)
* category from http://hl7.org/fhir/ValueSet/allergy-intolerance-category (required)
* criticality from http://hl7.org/fhir/ValueSet/allergy-intolerance-criticality (required)
* code from http://hl7.org/fhir/ValueSet/allergyintolerance-code (example)
* onset[x] 1..1
* participant 1..*
  * actor only Reference(SGHIPatient)
* clinicalStatus 1..1
* verificationStatus 1..1
* code 1..1
* patient only Reference(SGHIPatient)
* encounter 1..1
* encounter only Reference(SGHIEncounter)
* recordedDate 1..1
* reaction 1..*
  * substance from http://hl7.org/fhir/ValueSet/substance-code (preferred)
  * description 1..1
  * severity 1..1
  * exposureRoute	from http://hl7.org/fhir/ValueSet/route-codes (preferred)
  * manifestation only CodeableReference(SGHIObservation)
