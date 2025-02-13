Instance: ExampleSGHIDiagnosticReport
InstanceOf: SGHIDiagnosticReport
Description: "An example of an DiagnosticReport resource conforming to the SGHI DiagnostiReport profile."

* identifier[0]
  * use = #official
  * type.coding[0] = $identifier-type-cs#MR "Medical Record Number"
  * value = "qwerty3456789"
  * system = $identifier-type-cs
  * assigner = Reference(ExampleSGHIOrganization)
* status = #partial "Partial"
* code = #100018-1 "Hospice care Note"
* basedOn = Reference(ExampleSGHIMedicationRequest)
* category = #CT "CAT Scan"
* subject = Reference(ExampleSGHIPatient)
* encounter = Reference(ExampleSGHIEncounter)
* performer = Reference(ExampleSGHIOrganization)
* resultsInterpreter = Reference(ExampleSGHIOrganization)
* issued = "2025-02-10T08:00:00Z"
* effectiveDateTime = "2025-02-10T08:00:00Z"