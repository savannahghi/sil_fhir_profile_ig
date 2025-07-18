Instance: FHIRCodeCategoryMap
InstanceOf: ConceptMap
Usage: #definition
Title: "R4 to R5 Category Map"

* url = "https://fhir.slade360.co.ke/fhir/ConceptMap/FHIRCodeCategoryMap"
* status = #active
* group[0].source = "*"
* group[0].target = "http://terminology.hl7.org/CodeSystem/condition-category"

* group[0].element[0].code = #PROBLEM_LIST_ITEM
* group[0].element[0].display = "PROBLEM_LIST_ITEM"
* group[0].element[0].target[0].code = #problem-list-item
* group[0].element[0].target[0].display = "Problem List Item"
* group[0].element[0].target[0].relationship = #equivalent

* group[0].element[1].code = #ENCOUNTER_DIAGNOSIS
* group[0].element[1].display = "ENCOUNTER_DIAGNOSIS"
* group[0].element[1].target[0].code = #encounter-diagnosis
* group[0].element[1].target[0].display = "Encounter Diagnosis"
* group[0].element[1].target[0].relationship = #equivalent
