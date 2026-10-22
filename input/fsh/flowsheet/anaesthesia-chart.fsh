Instance: anaesthesia-chart
InstanceOf: ObservationDefinition
Usage: #definition
Title: "Anaesthesia chart"
Description: "The flowsheet template for the intra-operative anaesthesia record."
* status = #active
* name = "anaesthesia-chart"
* title = "Anaesthesia chart"
* version = "1.0.0"
* code = SGHIDocumentTypeCodeSystem#anaesthesia-chart "Anaesthesia chart"
* useContext[+].code = $usage-context-type#workflow
* useContext[=].valueCodeableConcept = SGHIFlowsheetContextCodeSystem#theatre
* extension[FlowsheetGrouping].valueCode = #5min
* extension[FlowsheetScope].valueCode = #encounter
* extension[FlowsheetDefaultWindow].valueQuantity = 12 'h'
* extension[FlowsheetMaxWindow].valueQuantity = 3 'd'
* extension[FlowsheetAliases].valueCanonical = Canonical(flowsheet-observation-aliases)
* hasMember[+] = Reference(anaesthesia-chart-case)
* hasMember[+] = Reference(anaesthesia-chart-monitoring)

Instance: anaesthesia-chart-case
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetSection(case, The case)
* code = SGHIDocumentTypeCodeSystem#anaesthesia-chart "Anaesthesia chart"
* extension[FlowsheetHeader].valueBoolean = true
* hasMember[+] = Reference(anaesthesia-chart-blood-loss)
* hasMember[+] = Reference(anaesthesia-chart-duration)

Instance: anaesthesia-chart-blood-loss
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(blood-loss, Estimated blood loss)
* code = $loinc#8717-1 "Surgical operation note estimated blood loss [Volume]"
* permittedDataType = #Quantity
* permittedUnit = $ucum#mL "mL"

Instance: anaesthesia-chart-duration
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(duration, Duration of anaesthesia)
* code = $loinc#89874-2 "Duration of anesthesia"
* permittedDataType = #Quantity
* permittedUnit = $ucum#min "minutes"

Instance: anaesthesia-chart-monitoring
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetSection(monitoring, Monitoring)
* code = SGHIDocumentTypeCodeSystem#anaesthesia-chart "Anaesthesia chart"
* hasMember[+] = Reference(anaesthesia-chart-sbp)
* hasMember[+] = Reference(anaesthesia-chart-dbp)
* hasMember[+] = Reference(anaesthesia-chart-pulse)
* hasMember[+] = Reference(anaesthesia-chart-spo2)

Instance: anaesthesia-chart-sbp
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(sbp, Systolic BP)
* code = $loinc#8480-6 "Systolic blood pressure"
* permittedDataType = #Quantity
* permittedUnit = $ucum#mm[Hg] "mmHg"
* extension[FlowsheetPlot].valueRange.low = 40 'mm[Hg]'
* extension[FlowsheetPlot].valueRange.high = 200 'mm[Hg]'
* insert AbsoluteRange(40, 300, mm[Hg])

Instance: anaesthesia-chart-dbp
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(dbp, Diastolic BP)
* code = $loinc#8462-4 "Diastolic blood pressure"
* permittedDataType = #Quantity
* permittedUnit = $ucum#mm[Hg] "mmHg"
* extension[FlowsheetPlot].valueRange.low = 40 'mm[Hg]'
* extension[FlowsheetPlot].valueRange.high = 200 'mm[Hg]'
* insert AbsoluteRange(20, 200, mm[Hg])

Instance: anaesthesia-chart-pulse
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(pulse, Pulse)
* code = $loinc#8867-4 "Heart rate"
* permittedDataType = #Quantity
* permittedUnit = $ucum#/min "bpm"
* extension[FlowsheetPlot].valueRange.low = 40 '/min'
* extension[FlowsheetPlot].valueRange.high = 140 '/min'
* insert AbsoluteRange(20, 250, /min)

Instance: anaesthesia-chart-spo2
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(spo2, SpO2)
* code = $loinc#59408-5 "Oxygen saturation in Arterial blood by Pulse oximetry"
* permittedDataType = #Quantity
* permittedUnit = $ucum#% "%"
* extension[FlowsheetPlot].valueRange.low = 80 '%'
* extension[FlowsheetPlot].valueRange.high = 100 '%'
* extension[FlowsheetAlert].valueString = "<94"
* insert AbsoluteRange(50, 100, %)
