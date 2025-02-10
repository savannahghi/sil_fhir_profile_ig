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
* medication only CodeableReference(SGHIMedication)
* medication from http://www.nlm.nih.gov/research/umls/rxnorm (required)

* encounter 1..1
* encounter only Reference(SGHIEncounter)

* subject 1..1
* subject only Reference(SGHIPatient)

* location 1..1
* location only Reference(SGHILocation)

* performer 1..1
  * actor only Reference(SGHIOrganization)

* authorizingPrescription 1..* 
* authorizingPrescription only Reference(SGHIMedicationRequest)

* type 1..1

* destination 1..1
* destination only Reference(SGHILocation)

* receiver 1..1
* receiver only Reference(SGHIPatient)

* renderedDosageInstruction 1..1

* dosageInstruction 1..*

* substitution 1..1
  * wasSubstituted 1..1
  * type 1..1
  * reason 0..*
  * responsibleParty 1..1
  * responsibleParty only Reference(SGHIOrganization)

* quantity 1..1
* whenPrepared 1..1
* whenHandedOver 1..1