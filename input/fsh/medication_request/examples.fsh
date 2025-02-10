Instance: ExampleSGHIMedicationRequest
InstanceOf: SGHIMedicationRequest
Description: "An example of a MedicationRequest resource conforming to the SGHI MedicationRequest profile."
* identifier[0].use = #official
* identifier[0].type = #RX "Prescription Number"
* identifier[0].assigner = Reference(ExampleSGHIOrganization)
* identifier[0].value = "RX123456789"
* identifier[0].system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* category[0] = #inpatient "Inpatient"
* priority = #routine
* subject = Reference(ExampleSGHIPatient)
* status = #active "Active"
* intent = #plan "Plan"
* medication = #123456 "Hibiscus 500mg Capsule"
* encounter = Reference(ExampleSGHIEncounter)
* authoredOn = "2025-01-22"
* requester = Reference(ExampleSGHIOrganization) 
* recorder.reference = "SGHIOrganization/Practitioner" 
* reason =  Reference(ExampleSGHICondition)
* effectiveDosePeriod.start = "2025-01-22"
* effectiveDosePeriod.end = "2025-02-01"
* dosageInstruction[0].text = "Take one tablet twice daily after meals"