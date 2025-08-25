Profile:        SGHIRiskAssessment
Parent:         RiskAssessment
Id:             sghi-riskassessment
Title:          "SGHI RiskAssessment"
Description:    "An assessment of the likely outcome(s) for a patient or other subject as well as the likelihood of each outcome."

* identifier 1..*
  * insert CommonIdentifierRules

* basis only SGHIReference
* basis only Reference(QuestionnaireResponse)

* basedOn only SGHIReference

* subject only SGHIReference
* subject only Reference(SGHIPatient)

* encounter 1..1
* encounter only SGHIReference
* encounter only Reference(SGHIEncounter)

* condition only SGHIReference
* condition only Reference(SGHICondition)

* performer only SGHIReference
* performer only Reference(SGHIPatient or Practitioner)

* reason only SGHICodeableReference
* reason only CodeableReference(SGHICondition or SGHIObservation or SGHIDiagnosticReport)

* prediction 1..
  * qualitativeRisk 1..1
  * qualitativeRisk only SGHICodeableConcept

* note only SGHIAnnotation
