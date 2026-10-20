Instance: antenatal-ward-chart
InstanceOf: ObservationDefinition
Usage: #definition
Title: "Antenatal ward chart"
Description: "The flowsheet template for an antenatal admission."
* status = #active
* name = "antenatal-ward-chart"
* title = "Antenatal ward"
* version = "1.0.0"
* code = SGHIDocumentTypeCodeSystem#antenatal-ward-chart "Antenatal ward chart"
* useContext[+].code = $usage-context-type#workflow
* useContext[=].valueCodeableConcept = SGHIFlowsheetContextCodeSystem#antenatal
* extension[FlowsheetGrouping].valueCode = #hourly
* extension[FlowsheetScope].valueCode = #encounter
* extension[FlowsheetDefaultWindow].valueQuantity = 48 'h'
* extension[FlowsheetMaxWindow].valueQuantity = 14 'd'
* extension[FlowsheetAliases].valueCanonical = Canonical(flowsheet-observation-aliases)
* hasMember[+] = Reference(antenatal-ward-chart-admission)
* hasMember[+] = Reference(antenatal-ward-chart-round)

Instance: antenatal-ward-chart-admission
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetSection(admission, Admission)
* code = SGHIDocumentTypeCodeSystem#antenatal-ward-chart "Antenatal ward chart"
* extension[FlowsheetHeader].valueBoolean = true
* hasMember[+] = Reference(antenatal-ward-chart-edd)
* hasMember[+] = Reference(antenatal-ward-chart-reason)
* hasMember[+] = Reference(antenatal-ward-chart-parity)

Instance: antenatal-ward-chart-edd
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(edd, Expected delivery)
* code = $loinc#11778-8 "Delivery date Estimated"
* permittedDataType = #dateTime

Instance: antenatal-ward-chart-reason
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(reason, Reason for admission)
* code = $loinc#11450-4 "Problem list - Reported"
* permittedDataType = #string

Instance: antenatal-ward-chart-parity
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(parity, Parity)
* code = $sghi-concept#obstetric-history-parity "Parity"
* permittedDataType = #integer

Instance: antenatal-ward-chart-round
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetSection(round, Each round)
* code = SGHIDocumentTypeCodeSystem#antenatal-ward-chart "Antenatal ward chart"
* hasMember[+] = Reference(antenatal-ward-chart-temp)
* hasMember[+] = Reference(antenatal-ward-chart-pulse)
* hasMember[+] = Reference(antenatal-ward-chart-rr)
* hasMember[+] = Reference(antenatal-ward-chart-sbp)
* hasMember[+] = Reference(antenatal-ward-chart-dbp)
* hasMember[+] = Reference(antenatal-ward-chart-fhr)
* hasMember[+] = Reference(antenatal-ward-chart-lie)
* hasMember[+] = Reference(antenatal-ward-chart-presentation)
* hasMember[+] = Reference(antenatal-ward-chart-bowels)

Instance: antenatal-ward-chart-temp
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(temp, Temperature)
* code = $loinc#8310-5 "Body temperature"
* permittedDataType = #Quantity
* permittedUnit = $ucum#Cel "°C"
* extension[FlowsheetDecimals].valueInteger = 1
* insert AbsoluteRange(25, 45, Cel)

Instance: antenatal-ward-chart-pulse
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(pulse, Pulse)
* code = $loinc#8867-4 "Heart rate"
* permittedDataType = #Quantity
* permittedUnit = $ucum#/min "bpm"
* insert AbsoluteRange(20, 250, /min)

Instance: antenatal-ward-chart-rr
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(rr, Respiration rate)
* code = $loinc#9279-1 "Respiratory rate"
* permittedDataType = #Quantity
* permittedUnit = $ucum#/min "breaths/min"
* insert AbsoluteRange(4, 80, /min)

Instance: antenatal-ward-chart-sbp
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(sbp, Systolic BP)
* code = $loinc#8480-6 "Systolic blood pressure"
* permittedDataType = #Quantity
* permittedUnit = $ucum#mm[Hg] "mmHg"
* extension[FlowsheetAlert].valueString = "≥140"
* insert AbsoluteRange(40, 300, mm[Hg])

Instance: antenatal-ward-chart-dbp
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(dbp, Diastolic BP)
* code = $loinc#8462-4 "Diastolic blood pressure"
* permittedDataType = #Quantity
* permittedUnit = $ucum#mm[Hg] "mmHg"
* extension[FlowsheetAlert].valueString = "≥90"
* insert AbsoluteRange(20, 200, mm[Hg])

Instance: antenatal-ward-chart-fhr
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(fhr, Fetal heart rate)
* code = $loinc#55283-6 "Fetal Heart rate"
* permittedDataType = #Quantity
* permittedUnit = $ucum#/min "bpm"
* extension[FlowsheetAlert].valueString = "<110, >160"
* extension[FlowsheetPlot].valueRange.low = 80 '/min'
* extension[FlowsheetPlot].valueRange.high = 200 '/min'
* insert AbsoluteRange(50, 240, /min)

Instance: antenatal-ward-chart-lie
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(lie, Lie)
* code = $sghi-concept#fetal-lie "Fetal lie"
* permittedDataType = #CodeableConcept

Instance: antenatal-ward-chart-presentation
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(presentation, Presentation)
* code = $sghi-concept#obstetric-fetal-presentation "Fetal presentation"
* permittedDataType = #CodeableConcept

Instance: antenatal-ward-chart-bowels
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(bowels, Bowels opened)
* code = $sghi-concept#obstetric-bowels-opened "Bowels opened"
* permittedDataType = #CodeableConcept
