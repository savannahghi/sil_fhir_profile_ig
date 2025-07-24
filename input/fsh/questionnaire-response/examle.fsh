Instance: ExampleSGHIQuestionnaireResponse
InstanceOf: SGHIQuestionnaireResponse
Description: "An example of SGHI QuestionnaireResponse conforming to SGHI Implementation Guide"

* identifier.use = #official
* identifier.type.coding = $identifier-type-cs#VN "Visit Number"
* identifier.value = "APT123456"
* identifier.system = $identifier-type-cs
* identifier.assigner = Reference(ExampleSGHIOrganization)
* subject = Reference(ExampleSGHIPatient)
* author = Reference(ExampleSGHIOrganization)
* source = Reference(ExampleSGHIOrganization)
* encounter = Reference(ExampleSGHIEncounter)
* status = #completed
* questionnaire = "Example/SGHIQuestionnaire"
* item[0].linkId = "1"
* item[0].text = "What is your name"
* item[0].answer[0].valueString = "My name is SGHI FHIR Profile"

* authored = "2025-02-01T10:30:00Z"