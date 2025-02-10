Instance: ExampleSGHIDiagnosticReport
InstanceOf: SGHIDiagnosticReport
Description: "An example of an DiagnosticReport resource conforming to the SGHI DiagnostiReport profile."

* identifier[0].use = #official
* identifier[0].type = #MR "Medical Record Number"
* identifier[0].value = "qwerty3456789"
* identifier[0].system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[0].assigner = Reference(ExampleSGHIOrganization)
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