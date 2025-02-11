Instance: ExampleSGHIMedicationDispense
InstanceOf: SGHIMedicationDispense
Usage: #example
Title: "SGHI Medication Dispense"
Description: "An example of a Medication Dispense resource adhering to SGHI's Medication Dispense"

* identifier
  * use = #official
  * type = #MR "Medical record number"
  * value = "example-medication-dispense-id"
  * system = "http://terminology.hl7.org/CodeSystem/v2-0203"
  * assigner = Reference(ExampleSGHIOrganization)
* status = #completed
* encounter = Reference(ExampleSGHIEncounter)
* subject = Reference(ExampleSGHIPatient)
* type
  * coding
    * code = #DF "Daily Fill"
* performer
  * actor = Reference(ExampleSGHIOrganization)
* authorizingPrescription = Reference(ExampleSGHIMedicationRequest)
* receiver = Reference(ExampleSGHIPatient)
* medication.reference = Reference(ExampleSGHIMedication)
* medication.concept = http://www.nlm.nih.gov/research/umls/rxnorm#123456 "Medication Name"

* location = Reference(ExampleSGHILocation) "Pharmacy Location"
* destination = Reference(ExampleSGHILocation) "Patient's Home"
* quantity = 30 'tablet' "tablets"
* whenPrepared = "2023-10-20T10:00:00Z"
* whenHandedOver = "2023-10-20T11:00:00Z"
* renderedDosageInstruction = "Take one tablet daily with meals"
* dosageInstruction[0]
  * text = "Take one tablet daily with meals"
  * timing.repeat
    * frequency = 1
    * period = 1
    * periodUnit = #d
* substitution
  * wasSubstituted = false
  * type = http://terminology.hl7.org/CodeSystem/v3-substanceAdminSubstitution#N "None"
  * responsibleParty = Reference(ExampleSGHIOrganization)