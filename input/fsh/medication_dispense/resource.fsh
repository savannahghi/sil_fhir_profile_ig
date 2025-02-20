Profile: SGHIMedicationDispense
Parent: MedicationDispense
Id: sghi-medication-dispense
Title: "SGHI Medication Dispense"
Description: "SGHI's profile for Medication Dispense resource"

* meta.profile = "https://fhir.slade360.co.ke/StructureDefinition/sghi-medication-dispense" (exactly)

* identifier 1..*
  * insert CommonIdentifierRules
* status 1..1

* medication 1..1
* medication only SGHICodeableReference
* medication only CodeableReference(SGHIMedication)
* medication from SGHIMedicationCodes (required)

* encounter 1..1
* encounter only SGHIReference
* encounter only Reference(SGHIEncounter)

* subject 1..1
* subject only SGHIReference
* subject only Reference(SGHIPatient)

* location 1..1
* location only SGHIReference
* location only Reference(SGHILocation)

* performer 1..1
  * actor only SGHIReference
  * actor only Reference(SGHIOrganization)

* authorizingPrescription 1..* 
* authorizingPrescription only SGHIReference
* authorizingPrescription only Reference(SGHIMedicationRequest)

* type 1..1
* type only SGHICodeableConcept

* destination 1..1
* destination only SGHIReference
* destination only Reference(SGHILocation)

* receiver 1..1
* receiver only SGHIReference
* receiver only Reference(SGHIPatient)

* renderedDosageInstruction 1..1

* dosageInstruction 1..*
* dosageInstruction only SGHIDosage

* substitution 1..1
  * wasSubstituted 1..1
  * type 1..1
  * type only SGHICodeableConcept
  * reason 0..*
  * responsibleParty 1..1
  * responsibleParty only SGHIReference
  * responsibleParty only Reference(SGHIOrganization)

* quantity 1..1
* whenPrepared 1..1
* whenHandedOver 1..1
