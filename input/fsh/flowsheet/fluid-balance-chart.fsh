Instance: fluid-balance-chart
InstanceOf: ObservationDefinition
Usage: #definition
Title: "Fluid balance chart"
Description: "The flowsheet template for the intake and output record."
* status = #active
* name = "fluid-balance-chart"
* title = "Fluid balance"
* version = "1.0.0"
* code = SGHIDocumentTypeCodeSystem#fluid-balance-chart "Fluid balance chart"
* useContext[+].code = $usage-context-type#workflow
* useContext[=].valueCodeableConcept = SGHIFlowsheetContextCodeSystem#inpatient
* extension[FlowsheetGrouping].valueCode = #hourly
* extension[FlowsheetScope].valueCode = #encounter
* extension[FlowsheetDefaultWindow].valueQuantity = 24 'h'
* extension[FlowsheetMaxWindow].valueQuantity = 14 'd'
* extension[FlowsheetAliases].valueCanonical = Canonical(flowsheet-observation-aliases)
* hasMember[+] = Reference(fluid-balance-chart-intake)
* hasMember[+] = Reference(fluid-balance-chart-output)
* hasMember[+] = Reference(fluid-balance-chart-totals)

Instance: fluid-balance-chart-intake
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetSection(intake, Intake)
* code = SGHIDocumentTypeCodeSystem#fluid-balance-chart "Fluid balance chart"
* hasMember[+] = Reference(fluid-balance-chart-oral)
* hasMember[+] = Reference(fluid-balance-chart-infusion)
* hasMember[+] = Reference(fluid-balance-chart-intravenous)
* hasMember[+] = Reference(fluid-balance-chart-nasogastric-feed)

Instance: fluid-balance-chart-oral
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(oral, Oral)
* code = $sghi-concept#fluid-balance-oral-fluid-volume "Oral fluid volume"
* permittedDataType = #Quantity
* permittedUnit = $ucum#mL "mL"
* extension[FlowsheetAggregate].valueCode = #sum

Instance: fluid-balance-chart-infusion
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(infusion, IV infusion)
* code = $sghi-concept#fluid-balance-iv-infusion-given "IV infusion given"
* permittedDataType = #string

Instance: fluid-balance-chart-intravenous
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(intravenous, IV volume)
* code = $sghi-concept#fluid-balance-iv-fluid-volume "IV fluid volume"
* permittedDataType = #Quantity
* permittedUnit = $ucum#mL "mL"
* extension[FlowsheetAggregate].valueCode = #sum

Instance: fluid-balance-chart-nasogastric-feed
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(nasogastric-feed, Nasogastric feed)
* code = $sghi-concept#fluid-balance-nasogastric-feed-volume "Nasogastric feed volume"
* permittedDataType = #Quantity
* permittedUnit = $ucum#mL "mL"
* extension[FlowsheetAggregate].valueCode = #sum

Instance: fluid-balance-chart-output
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetSection(output, Output)
* code = SGHIDocumentTypeCodeSystem#fluid-balance-chart "Fluid balance chart"
* hasMember[+] = Reference(fluid-balance-chart-urine)
* hasMember[+] = Reference(fluid-balance-chart-stool)
* hasMember[+] = Reference(fluid-balance-chart-vomit)
* hasMember[+] = Reference(fluid-balance-chart-nasogastric-suction)
* hasMember[+] = Reference(fluid-balance-chart-drainage)

Instance: fluid-balance-chart-urine
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(urine, Urine)
* code = $sghi-concept#fluid-balance-urine-volume "Urine volume"
* permittedDataType = #Quantity
* permittedUnit = $ucum#mL "mL"
* extension[FlowsheetAggregate].valueCode = #sum

Instance: fluid-balance-chart-stool
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(stool, Stool)
* code = $sghi-concept#fluid-balance-stool-volume "Stool volume"
* permittedDataType = #Quantity
* permittedUnit = $ucum#mL "mL"
* extension[FlowsheetAggregate].valueCode = #sum

Instance: fluid-balance-chart-vomit
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(vomit, Vomit)
* code = $sghi-concept#fluid-balance-vomit-volume "Vomit volume"
* permittedDataType = #Quantity
* permittedUnit = $ucum#mL "mL"
* extension[FlowsheetAggregate].valueCode = #sum

Instance: fluid-balance-chart-nasogastric-suction
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(nasogastric-suction, Nasogastric suction)
* code = $sghi-concept#fluid-balance-nasogastric-suction-volume "Nasogastric suction volume"
* permittedDataType = #Quantity
* permittedUnit = $ucum#mL "mL"
* extension[FlowsheetAggregate].valueCode = #sum

Instance: fluid-balance-chart-drainage
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(drainage, Drainage)
* code = $sghi-concept#fluid-balance-drainage-volume "Drainage volume"
* permittedDataType = #Quantity
* permittedUnit = $ucum#mL "mL"
* extension[FlowsheetAggregate].valueCode = #sum

Instance: fluid-balance-chart-totals
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetSection(totals, Sheet totals)
* code = SGHIDocumentTypeCodeSystem#fluid-balance-chart "Fluid balance chart"
* hasMember[+] = Reference(fluid-balance-chart-intake-24h)
* hasMember[+] = Reference(fluid-balance-chart-output-24h)
* hasMember[+] = Reference(fluid-balance-chart-urine-24h)
* hasMember[+] = Reference(fluid-balance-chart-balance)
* hasMember[+] = Reference(fluid-balance-chart-remarks)

Instance: fluid-balance-chart-intake-24h
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(intake-24h, Intake over 24 hours)
* code = $loinc#9108-2 "Fluid intake oral Estimated"
* permittedDataType = #Quantity
* permittedUnit = $ucum#mL "mL"

Instance: fluid-balance-chart-output-24h
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(output-24h, Output over 24 hours)
* code = $sghi-concept#fluid-balance-fluid-output-total-24-hours "Fluid output total 24 hours"
* permittedDataType = #Quantity
* permittedUnit = $ucum#mL "mL"

Instance: fluid-balance-chart-urine-24h
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(urine-24h, Urine over 24 hours)
* code = $loinc#9192-6 "Urine output 24 hour"
* permittedDataType = #Quantity
* permittedUnit = $ucum#mL "mL"

Instance: fluid-balance-chart-balance
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(balance, Balance over 24 hours)
* code = $sghi-concept#fluid-balance-over-24-hours "Fluid balance over 24 hours"
* permittedDataType = #Quantity
* permittedUnit = $ucum#mL "mL"

Instance: fluid-balance-chart-remarks
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(remarks, Remarks)
* code = $sghi-concept#fluid-balance-remarks-on-the-intake-and-output-record "Remarks on the intake and output record"
* permittedDataType = #string
