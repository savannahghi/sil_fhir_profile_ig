Instance: ExampleSGHISpecimen
InstanceOf: SGHISpecimen
Description: "An example of Specimen resource that conforms to SGHI Specimen profile"

* identifier.use = #official
* identifier.type.coding[0].system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier.type.coding[0].code = #MR
* identifier.type.coding[0].display = "Medical Record Number"
* identifier.value = "SPECIMEN1234"
* identifier.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier.assigner = Reference(ExampleSGHIOrganization)

* accessionIdentifier.assigner = Reference(ExampleSGHIOrganization)
* accessionIdentifier.use = #official
* accessionIdentifier.type.coding[0].code = #MR
* accessionIdentifier.type.coding[0].display = "Medical Record Number"
* accessionIdentifier.type.coding[0].system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* accessionIdentifier.value = "ACCESID9080"

* status = #unavailable
* subject = Reference(ExampleSGHIPatient)
* receivedTime = "2025-01-01T10:30:00Z"
* role.coding[0].code = #e
* role.coding[0].system = "http://hl7.org/fhir/specimen-role"
* role.coding[0].display = "Electronic QC"
* collection.collectedDateTime = "2025-01-01T10:30:00Z"

* processing.method.coding.code = #cnb
* processing.method.coding.display = "Core Needle Biopsy"
* processing.method.coding.system = "http://hl7.org/fhir/specimen-role"