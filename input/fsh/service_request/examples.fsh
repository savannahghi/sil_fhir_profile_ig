Instance: ExampleSGHIServiceRequest
InstanceOf: SGHIServiceRequest
Description: "An example of a ServiceRequest resource conforming to the SGHI ServiceRequest profile."

* identifier[0]
  * use = #official
  * type.coding[0] = $identifier-type-cs#VN "Visit Number"
  * value = "APT123456"
  * system = $identifier-type-cs
  * assigner = Reference(ExampleSGHIOrganization)
* basedOn = Reference(ExampleSGHIMedicationRequest)
* authoredOn = "2025-02-01T10:30:00Z"
* category = #108252007 "Laboratory procedure"
* category.coding.system = "http://loinc.org"
* priority = #routine "Routine"
* code = #71388002 "Procedure"
* code.concept.coding.system = "http://loinc.org"
* code.concept.text = "Procedure"
* orderDetail[0].parameterFocus = Reference(ExampleSGHIMedicationRequest)
* orderDetail[0].parameter.valueString = "Value String"
* orderDetail[0].parameter.code.coding[0].system = "http://loinc.org"
* orderDetail[0].parameter.code.coding[0].code = #26436-6
* orderDetail[0].parameter.code.coding[0].display = "Laboratory studies (set)"
* orderDetail[0].parameterFocus.reference.display = "Medication Request"
* orderDetail[0].parameter.code.text = "Laboratory studies (set)"
* intent = #plan "Plan"
* status = #active "Active"
* encounter = Reference(ExampleSGHIEncounter)
* subject = Reference(ExampleSGHIPatient)
* requester = Reference(ExampleSGHIOrganization)
* reason.reference = Reference(ExampleSGHICondition)
* reason.reference.display = "Condition"
* performer = Reference(ExampleSGHIOrganization)