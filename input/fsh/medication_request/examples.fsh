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
* dosageInstruction[0].sequence = 1
* dosageInstruction[0].text = "Take 500 mg by mouth twice daily for 10 days after meals"
* dosageInstruction[0].additionalInstruction[0].coding[0].system = "http://example.org/fhir/CodeSystem/AdditionalInstructions"
* dosageInstruction[0].additionalInstruction[0].coding[0].code = #withFood
* dosageInstruction[0].additionalInstruction[0].coding[0].display = "Take with food"
* dosageInstruction[0].patientInstruction = "Drink plenty of water with each dose"

// Timing
* dosageInstruction[0].timing.repeat.frequency = 2
* dosageInstruction[0].timing.repeat.period = 1
* dosageInstruction[0].timing.repeat.periodUnit = #d
* dosageInstruction[0].timing.repeat.boundsPeriod.start = "2025-01-22"
* dosageInstruction[0].timing.repeat.boundsPeriod.end = "2025-02-01"

// As Needed
* dosageInstruction[0].asNeeded = false

// Site
* dosageInstruction[0].site.coding[0].system = "http://snomed.info/sct"
* dosageInstruction[0].site.coding[0].code = #N
* dosageInstruction[0].site.coding[0].display = "Oral cavity structure"

// Route & Method
* dosageInstruction[0].route.coding[0].system = "http://terminology.hl7.org/CodeSystem/v3-RouteOfAdministration"
* dosageInstruction[0].route.coding[0].code = #PO
* dosageInstruction[0].route.coding[0].display = "Oral"

* dosageInstruction[0].method.coding[0].system = "http://example.org/fhir/CodeSystem/MedicationAdministrationMethod"
* dosageInstruction[0].method.coding[0].code = #SWALLOW
* dosageInstruction[0].method.coding[0].display = "Swallow whole"

// Dose & Rate
* dosageInstruction[0].doseAndRate[0].type.coding[0].system = "http://terminology.hl7.org/CodeSystem/dose-rate-type"
* dosageInstruction[0].doseAndRate[0].type.coding[0].code = #calculated
* dosageInstruction[0].doseAndRate[0].type.coding[0].display = "Calculated dose"

* dosageInstruction[0].doseAndRate[0].doseQuantity.value = 500
* dosageInstruction[0].doseAndRate[0].doseQuantity.unit = "mg"
* dosageInstruction[0].doseAndRate[0].doseQuantity.system = "http://unitsofmeasure.org"
* dosageInstruction[0].doseAndRate[0].doseQuantity.code = #mg

// Example rate
* dosageInstruction[0].doseAndRate[0].rateRatio.numerator.value = 100
* dosageInstruction[0].doseAndRate[0].rateRatio.numerator.unit = "mL"
* dosageInstruction[0].doseAndRate[0].rateRatio.numerator.system = "http://unitsofmeasure.org"
* dosageInstruction[0].doseAndRate[0].rateRatio.numerator.code = #mL
* dosageInstruction[0].doseAndRate[0].rateRatio.denominator.value = 1
* dosageInstruction[0].doseAndRate[0].rateRatio.denominator.unit = "hr"
* dosageInstruction[0].doseAndRate[0].rateRatio.denominator.system = "http://unitsofmeasure.org"
* dosageInstruction[0].doseAndRate[0].rateRatio.denominator.code = #h