Instance: FHIRClinicalStatusMap
InstanceOf: ConceptMap
Usage: #definition
Title: "R4 to R5 ClinicalStatus Map"

* url = "https://fhir.slade360.co.ke/fhir/ConceptMap/FHIRClinicalStatusMap"
* status = #active
* group[0].source = "*"
* group[0].target = "http://terminology.hl7.org/CodeSystem/condition-clinical"

* group[0].element[0].code = #UNKNOWN
* group[0].element[0].display = "UNKNOWN"
* group[0].element[0].target[0].code = #unknown
* group[0].element[0].target[0].display = "Unknown"
* group[0].element[0].target[0].relationship = #equivalent

* group[0].element[1].code = #RESOLVED
* group[0].element[1].display = "RESOLVED"
* group[0].element[1].target[0].code = #resolved 
* group[0].element[1].target[0].display = "Resolved"
* group[0].element[1].target[0].relationship = #equivalent

* group[0].element[2].code = #REMISSION
* group[0].element[2].display = "REMISSION"
* group[0].element[2].target[0].code = #remission 
* group[0].element[2].target[0].display = "Remission"
* group[0].element[2].target[0].relationship = #equivalent

* group[0].element[3].code = #INACTIVE
* group[0].element[3].display = "INACTIVE"
* group[0].element[3].target[0].code = #inactive 
* group[0].element[3].target[0].display = "Inactive"
* group[0].element[3].target[0].relationship = #equivalent

* group[0].element[4].code = #RELAPSE
* group[0].element[4].display = "RELAPSE"
* group[0].element[4].target[0].code = #relapse 
* group[0].element[4].target[0].display = "Relapse"
* group[0].element[4].target[0].relationship = #equivalent

* group[0].element[5].code = #RECURRENCE
* group[0].element[5].display = "RECURRENCE"
* group[0].element[5].target[0].code = #recurrence 
* group[0].element[5].target[0].display = "Recurrence"
* group[0].element[5].target[0].relationship = #equivalent

* group[0].element[6].code = #ACTIVE
* group[0].element[6].display = "ACTIVE"
* group[0].element[6].target[0].code = #active  
* group[0].element[6].target[0].display = "Active"
* group[0].element[6].target[0].relationship = #equivalent