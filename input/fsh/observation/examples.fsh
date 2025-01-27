Instance: ExampleSGHIObservation
InstanceOf: SGHIObservation
Description: "An example of an Observation resource conforming to the SGHI Observation profile"

* identifier[0].type = #MR "Medical Record Number"
* identifier[0].value = "3456789QWERTY"
* identifier[0].assigner = Reference(ExampleSGHIOrganization)
* status = #final "Final"
* code = #100018-1 "Hospice care Note"
* category = #laboratory "Laboratory"
* subject = Reference(ExampleSGHIPatient)
* encounter = Reference(ExampleSGHIEncounter)
* performer = Reference(ExampleSGHIOrganization)