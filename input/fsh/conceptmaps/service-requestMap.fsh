Instance: CIELtoLOINCServiceRequestMap
InstanceOf: ConceptMap
Usage: #definition
Title: "CIEL to LOINC ServiceRequest Code Map"

* url = "https://fhir.slade360.co.ke/fhir/ConceptMap/CIELtoLOINCServiceRequestMap"
* status = #active

* group[0].target = "http://loinc.org"
* group[0].source = "*"

* group[0].element[0].code = #TEST
* group[0].element[0].display = "HPV"
* group[0].element[0].target[0].code = #LA7556-9
* group[0].element[0].target[0].display = "Test"
* group[0].element[0].target[0].relationship = #equivalent

* group[0].element[1].code = #159623
* group[0].element[1].display = "Treatment"
* group[0].element[1].target[0].code = #42349-1
* group[0].element[1].target[0].display = "Reason for referral (narrative)"
* group[0].element[1].target[0].relationship = #equivalent

* group[0].element[2].code = #161288
* group[0].element[2].display = "Ultrasound of chest"
* group[0].element[2].target[0].code = #24630-6
* group[0].element[2].target[0].display = "US Chest"
* group[0].element[2].target[0].relationship = #equivalent

* group[0].element[3].code = #162825
* group[0].element[3].display = "Breast examination (text)"
* group[0].element[3].target[0].code = #32422-8
* group[0].element[3].target[0].display = "Physical findings of Breast"
* group[0].element[3].target[0].relationship = #equivalent


* group[0].element[4].code = #162927
* group[0].element[4].display = "Excisional biopsy of breast"
* group[0].element[4].target[0].code = #42448-1
* group[0].element[4].target[0].display = "US Guidance for excisional biopsy of Breast"
* group[0].element[4].target[0].relationship = #equivalent

* group[0].element[5].code = #163591
* group[0].element[5].display = "Mammogram"
* group[0].element[5].target[0].code = #24606-6
* group[0].element[5].target[0].display = "MG Breast Screening"
* group[0].element[5].target[0].relationship = #equivalent


* group[0].element[6].code = #168651
* group[0].element[6].display = "Magnetic resonance imaging of breast"
* group[0].element[6].target[0].code = #30794-2
* group[0].element[6].target[0].display = "MR Breast"
* group[0].element[6].target[0].relationship = #equivalent

* group[0].element[7].code = #885
* group[0].element[7].display = "Papanicolaou smear"
* group[0].element[7].target[0].code = #19766-5
* group[0].element[7].target[0].display = "Microscopic observation [Identifier] in Cervical or vaginal smear or scraping by Cyto stain Narrative"
* group[0].element[7].target[0].relationship = #equivalent

* group[0].element[8].code = #160980
* group[0].element[8].display = "Prostate examination (text)"
* group[0].element[8].target[0].code = #LA16051-7
* group[0].element[8].target[0].display = "Rectal examination of prostate"
* group[0].element[8].target[0].relationship = #equivalent

* group[0].element[9].code = #161290	 
* group[0].element[9].display = "Ultrasound of right breast"
* group[0].element[9].target[0].code = #26216-2
* group[0].element[9].target[0].display = "US Breast - right"
* group[0].element[9].target[0].relationship = #equivalent

* group[0].element[10].code = #161939	 
* group[0].element[10].display = "Whole blood"
* group[0].element[10].target[0].code = #51876-1
* group[0].element[10].target[0].display = "Whole blood"
* group[0].element[10].target[0].relationship = #equivalent
