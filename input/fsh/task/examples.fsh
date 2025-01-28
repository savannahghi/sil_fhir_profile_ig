Instance: ExampleSGHITask
InstanceOf: SGHITask
Description: "An example of a Task resource conforming to the SGHI Task profile."

* identifier[0].use = #official
* identifier[0].type = #PLAC "Placer Identifier"
* identifier[0].system = "http://sghi.example.org/task-identifiers"
* identifier[0].value = "TASK123456"
* identifier[0].assigner = Reference(ExampleSGHIOrganization)

* status = #in-progress
* intent = #order
* priority = #routine 
* businessStatus.coding[0] = http://terminology.hl7.org/CodeSystem/task-status#in-progress "In Progress"

* authoredOn = "2023-11-20T09:00:00Z"
* lastModified = "2023-11-20T09:30:00Z"

* for = Reference(ExampleSGHIPatient)
* owner = Reference(ExampleSGHIOrganization)
* requester = Reference(ExampleSGHIPatient)

* input[0].type = http://terminology.hl7.org/CodeSystem/task-input-type#request "Request"
* input[0].valueString = "Patient blood test request"

* output[0].type = http://terminology.hl7.org/CodeSystem/task-output-type#result "Result"
* output[0].valueString = "Blood test completed successfully"

* requestedPerformer.reference = Reference(ExampleSGHIOrganization)
* encounter = Reference(ExampleSGHIEncounter)
