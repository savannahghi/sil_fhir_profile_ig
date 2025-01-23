Instance: ExampleSGHICondition
InstanceOf: SGHICondition
Description: "An example of a Condition resource conforming to the SGHI Condition profile."
* identifier[0].use = #official
* identifier[0].type = #ACSN "Accession ID" 
* identifier[0].value = "AC123456789"
* clinicalStatus = #active "Active"
* verificationStatus = #confirmed "Confirmed"
* category[0] = #problem-list-item "Problem List Item"
* severity = #255604002 "Mild"
* encounter = Reference(ExampleSGHIEncounter) 
* code = #123456 "Hypertension"
* recordedDate = "2025-01-22"
* subject = Reference(ExampleSGHIPatient)
* bodySite = #65258003  "Distal phalanx of third toe"
* participant[0].actor = Reference(ExampleSGHIPatient)