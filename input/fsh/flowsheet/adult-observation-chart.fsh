Instance: adult-observation-chart
InstanceOf: ObservationDefinition
Usage: #definition
Title: "Adult observation chart"
Description: "The flowsheet template for adult ward observations."
* status = #active
* name = "adult-observation-chart"
* title = "Adult observations"
* version = "1.0.0"
* code = SGHIDocumentTypeCodeSystem#adult-observation-chart "Adult observation chart"
* useContext[+].code = $usage-context-type#workflow
* useContext[=].valueCodeableConcept = SGHIFlowsheetContextCodeSystem#inpatient
* extension[FlowsheetGrouping].valueCode = #1min
* extension[FlowsheetScope].valueCode = #encounter
* extension[FlowsheetDefaultWindow].valueQuantity = 24 'h'
* extension[FlowsheetMaxWindow].valueQuantity = 7 'd'
* extension[FlowsheetAliases].valueCanonical = Canonical(flowsheet-observation-aliases)
* hasMember[+] = Reference(adult-observation-chart-vital-signs)
* hasMember[+] = Reference(adult-observation-chart-scores)

Instance: adult-observation-chart-vital-signs
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetSection(vital-signs, Vital signs)
* code = SGHIDocumentTypeCodeSystem#adult-observation-chart "Adult observation chart"
* hasMember[+] = Reference(adult-observation-chart-rr)
* hasMember[+] = Reference(adult-observation-chart-spo2)
* hasMember[+] = Reference(adult-observation-chart-oxygen)
* hasMember[+] = Reference(adult-observation-chart-sbp)
* hasMember[+] = Reference(adult-observation-chart-dbp)
* hasMember[+] = Reference(adult-observation-chart-pulse)
* hasMember[+] = Reference(adult-observation-chart-acvpu)
* hasMember[+] = Reference(adult-observation-chart-temp)

Instance: adult-observation-chart-rr
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(rr, Respiration rate)
* code = $loinc#9279-1 "Respiratory rate"
* permittedDataType = #Quantity
* permittedUnit = $ucum#/min "breaths/min"
* extension[FlowsheetPlot].valueRange.low = 5 '/min'
* extension[FlowsheetPlot].valueRange.high = 40 '/min'
* insert AbsoluteRange(4, 80, /min)

Instance: adult-observation-chart-spo2
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(spo2, SpO2)
* code = $loinc#59408-5 "Oxygen saturation in Arterial blood by Pulse oximetry"
* permittedDataType = #Quantity
* permittedUnit = $ucum#% "%"
* extension[FlowsheetPlot].valueRange.low = 80 '%'
* extension[FlowsheetPlot].valueRange.high = 100 '%'
* insert AbsoluteRange(50, 100, %)

Instance: adult-observation-chart-oxygen
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(oxygen, Air or oxygen)
* code = $sghi-concept#on-supplemental-oxygen "On supplemental oxygen"
* permittedDataType = #boolean

Instance: adult-observation-chart-sbp
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(sbp, Systolic BP)
* code = $loinc#8480-6 "Systolic blood pressure"
* permittedDataType = #Quantity
* permittedUnit = $ucum#mm[Hg] "mmHg"
* extension[FlowsheetPlot].valueRange.low = 60 'mm[Hg]'
* extension[FlowsheetPlot].valueRange.high = 220 'mm[Hg]'
* insert AbsoluteRange(40, 300, mm[Hg])

Instance: adult-observation-chart-dbp
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(dbp, Diastolic BP)
* code = $loinc#8462-4 "Diastolic blood pressure"
* permittedDataType = #Quantity
* permittedUnit = $ucum#mm[Hg] "mmHg"
* extension[FlowsheetPlot].valueRange.low = 30 'mm[Hg]'
* extension[FlowsheetPlot].valueRange.high = 130 'mm[Hg]'
* insert AbsoluteRange(20, 200, mm[Hg])

Instance: adult-observation-chart-pulse
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(pulse, Pulse)
* code = $loinc#8867-4 "Heart rate"
* permittedDataType = #Quantity
* permittedUnit = $ucum#/min "bpm"
* extension[FlowsheetPlot].valueRange.low = 30 '/min'
* extension[FlowsheetPlot].valueRange.high = 160 '/min'
* insert AbsoluteRange(20, 250, /min)

Instance: adult-observation-chart-acvpu
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(acvpu, Consciousness)
* code = $sghi-concept#acvpu-conscious-level "ACVPU conscious level"
* permittedDataType = #CodeableConcept

Instance: adult-observation-chart-temp
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(temp, Temperature)
* code = $loinc#8310-5 "Body temperature"
* permittedDataType = #Quantity
* permittedUnit = $ucum#Cel "°C"
* extension[FlowsheetPlot].valueRange.low = 34 'Cel'
* extension[FlowsheetPlot].valueRange.high = 41 'Cel'
* extension[FlowsheetDecimals].valueInteger = 1
* insert AbsoluteRange(25, 45, Cel)

Instance: adult-observation-chart-scores
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetSection(scores, Scores)
* code = SGHIDocumentTypeCodeSystem#adult-observation-chart "Adult observation chart"
* hasMember[+] = Reference(adult-observation-chart-map)
* hasMember[+] = Reference(adult-observation-chart-news2)

Instance: adult-observation-chart-map
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(map, Mean arterial pressure)
* code = $loinc#8478-0 "Mean blood pressure"
* permittedDataType = #Quantity
* permittedUnit = $ucum#mm[Hg] "mmHg"
* extension[FlowsheetPlot].valueRange.low = 40 'mm[Hg]'
* extension[FlowsheetPlot].valueRange.high = 140 'mm[Hg]'

Instance: adult-observation-chart-news2
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(news2, NEWS2 total)
* code = $sghi-concept#news2-total "NEWS2 total score"
* permittedDataType = #integer
* permittedUnit = $ucum#"{score}" "score"
* extension[FlowsheetPlot].valueRange.low = 0 '{score}'
* extension[FlowsheetPlot].valueRange.high = 20 '{score}'
