Instance: ExampleSGHIRiskAssessment
InstanceOf: SGHIRiskAssessment
Description: "An example of a RiskAssessment resource conforming to the SGHI RiskAssessment profile."

* identifier[0].type = http://terminology.hl7.org/CodeSystem/v2-0203#MR "Medical Record Number"
* identifier[0].value = "3456789QWERTY"
* identifier[0].system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[0].assigner = Reference(ExampleSGHIOrganization)

* basis.reference = "Reference(QuestionnaireResponse)"
* basis.display = "Example display"

* status = #registered "Registered"

* code
  * coding.system = "http://snomed.info/sct"
  * coding.code = #183932001 "RiskAssessment contraindicated"
  * coding.display = "RiskAssessment contraindicated"

* subject = Reference(ExampleSGHIPatient)

* encounter = Reference(ExampleSGHIEncounter)

* prediction
  * qualitativeRisk[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/risk-probability"
  * qualitativeRisk[0].coding[0].code = #low "Low likelihood"
  * qualitativeRisk[0].coding[0].display = "Low likelihood"

* note.text = "The patient tolerated the procedure well and was discharged in stable condition."
* note.time = "2025-02-01T10:30:00Z"