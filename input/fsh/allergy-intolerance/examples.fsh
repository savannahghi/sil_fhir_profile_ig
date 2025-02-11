Instance: ExampleSGHIAllergyIntolerance
InstanceOf: SGHIAllergyIntolerance
Description: "An example of an AllergyIntolerance resource conforming to the SGHI AllergyIntolerance profile."

* identifier[0].use = #official
* identifier[0].type = #MR "Medical Record Number"
* identifier[0].value = "ALL123456789"
* identifier[0].system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* clinicalStatus = #active "Active"
* verificationStatus = #confirmed "Confirmed"
* code = #227493005 "Meat Allergy"
* type = #allergy "Allergy"
* category = #food "Food"
* criticality = #high "High Risk"
* onsetDateTime = "2025-01-01T10:30:00Z"
* patient = Reference(ExampleSGHIPatient)
* encounter = Reference(ExampleSGHIEncounter)
* recordedDate = "2025-01-22"
* participant[0].actor = Reference(ExampleSGHIPatient)
* reaction[0].substance = #227493005 "Meat"
* reaction[0].description = "Severe rash and difficulty breathing"
* reaction[0].severity = #severe "Severe"
* reaction[0].exposureRoute = #oral "Oral"
* reaction[0].manifestation.reference = Reference(ExampleSGHIObservation)
* reaction[0].substance.coding[0].system = "http://loinc.org"
* code.coding.system = "http://loinc.org"
* code.coding.code = #N
* code.coding.display = "Normal"