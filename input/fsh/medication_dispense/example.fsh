Instance: ExampleSGHIMedicationDispense
InstanceOf: SGHIMedicationDispense
Usage: #example
Title: "SGHI Medication Dispense"
Description: "An example of a Medication Dispense resource adhering to SGHI's Medication Dispense"

* identifier
  * use = #official
  * type = #MR "Medical record number"
  * value = "example-medication-dispense-id"
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
* medication = Reference(ExampleFHIRMedication)
