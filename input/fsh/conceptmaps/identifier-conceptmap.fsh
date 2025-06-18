Instance: LegacyIdentifierToSGHI
InstanceOf: ConceptMap
Title: "Legacy → SGHI Identifier Types"
Description: "Maps obsolete identifier-type codes to the SGHI canonical codes."
Usage: #definition   

* version = "1.0.0"
* status = #active

* group[0].element[0].code = #HEALTH_ID
* group[0].element[0].display = "Health ID"
* group[0].element[0].target[0].code = #slade-health-id
* group[0].element[0].target[0].display = "Slade Health ID"
* group[0].element[0].target[0].relationship = #equivalent

* group[0].element[1].code = #NATIONAL_ID
* group[0].element[1].display = "National ID"
* group[0].element[1].target[0].code = #national-id
* group[0].element[1].target[0].display = "National ID"
* group[0].element[1].target[0].relationship = #equivalent
