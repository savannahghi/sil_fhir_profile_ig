Instance: ExampleSGHIMedicationDispense
InstanceOf: SGHIMedicationDispense
Usage: #example
Title: "SGHI Medication Dispense"
Description: "An example of a Medication Dispense resource adhering to SGHI's Medication Dispense"

* identifier[0]
  * use = #official
  * type.coding[0] = $identifier-type-cs#MR "Medical record number"
  * value = "example-medication-dispense-id"
  * system = $identifier-type-cs
  * assigner = Reference(ExampleSGHIOrganization)
* status = #completed
* encounter = Reference(ExampleSGHIEncounter)
* subject = Reference(ExampleSGHIPatient)
* type
  * coding
    * code = #DF "Daily Fill"
* performer
  * actor = Reference(ExampleSGHIOrganization)
* authorizingPrescription = Reference(ExampleSGHIMedicationRequest)
* receiver = Reference(ExampleSGHIPatient)
* medication.reference = Reference(ExampleSGHIMedication)
* medication.concept = http://www.nlm.nih.gov/research/umls/rxnorm#123456 "Medication Name"
* medication.reference.display = "Panadol"
* location = Reference(ExampleSGHILocation) "Pharmacy Location"
* destination = Reference(ExampleSGHILocation) "Patient's Home"
* quantity = 30 'tablet' "tablets"
* whenPrepared = "2023-10-20T10:00:00Z"
* whenHandedOver = "2023-10-20T11:00:00Z"
* renderedDosageInstruction = "Take one tablet daily with meals"
* dosageInstruction[0]
  * text = "Take one tablet daily with meals"
  * timing.repeat
    * frequency = 1
    * period = 1
    * periodUnit = #d
* substitution
  * wasSubstituted = false
  * type = http://terminology.hl7.org/CodeSystem/v3-substanceAdminSubstitution#N "None"
  * responsibleParty = Reference(ExampleSGHIOrganization)

* type.coding.system = "http://terminology.hl7.org/CodeSystem/v3-substanceAdminSubstitution"
* type.coding.display = "None"

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