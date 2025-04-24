Instance: ExampleSGHIObservation
InstanceOf: SGHIObservation
Description: "An example of an Observation resource conforming to the SGHI Observation profile"

* identifier[0]
  * use = #official
  * type.coding[0] = $identifier-type-cs#MR "Medical Record Number"
  * value = "3456789QWERTY"
  * system = $identifier-type-cs
  * assigner = Reference(ExampleSGHIOrganization)
* status = #final "Final"
* code = #100018-1 "Hospice care Note"
* category = #laboratory "Laboratory"
* subject = Reference(ExampleSGHIPatient)
* encounter = Reference(ExampleSGHIEncounter)
* performer = Reference(ExampleSGHIOrganization)
* effectiveInstant = "2025-02-10T08:00:00Z"
* issued = "2025-02-10T08:00:00Z"
* interpretation[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation"
* interpretation[0].coding[0].code = #N
* interpretation[0].coding[0].display = "Normal"
* code.coding.system = "http://loinc.org"
* code.coding.code = #N
* code.coding.display = "Normal"