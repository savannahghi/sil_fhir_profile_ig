Instance: CIELtoFHIRRiskAssessmentMap
InstanceOf: ConceptMap
Usage: #definition
Title: "CIEL to FHIR Code Map"

* url = "https://fhir.slade360.co.ke/fhir/ConceptMap/CIELtoFHIRRiskAssessmentMap"
* status = #active
* group[0].source = "https://fhir.slade360.co.ke/fhir/CodeSystem/retired-ciel-codes"
* group[0].target = "http://terminology.hl7.org/CodeSystem/risk-probability"

* group[0].element[0].code = #166674
* group[0].element[0].display = "High Risk"
* group[0].element[0].target[0].code = #high
* group[0].element[0].target[0].display = "High likelihood"
* group[0].element[0].target[0].relationship = #equivalent

* group[0].element[1].code = #1064
* group[0].element[1].display = "Not At Risk"
* group[0].element[1].target[0].code = #negligible
* group[0].element[1].target[0].display = "Negligible likelihood"
* group[0].element[1].target[0].relationship = #equivalent

* group[0].element[2].code = #166675
* group[0].element[2].display = "Average Risk"
* group[0].element[2].target[0].code = #moderate
* group[0].element[2].target[0].display = "Moderate likelihood"
* group[0].element[2].target[0].relationship = #equivalent
