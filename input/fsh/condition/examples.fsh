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
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed "Confirmed"
* category[0] = #problem-list-item "Problem List Item"
* severity = http://terminology.hl7.org/CodeSystem/adverse-event-severity#mild "Mild"
* encounter = Reference(ExampleSGHIEncounter) 
* code = #123456 "Hypertension"
* recordedDate = "2025-01-22"
* subject = Reference(ExampleSGHIPatient)
* participant[0].actor = Reference(ExampleSGHIPatient)