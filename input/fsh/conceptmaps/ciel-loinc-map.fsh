Instance: CIELtoLOINCObservationMap
InstanceOf: ConceptMap
Usage: #definition
Title: "CIEL to LOINC Observation Code Map"

* url = "https://fhir.slade360.co.ke/fhir/ConceptMap/CIELtoLOINCObservationMap"
* status = #active
* group[0].source = "https://fhir.slade360.co.ke/fhir/CodeSystem/retired-ciel-codes"
* group[0].target = "http://loinc.org"

* group[0].element[0].code = #5089
* group[0].element[0].display = "Weight (kg)"
* group[0].element[0].target[0].code = #29463-7
* group[0].element[0].target[0].display = "Body weight"
* group[0].element[0].target[0].relationship = #equivalent

* group[0].element[1].code = #5086
* group[0].element[1].display = "Diastolic blood pressure"
* group[0].element[1].target[0].code = #8462-4
* group[0].element[1].target[0].display = "Diastolic blood pressure"
* group[0].element[1].target[0].relationship = #equivalent

* group[0].element[2].code = #5085
* group[0].element[2].display = "Systolic blood pressure"
* group[0].element[2].target[0].code = #8480-6
* group[0].element[2].target[0].display = "Systolic blood pressure"
* group[0].element[2].target[0].relationship = #equivalent

* group[0].element[3].code = #5087
* group[0].element[3].display = "Pulse"
* group[0].element[3].target[0].code = #8867-4
* group[0].element[3].target[0].display = "Heart rate"
* group[0].element[3].target[0].relationship = #equivalent

* group[0].element[4].code = #1342
* group[0].element[4].display = "Body mass index"
* group[0].element[4].target[0].code = #39156-5
* group[0].element[4].target[0].display = "Body mass index (BMI)"
* group[0].element[4].target[0].relationship = #equivalent

* group[0].element[5].code = #5090
* group[0].element[5].display = "Height (cm)"
* group[0].element[5].target[0].code = #8302-2
* group[0].element[5].target[0].display = "Body height"
* group[0].element[5].target[0].relationship = #equivalent

* group[0].element[6].code = #1343
* group[0].element[6].display = "Mid-upper arm circumference"
* group[0].element[6].target[0].code = #56072-4
* group[0].element[6].target[0].display = "Arm circumference C-mid upper"
* group[0].element[6].target[0].relationship = #equivalent

* group[0].element[7].code = #5088
* group[0].element[7].display = "Temperature (C)"
* group[0].element[7].target[0].code = #8310-5
* group[0].element[7].target[0].display = "Body temperature"
* group[0].element[7].target[0].relationship = #equivalent

* group[0].element[8].code = #5092
* group[0].element[8].display = "Arterial blood oxygen saturation (pulse oximeter)"
* group[0].element[8].target[0].code = #59408-5
* group[0].element[8].target[0].display = "Oxygen saturation in Arterial blood by Pulse oximetry"
* group[0].element[8].target[0].relationship = #equivalent

* group[0].element[9].code = #5242
* group[0].element[9].display = "Respiratory rate"
* group[0].element[9].target[0].code = #9279-1
* group[0].element[9].target[0].display = "Respiratory rate"
* group[0].element[9].target[0].relationship = #equivalent