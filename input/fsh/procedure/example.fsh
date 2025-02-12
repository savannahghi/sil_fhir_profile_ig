Instance: ExampleSGHIProcedure
InstanceOf: SGHIProcedure
Description: "An example of a Procedure resource conforming to the SGHI Procedure profile."

* identifier[0].type = http://terminology.hl7.org/CodeSystem/v2-0203#MR "Medical Record Number"
* identifier[0].value = "3456789QWERTY"
* identifier[0].system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[0].assigner = Reference(ExampleSGHIOrganization)

* basedOn = Reference(ExampleSGHIServiceRequest)

* partOf = Reference(ExampleSGHIObservation)

* status = #preparation "Preparation"

* statusReason
  * coding.system = "http://snomed.info/sct"
  * coding.code = #183932001 "Procedure contraindicated"
  * coding.display = "Procedure contraindicated"

* category
  * coding.system = "http://snomed.info/sct"
  * coding.code = #24642003 "Psychiatry procedure or service"
  * coding.display = "Psychiatry procedure or service"

* code
  * coding.system = "http://snomed.info/sct"
  * coding.code = #183932001 "Procedure contraindicated"
  * coding.display = "Procedure contraindicated"

* subject = Reference(ExampleSGHIPatient)

* focus = Reference(ExampleSGHIPatient)
  * display = "John Doe (Test Patient)"

* encounter = Reference(ExampleSGHIEncounter)

* occurrenceDateTime = "2025-02-10T08:00:00Z"

* recorded = "2025-02-10T08:00:00Z"

* recorder
  * reference = "Practitioner/987"
  * display = "Dr. John Doe (Test Practitioner)"

* performer[0].actor
  * reference = "Patient/123"
  * display = "Dr. Jane Smith (Test Practitioner)"

* performer[0].onBehalfOf = Reference(ExampleSGHIOrganization)
  * display = "Test Hospital (Example Organization)"

* location = Reference(ExampleSGHILocation)
  * display = "Main Operating Room (Example Location)"

* outcome
  * coding.system = "http://snomed.info/sct"
  * coding.code = #385669000 "Successful"
  * coding.display = "Successful"

* report = Reference(ExampleSGHIDiagnosticReport)

* complication
  * concept.coding.system = "http://snomed.info/sct"
  * concept.coding.code = #160245001 "No current problems or disability"
  * concept.coding.display = "No current problems or disability"

* followUp
  * coding.system = "http://snomed.info/sct"
  * coding.code = #18949003 "Change of dressing"
  * coding.display = "Change of dressing"

* bodySite
  * coding.system = "http://snomed.info/sct"
  * coding.code = #1894 "Chest"
  * coding.display = "Chest"

* note.text = "The patient tolerated the procedure well and was discharged in stable condition."
* note.time = "2025-02-01T10:30:00Z"