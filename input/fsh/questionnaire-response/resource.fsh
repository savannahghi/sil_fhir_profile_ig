Profile: SGHIQuestionnaireResponse
Parent: QuestionnaireResponse
Id: questionnaireresponse
Title: "SGHI QuestionnaireResponse"
Description: "A QuestionnaireResponse captures the questions and answers to a Questionnaire."

* identifier 1..*
  * type from SGHIDefaultIdentifierTypes (required)
  * insert CommonIdentifierRules

* subject 1..1
* subject only SGHIReference
* subject only Reference(SGHIPatient or SGHIPractitioner)

* encounter 1..1
* encounter only SGHIReference
* encounter only Reference(SGHIEncounter)

* source 1..1
* source only SGHIReference
* source only Reference(SGHIOrganization or SGHIPatient or SGHIPractitioner)

* authored 1..1
* item 1..*
  * text 1..1
  * item
  * answer 1..*