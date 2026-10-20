Instance: flowsheet-observation-aliases
InstanceOf: ConceptMap
Usage: #definition
Title: "Flowsheet observation aliases"
Description: "Observation codes that mean the same reading as a flowsheet row's own code."
* status = #active
* name = "FlowsheetObservationAliases"

* group[+].source = $loinc
* group[=].target = $loinc
* group[=].element[+].code = #8889-8
* group[=].element[=].display = "Heart rate by Pulse oximetry"
* group[=].element[=].target[+].code = #8867-4
* group[=].element[=].target[=].display = "Heart rate"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #20564-1
* group[=].element[=].display = "Oxygen saturation in Blood"
* group[=].element[=].target[+].code = #59408-5
* group[=].element[=].target[=].display = "Oxygen saturation in Arterial blood by Pulse oximetry"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2708-6
* group[=].element[=].display = "Oxygen saturation in Arterial blood"
* group[=].element[=].target[+].code = #59408-5
* group[=].element[=].target[=].display = "Oxygen saturation in Arterial blood by Pulse oximetry"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #8328-7
* group[=].element[=].display = "Axillary temperature"
* group[=].element[=].target[+].code = #8310-5
* group[=].element[=].target[=].display = "Body temperature"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[+].source = $sghi-concept
* group[=].target = $loinc
* group[=].element[+].code = #bishop-cervical-dilation
* group[=].element[=].display = "Cervical dilation"
* group[=].element[=].target[+].code = #11784-6
* group[=].element[=].target[=].display = "Cervix Dilatation Vaginal exam"
* group[=].element[=].target[=].relationship = #equivalent
