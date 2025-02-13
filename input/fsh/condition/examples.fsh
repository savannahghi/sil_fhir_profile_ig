Instance: ExampleSGHICondition
InstanceOf: SGHICondition
Description: "An example of a Condition resource conforming to the SGHI Condition profile."

* identifier[0]
  * use = #official
  * type.coding[0] = $identifier-type-cs#ACSN "Accession ID"
  * value = "AC123456789"
  * system = $identifier-type-cs
  * assigner = Reference(ExampleSGHIOrganization)
* clinicalStatus = #active "Active"
* verificationStatus = #confirmed "Confirmed"
* category[0] = #problem-list-item "Problem List Item"
* severity = #255604002 "Mild"
* encounter = Reference(ExampleSGHIEncounter) 
* code = #123456 "Hypertension"
* recordedDate = "2025-01-22"
* subject = Reference(ExampleSGHIPatient)
* participant[0].actor = Reference(ExampleSGHIPatient)