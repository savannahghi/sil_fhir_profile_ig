Instance: CIELtoLoincDiagnosticReportMap
InstanceOf: ConceptMap
Usage: #definition
Title: "CIEL → LOINC DiagnosticReport .code Map (breast-imaging + chest US)"

* url    = "https://fhir.slade360.co.ke/fhir/ConceptMap/CIELtoLoincDiagnosticReportMap"
* status = #active

* group[0].target = "http://loinc.org"

* group[0].element[0].code                = #168651
* group[0].element[0].display             = "Magnetic resonance imaging of breast"
* group[0].element[0].target[0].code      = #LA24328-9    
* group[0].element[0].target[0].display   = "MRI scan"
* group[0].element[0].target[0].relationship = #equivalent

* group[0].element[1].code                = #163591
* group[0].element[1].display             = "Mammogram"
* group[0].element[1].target[0].code      = #LA16046-7       
* group[0].element[1].target[0].display   = "Mammogram"
* group[0].element[1].target[0].relationship = #equivalent

* group[0].element[2].code                = #162825
* group[0].element[2].display             = "Breast examination (text)"
* group[0].element[2].target[0].code      = #32422-8          
* group[0].element[2].target[0].display   = "Physical findings of Breast"
* group[0].element[2].target[0].relationship = #equivalent

* group[0].element[3].code                = #160406
* group[0].element[3].display             = "Bilateral"
* group[0].element[3].target[0].code      = #LA25377-5       
* group[0].element[3].target[0].display   = "Bilateral"
* group[0].element[3].target[0].relationship = #equivalent

* group[0].element[4].code                = #161288
* group[0].element[4].display             = "Ultrasound of chest"
* group[0].element[4].target[0].code      = #24630-6          
* group[0].element[4].target[0].display   = "US Chest"
* group[0].element[4].target[0].relationship = #equivalent     