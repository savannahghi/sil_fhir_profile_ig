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
* medication only CodeableReference(Medication)

* encounter 1..1
* encounter only Reference(SGHIEncounter)

* subject 1..1
* subject only Reference(SGHIPatient)

* performer 1..1
  * actor only Reference(SGHIOrganization)
* authorizingPrescription 1..* 
* authorizingPrescription only Reference(SGHIMedicationRequest)

* type 1..1

* receiver 1..1
* receiver only Reference(SGHIPatient)
