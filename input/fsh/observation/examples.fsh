Instance: ExampleSGHIObservation
InstanceOf: SGHIObservation
Description: "An example of an Observation resource conforming to the SGHI Observation profile"

* identifier[0]
  * use = #official
  * type.coding[0] = $identifier-type-cs#MR "Medical Record Number"
  * value = "3456789QWERTY"
  * system = $identifier-type-cs
  * assigner = Reference(ExampleSGHIOrganization)
* status = #final "Final"
* code = #100018-1 "Hospice care Note"
* category = #laboratory "Laboratory"
* subject = Reference(ExampleSGHIPatient)
* encounter = Reference(ExampleSGHIEncounter)
* performer = Reference(ExampleSGHIOrganization)
* effectiveInstant = "2025-02-10T08:00:00Z"
* issued = "2025-02-10T08:00:00Z"
* interpretation[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation"
* interpretation[0].coding[0].code = #N
* interpretation[0].coding[0].display = "Normal"
* code.coding.system = "http://loinc.org"
* code.coding.code = #N
* code.coding.display = "Normal"
Instance: ExampleSGHIVitalSignsBloodPressure
InstanceOf: SGHIObservation
Description: "A blood pressure panel extracted from a vitals questionnaire response, with each component flagged against its own reference range and the worst component tier rolled up to the panel."

* identifier[0]
  * use = #official
  * type.coding[0] = $identifier-type-cs#MR "Medical Record Number"
  * value = "OBS-BP-0001"
  * system = $identifier-type-cs
  * assigner = Reference(ExampleSGHIOrganization)
* status = #final "Final"
* category.coding[0].system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding[0].code = #vital-signs
* category.coding[0].display = "Vital Signs"
* code.coding[0].system = "http://loinc.org"
* code.coding[0].code = #55284-4
* code.coding[0].display = "Blood pressure systolic and diastolic"
* subject = Reference(ExampleSGHIPatient)
* encounter = Reference(ExampleSGHIEncounter)
* performer = Reference(ExampleSGHIOrganization)
* effectiveInstant = "2025-02-10T08:00:00Z"
* issued = "2025-02-10T08:00:00Z"

// Panel-level interpretation is the worst of the component tiers: the systolic
// reading is critically high, so the panel reads HH even though diastolic is high.
* interpretation[0].coding[0].system = $v3-ObservationInterpretation
* interpretation[0].coding[0].code = #HH
* interpretation[0].coding[0].display = "Critically high"

* component[0].code.coding[0].system = "http://loinc.org"
* component[0].code.coding[0].code = #8480-6
* component[0].code.coding[0].display = "Systolic blood pressure"
* component[0].valueQuantity.value = 190
* component[0].valueQuantity.system = "http://unitsofmeasure.org"
* component[0].valueQuantity.code = #mm[Hg]
* component[0].valueQuantity.unit = "millimeter of mercury"
* component[0].interpretation[0].coding[0].system = $v3-ObservationInterpretation
* component[0].interpretation[0].coding[0].code = #HH
* component[0].interpretation[0].coding[0].display = "Critically high"
* component[0].referenceRange[0].low.value = 90
* component[0].referenceRange[0].low.system = "http://unitsofmeasure.org"
* component[0].referenceRange[0].low.code = #mm[Hg]
* component[0].referenceRange[0].low.unit = "millimeter of mercury"
* component[0].referenceRange[0].high.value = 129
* component[0].referenceRange[0].high.system = "http://unitsofmeasure.org"
* component[0].referenceRange[0].high.code = #mm[Hg]
* component[0].referenceRange[0].high.unit = "millimeter of mercury"
* component[0].referenceRange[0].type.coding[0].system = $referencerange-meaning
* component[0].referenceRange[0].type.coding[0].code = #normal
* component[0].referenceRange[0].type.coding[0].display = "Normal Range"

* component[1].code.coding[0].system = "http://loinc.org"
* component[1].code.coding[0].code = #8462-4
* component[1].code.coding[0].display = "Diastolic blood pressure"
* component[1].valueQuantity.value = 95
* component[1].valueQuantity.system = "http://unitsofmeasure.org"
* component[1].valueQuantity.code = #mm[Hg]
* component[1].valueQuantity.unit = "millimeter of mercury"
* component[1].interpretation[0].coding[0].system = $v3-ObservationInterpretation
* component[1].interpretation[0].coding[0].code = #H
* component[1].interpretation[0].coding[0].display = "High"
* component[1].referenceRange[0].low.value = 60
* component[1].referenceRange[0].low.system = "http://unitsofmeasure.org"
* component[1].referenceRange[0].low.code = #mm[Hg]
* component[1].referenceRange[0].low.unit = "millimeter of mercury"
* component[1].referenceRange[0].high.value = 79
* component[1].referenceRange[0].high.system = "http://unitsofmeasure.org"
* component[1].referenceRange[0].high.code = #mm[Hg]
* component[1].referenceRange[0].high.unit = "millimeter of mercury"
* component[1].referenceRange[0].type.coding[0].system = $referencerange-meaning
* component[1].referenceRange[0].type.coding[0].code = #normal
* component[1].referenceRange[0].type.coding[0].display = "Normal Range"

Instance: ExampleSGHIVitalSignsTemperature
InstanceOf: SGHIObservation
Description: "A body temperature vital sign carrying both the normal band and the critical thresholds as separate reference range entries."

* identifier[0]
  * use = #official
  * type.coding[0] = $identifier-type-cs#MR "Medical Record Number"
  * value = "OBS-TEMP-0001"
  * system = $identifier-type-cs
  * assigner = Reference(ExampleSGHIOrganization)
* status = #final "Final"
* category.coding[0].system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding[0].code = #vital-signs
* category.coding[0].display = "Vital Signs"
* code.coding[0].system = "http://loinc.org"
* code.coding[0].code = #8310-5
* code.coding[0].display = "Body temperature"
* subject = Reference(ExampleSGHIPatient)
* encounter = Reference(ExampleSGHIEncounter)
* performer = Reference(ExampleSGHIOrganization)
* effectiveInstant = "2025-02-10T08:00:00Z"
* issued = "2025-02-10T08:00:00Z"
* valueQuantity.value = 37.0
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #Cel
* valueQuantity.unit = "degree Celsius"
* interpretation[0].coding[0].system = $v3-ObservationInterpretation
* interpretation[0].coding[0].code = #N
* interpretation[0].coding[0].display = "Normal"
* referenceRange[0].low.value = 36.5
* referenceRange[0].low.system = "http://unitsofmeasure.org"
* referenceRange[0].low.code = #Cel
* referenceRange[0].low.unit = "degree Celsius"
* referenceRange[0].high.value = 37.5
* referenceRange[0].high.system = "http://unitsofmeasure.org"
* referenceRange[0].high.code = #Cel
* referenceRange[0].high.unit = "degree Celsius"
* referenceRange[0].type.coding[0].system = $referencerange-meaning
* referenceRange[0].type.coding[0].code = #normal
* referenceRange[0].type.coding[0].display = "Normal Range"
* referenceRange[1].low.value = 35.0
* referenceRange[1].low.system = "http://unitsofmeasure.org"
* referenceRange[1].low.code = #Cel
* referenceRange[1].low.unit = "degree Celsius"
* referenceRange[1].high.value = 40.0
* referenceRange[1].high.system = "http://unitsofmeasure.org"
* referenceRange[1].high.code = #Cel
* referenceRange[1].high.unit = "degree Celsius"
* referenceRange[1].type.coding[0].system = $referencerange-meaning
* referenceRange[1].type.coding[0].code = #critical
* referenceRange[1].type.coding[0].display = "Critical Range"
