Profile: SGHIAllergyIntolerance
Parent: AllergyIntolerance
Id: sghi-allergyintolerance
Title: "SGHI AllergyIntolerance"
Description: "Risk of harmful or undesirable physiological response which is specific to an individual and associated with exposure to a substance."

* identifier 1..*
  * insert CommonIdentifierRules

* participant 1..*
  * actor only SGHIReference
  * actor only Reference(SGHIPatient or SGHIOrganization)

* clinicalStatus 1..1
* clinicalStatus only SGHICodeableConcept

* verificationStatus 1..1
* verificationStatus only SGHICodeableConcept

* code only SGHICodeableConcept
* code 1..1
* code from AllLoincCodes (extensible)

* encounter 1..1
* encounter only SGHIReference
* encounter only Reference(SGHIEncounter)

* patient 1..1
* patient only SGHIReference
* patient only Reference(SGHIPatient)

* recordedDate 1..1

* reaction 1..*
  * substance only SGHICodeableConcept
  * substance from AllLoincCodes (extensible)
  * description 1..1
  * severity 1..1
  * manifestation only SGHICodeableReference
  * manifestation only CodeableReference(SGHIObservation)
  * manifestation from AllLoincCodes (extensible)
  * exposureRoute only SGHICodeableConcept
  * exposureRoute from AllLoincCodes (extensible)

* onset[x] only dateTime
* onsetDateTime 1..1
