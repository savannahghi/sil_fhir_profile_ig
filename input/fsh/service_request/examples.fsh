Instance: ExampleSGHIServiceRequest
InstanceOf: SGHIServiceRequest
Description: "An example of a ServiceRequest resource conforming to the SGHI ServiceRequest profile."

* identifier[0].type = #VN "Visit Number"
* identifier[0].use = #official
* identifier[0].value = "QwErTy102938"
* identifier[0].assigner = Reference(ExampleSGHIOrganization)
* basedOn = Reference(ExampleSGHIMedicationRequest)
* category = #108252007 "Laboratory procedure"
* priority = #routine "Routine"
* code = #71388002 "Procedure"
* intent = #plan "Plan"
* status = #active "Active"
* encounter = Reference(ExampleSGHIEncounter)
* subject = Reference(ExampleSGHIPatient)
* requester = Reference(ExampleSGHIOrganization)
* reason.reference = Reference(ExampleSGHICondition)
* performer = Reference(ExampleSGHIOrganization)