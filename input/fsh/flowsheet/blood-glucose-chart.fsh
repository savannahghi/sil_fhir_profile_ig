Instance: blood-glucose-chart
InstanceOf: ObservationDefinition
Usage: #definition
Title: "Blood glucose chart"
Description: "The flowsheet template for capillary blood glucose monitoring across encounters."
* status = #active
* name = "blood-glucose-chart"
* title = "Blood glucose"
* version = "1.0.0"
* code = SGHIDocumentTypeCodeSystem#blood-glucose-chart "Blood glucose chart"
* useContext[+].code = $usage-context-type#workflow
* useContext[=].valueCodeableConcept = SGHIFlowsheetContextCodeSystem#inpatient
* useContext[+].code = $usage-context-type#workflow
* useContext[=].valueCodeableConcept = SGHIFlowsheetContextCodeSystem#outpatient
* extension[FlowsheetGrouping].valueCode = #raw
* extension[FlowsheetScope].valueCode = #patient
* extension[FlowsheetDefaultWindow].valueQuantity = 7 'd'
* extension[FlowsheetMaxWindow].valueQuantity = 90 'd'
* extension[FlowsheetAliases].valueCanonical = Canonical(flowsheet-observation-aliases)
* hasMember[+] = Reference(blood-glucose-chart-glucose)
* hasMember[+] = Reference(blood-glucose-chart-insulin)

Instance: blood-glucose-chart-glucose
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(glucose, Capillary glucose)
* code = $loinc#14743-9 "Glucose [Moles/volume] in Capillary blood by Glucometer"
* permittedDataType = #Quantity
* permittedUnit = $ucum#mmol/L "mmol/L"
* extension[FlowsheetDecimals].valueInteger = 1
* extension[FlowsheetAlert].valueString = "<4.0, >10.0"
* extension[FlowsheetPlot].valueRange.low = 2 'mmol/L'
* extension[FlowsheetPlot].valueRange.high = 20 'mmol/L'
* insert AbsoluteRange(0.5, 50, mmol/L)

Instance: blood-glucose-chart-insulin
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(insulin, Insulin given)
* code = $loinc#4287-9 "Insulin regular [Mass] of Dose"
* permittedDataType = #string
