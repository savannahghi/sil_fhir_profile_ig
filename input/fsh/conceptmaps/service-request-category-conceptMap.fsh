Instance: CIELtoFHIRCategoryCodeBindingsMap
InstanceOf: ConceptMap
Usage: #definition
Title: "R4 to R5 Category Map"

* url = "https://fhir.slade360.co.ke/fhir/ConceptMap/CIELtoFHIRCategoryCodeBindingsMap"
* status = #draft

* group[0].target = "https://fhir.slade360.co.ke/fhir/CodeSystem/service-request-cs"
* group[0].source = "*"

* group[0].element[0].code = #161360
* group[0].element[0].display = "Referral"
* group[0].element[0].target[0].code = #referral 
* group[0].element[0].target[0].display = "Referral"
* group[0].element[0].target[0].relationship = #equivalent

* group[0].element[1].code = #159623
* group[0].element[1].display = "Specialist"
* group[0].element[1].target[0].code = #counselling
* group[0].element[1].target[0].display = "Counselling"
* group[0].element[1].target[0].relationship = #equivalent

* group[0].element[2].code = #1283
* group[0].element[2].display = "Laboratory orders"
* group[0].element[2].target[0].code = #laboratory-procedure
* group[0].element[2].target[0].display = "Laboratory procedure"
* group[0].element[2].target[0].relationship = #equivalent
