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

* group[0].element[10].code = #163591
* group[0].element[10].display = "Mammogram"
* group[0].element[10].target[0].code = #103892-6
* group[0].element[10].target[0].display = "DBT Breast screening"
* group[0].element[10].target[0].relationship = #equivalent

* group[0].element[11].code = #162825
* group[0].element[11].display = "Breast examination (text)"
* group[0].element[11].target[0].code = #10193-1
* group[0].element[11].target[0].display = "Physical findings of Breasts Narrative"
* group[0].element[11].target[0].relationship = #equivalent


* group[0].element[12].code = #164805
* group[0].element[12].display = "VIA screening for women aged between 30-49 years"
* group[0].element[12].target[0].code = #33717-0
* group[0].element[12].target[0].display = "Cervical AndOr vaginal cytology study"
* group[0].element[12].target[0].relationship = #equivalent

* group[0].element[13].code = #161288
* group[0].element[13].display = "Ultrasound of chest"
* group[0].element[13].target[0].code = #24630-6
* group[0].element[13].target[0].display = "US Chest"
* group[0].element[13].target[0].relationship = #equivalent

* group[0].element[14].code = #885
* group[0].element[14].display = "Papanicolaou smear"
* group[0].element[14].target[0].code = #86662-4
* group[0].element[14].target[0].display = "Pap smear tests - FPAR 2.0 set"
* group[0].element[14].target[0].relationship = #equivalent

* group[0].element[15].code = #159859
* group[0].element[15].display = "Polymerase chain reaction, human papilloma virus, qualitative"
* group[0].element[15].target[0].code = #86658-2
* group[0].element[15].target[0].display = "HPV tests - FPAR 2.0 set"
* group[0].element[15].target[0].relationship = #equivalent

* group[0].element[16].code = #168651
* group[0].element[16].display = "Magnetic resonance imaging of breast"
* group[0].element[16].target[0].code = #30794-2
* group[0].element[16].target[0].display = "MR Breast"
* group[0].element[16].target[0].relationship = #equivalent


* group[0].element[17].code = #162927
* group[0].element[17].display = "Excisional biopsy of breast"
* group[0].element[17].target[0].code = #42448-1
* group[0].element[17].target[0].display = "US Guidance for excisional biopsy of Breast"
* group[0].element[17].target[0].relationship = #equivalent

* group[0].element[18].code = #167166
* group[0].element[18].display = "Immune stain study"
* group[0].element[18].target[0].code = #55229-9
* group[0].element[18].target[0].display = "Immune stain study"
* group[0].element[18].target[0].relationship = #equivalent

* group[0].element[19].code = #167166
* group[0].element[19].display = "Immune stain study"
* group[0].element[19].target[0].code = #55229-9
* group[0].element[19].target[0].display = "Immune stain study"
* group[0].element[19].target[0].relationship = #equivalent

* group[0].element[20].code = #160980
* group[0].element[20].display = "Prostate examination (text)"
* group[0].element[20].target[0].code = #32465-7
* group[0].element[20].target[0].display = "Physical findings of Prostate"
* group[0].element[20].target[0].relationship = #equivalent

* group[0].element[21].code = #161939
* group[0].element[21].display = "Whole blood"
* group[0].element[21].target[0].code = #100716-0
* group[0].element[21].target[0].display = "Prostate specific Ag [Mass/volume] in DBS"
* group[0].element[21].target[0].relationship = #equivalent


* group[0].element[22].code = #160406
* group[0].element[22].display = "Bilateral"
* group[0].element[22].target[0].code = #26223-8
* group[0].element[22].target[0].display = "US Extremity - bilateral"
* group[0].element[22].target[0].relationship = #equivalent

* group[0].element[23].code = #147661
* group[0].element[23].display = "Benign Neoplasm of Skin of Breast"
* group[0].element[23].target[0].code = #63911-2
* group[0].element[23].target[0].display = "Fibrocystic or other benign breast disease confirmed by breast biopsy [PhenX]"
* group[0].element[23].target[0].relationship = #equivalent

* group[0].element[24].code = #161290
* group[0].element[24].display = "Ultrasound of right breast"
* group[0].element[24].target[0].code = #26216-2
* group[0].element[24].target[0].display = "US Breast - right"
* group[0].element[24].target[0].relationship = #equivalent


* group[0].element[25].code = #154451
* group[0].element[25].display = "abnormal Papanicolaou smear of vagina"
* group[0].element[25].target[0].code = #86662-4
* group[0].element[25].target[0].display = "Pap smear tests - FPAR 2.0 set"
* group[0].element[25].target[0].relationship = #equivalent

* group[0].element[26].code = #166674
* group[0].element[26].display = "High Risk"
* group[0].element[26].target[0].code = #86662-4
* group[0].element[26].target[0].display = "Pap smear tests - FPAR 2.0 set"
* group[0].element[26].target[0].relationship = #equivalent