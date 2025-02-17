Instance: ExampleSGHIComposition
InstanceOf: SGHIComposition
Usage: #example
Description: "An expanded Composition demonstration."

* identifier[0].type = #ID "ID"
* identifier[0].use = #official
* identifier[0].value = "QwErTy102938"
* identifier[0].system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[0].assigner = Reference(ExampleSGHIOrganization)
* identifier[0].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"

* status = #final
* type.coding[0].system = "http://example.org/CodeSystem/composition-type"
* type.coding[0].code = #DISCHARGE_SUMMARY
* type.coding[0].display = "Discharge Summary"
* date = "2025-06-03T14:30:00Z"
* author[0] = Reference(ExampleSGHIPatient)
* title = "SGHI Discharge Summary for John Doe"
* name = "SGHI Discharge Summary for John Doe"
* subject = Reference(ExampleSGHIPatient)
* encounter = Reference(ExampleSGHIEncounter)
* section[0].title = "Chief Complaint"
* section[0].code.coding[0].system = "http://example.org/CodeSystem/section-codes"
* section[0].code.coding[0].code = #CHIEF_COMPLAINT
* section[0].code.coding[0].display = "Chief Complaint"
* section[0].entry[0].reference = "Observation/chief-complaint-obs"
* section[1].title = "Allergies"
* section[1].code.coding[0].system = "http://example.org/CodeSystem/section-codes"
* section[1].code.coding[0].code = #ALLERGIES_SECTION
* section[1].code.coding[0].display = "Allergies Section"
* section[1].entry[0].reference = "AllergyIntolerance/peanut-allergy"
