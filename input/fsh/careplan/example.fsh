Instance: ExampleSGHICarePlan
InstanceOf: SGHICarePlan
Usage: #example
Description: "SGHI CarePlan demonstration."

* identifier[0].type = #ID "ID"
* identifier[0].use = #official
* identifier[0].value = "QwErTy102938"
* identifier[0].system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[0].assigner = Reference(ExampleSGHIOrganization)
* identifier[0].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"

* instantiatesCanonical = "http://slade360.hl7.org/fhir/v2-0203"
* status = #active
* intent = #plan
* title = "Example CarePlan"
* description = "Example CarePlan"
* subject = Reference(ExampleSGHIPatient)
* custodian = Reference(ExampleSGHIOrganization)
* created = "2025-06-03T14:30:00Z"
* activity.performedActivity = Reference(ExampleSGHTask)
* note.authorReference = Reference(ExampleSGHIOrganization)
* note.text = "Example Note"