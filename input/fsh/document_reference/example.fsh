Instance: ExampleSGHIDocumentReference
InstanceOf: SGHIDocumentReference                                                                                                                                                                                                                                                                                                                
Description: "An example of an DocumentReference resource conforming to the SGHI SGHIDocumentReference profile."
Usage: #example

* identifier.use = #official
* identifier.type.coding[0] = $identifier-type-cs#ACSN "Accession ID"
* identifier.system = $identifier-type-cs
* identifier.value = "Accession ID"
* identifier.assigner = Reference(ExampleSGHIOrganization)

* author = Reference(ExampleSGHIOrganization)
* basedOn = Reference(ExampleSGHIAppointment)
* docStatus = #final

* type.coding.system = "http://loinc.org/"
* type.coding.display = "Hospice care Note"
* type.coding.code = #100018-1

* status = #current
* subject = Reference(ExampleSGHIPatient)

* context = Reference(ExampleSGHIEncounter)
* date = "2025-03-25T09:00:00Z"

* custodian = Reference(ExampleSGHIOrganization)


* content.attachment.url = "https://example.com/sample-document.pdf"
* content.attachment.title = "Example Document"
