Instance: labour-care-guide
InstanceOf: ObservationDefinition
Usage: #definition
Title: "Labour Care Guide"
Description: "The flowsheet template for the WHO Labour Care Guide."
* status = #active
* name = "labour-care-guide"
* title = "Labour Care Guide"
* version = "1.0.0"
* code = SGHIDocumentTypeCodeSystem#labour-care-guide "WHO Labour Care Guide"
* useContext[+].code = $usage-context-type#workflow
* useContext[=].valueCodeableConcept = SGHIFlowsheetContextCodeSystem#labour
* extension[FlowsheetGrouping].valueCode = #30min
* extension[FlowsheetScope].valueCode = #encounter
* extension[FlowsheetDefaultWindow].valueQuantity = 48 'h'
* extension[FlowsheetMaxWindow].valueQuantity = 31 'd'
* extension[FlowsheetAliases].valueCanonical = Canonical(flowsheet-observation-aliases)
// The two forms the chart records through. Each is one Questionnaire on the
// CDR, named by id so the reference resolves on every environment, and both
// extract through ExtractLabourCareGuide: the assessment form adds a column,
// the details form fills the facts above the grid.
* extension[FlowsheetEntryQuestionnaire].valueCanonical = "https://fhir.slade360.co.ke/fhir/Questionnaire/dde009af-43dc-51f5-aa4c-2f7a61072659"
* extension[FlowsheetCaseQuestionnaire].valueCanonical = "https://fhir.slade360.co.ke/fhir/Questionnaire/7da38e8e-3a6b-5147-9de7-bdaa2686ee3d"
* extension[FlowsheetStage][+].extension[key].valueId = "first"
* extension[FlowsheetStage][=].extension[title].valueString = "Active first stage"
* extension[FlowsheetStage][=].extension[start-row].valueId = "active-labour"
* extension[FlowsheetStage][=].extension[slot].valueQuantity = 30 'min'
* extension[FlowsheetStage][=].extension[hours].valueInteger = 12
* extension[FlowsheetStage][+].extension[key].valueId = "second"
* extension[FlowsheetStage][=].extension[title].valueString = "Second stage"
* extension[FlowsheetStage][=].extension[start-row].valueId = "cervix"
* extension[FlowsheetStage][=].extension[start-at].valueDecimal = 10
* extension[FlowsheetStage][=].extension[slot].valueQuantity = 15 'min'
* extension[FlowsheetStage][=].extension[hours].valueInteger = 3
* hasMember[+] = Reference(labour-care-guide-admission)
* hasMember[+] = Reference(labour-care-guide-supportive-care)
* hasMember[+] = Reference(labour-care-guide-baby)
* hasMember[+] = Reference(labour-care-guide-woman)
* hasMember[+] = Reference(labour-care-guide-labour-progress)
* hasMember[+] = Reference(labour-care-guide-shared-decision-making)

Instance: labour-care-guide-admission
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetSection(admission, Identifying information)
* code = SGHIDocumentTypeCodeSystem#labour-care-guide "WHO Labour Care Guide"
* extension[FlowsheetHeader].valueBoolean = true
* hasMember[+] = Reference(labour-care-guide-parity)
* hasMember[+] = Reference(labour-care-guide-labour-onset)
* hasMember[+] = Reference(labour-care-guide-active-labour)
* hasMember[+] = Reference(labour-care-guide-membranes-ruptured)
* hasMember[+] = Reference(labour-care-guide-risk-factors)
* hasMember[+] = Reference(labour-care-guide-birth)

Instance: labour-care-guide-parity
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(parity, Parity)
* code = $loinc#11977-6 "[#] Parity"
* permittedDataType = #Quantity
* permittedUnit = $ucum#1 "births"

Instance: labour-care-guide-labour-onset
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(labour-onset, Labour onset)
* code = $sghi-concept#lcg-labour-onset "Labour onset"
* permittedDataType = #CodeableConcept

Instance: labour-care-guide-active-labour
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(active-labour, Active labour diagnosis)
* code = $sghi-concept#lcg-active-labour "Active first stage of labour diagnosed"
* permittedDataType = #boolean

Instance: labour-care-guide-membranes-ruptured
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(membranes-ruptured, Ruptured membranes)
* code = $loinc#56829-5 "Rupture of membranes Date and time"
* permittedDataType = #dateTime

Instance: labour-care-guide-risk-factors
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(risk-factors, Risk factors)
* code = $sghi-concept#lcg-risk-factors "Risk factors"
* permittedDataType = #string

Instance: labour-care-guide-birth
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(birth, Birth)
* code = $sghi-concept#lcg-birth "Birth"
* permittedDataType = #boolean

Instance: labour-care-guide-supportive-care
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetSection(supportive-care, Supportive care)
* code = SGHIDocumentTypeCodeSystem#labour-care-guide "WHO Labour Care Guide"
* hasMember[+] = Reference(labour-care-guide-companion)
* hasMember[+] = Reference(labour-care-guide-pain-relief)
* hasMember[+] = Reference(labour-care-guide-oral-fluid)
* hasMember[+] = Reference(labour-care-guide-posture)

Instance: labour-care-guide-companion
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(companion, Companion)
* code = $sghi-concept#lcg-companion "Companion present"
* permittedDataType = #CodeableConcept
* extension[FlowsheetAlert].valueString = "N"
* insert CellWidth(first, 60)
* insert CellWidth(second, 60)

Instance: labour-care-guide-pain-relief
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(pain-relief, Pain relief)
* code = $sghi-concept#lcg-pain-relief "Pain relief given"
* permittedDataType = #CodeableConcept
* extension[FlowsheetAlert].valueString = "N"
* insert CellWidth(first, 60)
* insert CellWidth(second, 60)

Instance: labour-care-guide-oral-fluid
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(oral-fluid, Oral fluid)
* code = $sghi-concept#lcg-oral-fluid "Oral fluid taken"
* permittedDataType = #CodeableConcept
* extension[FlowsheetAlert].valueString = "N"
* insert CellWidth(first, 60)
* insert CellWidth(second, 60)

Instance: labour-care-guide-posture
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(posture, Posture)
* code = $sghi-concept#lcg-posture "Posture"
* permittedDataType = #CodeableConcept
* extension[FlowsheetAlert].valueString = "SP"
* insert CellWidth(first, 60)
* insert CellWidth(second, 60)

Instance: labour-care-guide-baby
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetSection(baby, Baby)
* code = SGHIDocumentTypeCodeSystem#labour-care-guide "WHO Labour Care Guide"
* hasMember[+] = Reference(labour-care-guide-fhr)
* hasMember[+] = Reference(labour-care-guide-fhr-deceleration)
* hasMember[+] = Reference(labour-care-guide-amniotic-fluid)
* hasMember[+] = Reference(labour-care-guide-fetal-position)
* hasMember[+] = Reference(labour-care-guide-caput)
* hasMember[+] = Reference(labour-care-guide-moulding)

Instance: labour-care-guide-fhr
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(fhr, Baseline FHR)
* code = $loinc#55283-6 "Fetal Heart rate"
* permittedDataType = #Quantity
* permittedUnit = $ucum#/min "bpm"
* extension[FlowsheetPlot].valueRange.low = 80 '/min'
* extension[FlowsheetPlot].valueRange.high = 200 '/min'
* extension[FlowsheetAlert].valueString = "<110, ≥160"
* insert AbsoluteRange(50, 240, /min)

Instance: labour-care-guide-fhr-deceleration
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(fhr-deceleration, FHR deceleration)
* code = $sghi-concept#lcg-fhr-deceleration "Fetal heart rate deceleration"
* permittedDataType = #CodeableConcept
* extension[FlowsheetAlert].valueString = "L"

Instance: labour-care-guide-amniotic-fluid
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(amniotic-fluid, Amniotic fluid)
* code = $sghi-concept#lcg-amniotic-fluid "Amniotic fluid"
* permittedDataType = #CodeableConcept
* extension[FlowsheetAlert].valueString = "M+++, B"
* insert CellWidth(first, 60)
* insert CellWidth(second, 30)

Instance: labour-care-guide-fetal-position
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(fetal-position, Fetal position)
* code = $loinc#11874-5 "Fetal position"
* permittedDataType = #CodeableConcept
* extension[FlowsheetAlert].valueString = "P, T"
* insert CellWidth(first, 60)
* insert CellWidth(second, 30)

Instance: labour-care-guide-caput
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(caput, Caput)
* code = $sghi-concept#lcg-caput "Caput"
* permittedDataType = #CodeableConcept
* extension[FlowsheetAlert].valueString = "+++"
* insert CellWidth(first, 60)
* insert CellWidth(second, 30)

Instance: labour-care-guide-moulding
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(moulding, Moulding)
* code = $sghi-concept#lcg-moulding "Moulding"
* permittedDataType = #CodeableConcept
* extension[FlowsheetAlert].valueString = "+++"
* insert CellWidth(first, 60)
* insert CellWidth(second, 30)

Instance: labour-care-guide-woman
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetSection(woman, Woman)
* code = SGHIDocumentTypeCodeSystem#labour-care-guide "WHO Labour Care Guide"
* hasMember[+] = Reference(labour-care-guide-pulse)
* hasMember[+] = Reference(labour-care-guide-systolic)
* hasMember[+] = Reference(labour-care-guide-diastolic)
* hasMember[+] = Reference(labour-care-guide-temperature)
* hasMember[+] = Reference(labour-care-guide-urine-protein)
* hasMember[+] = Reference(labour-care-guide-urine-acetone)

Instance: labour-care-guide-pulse
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(pulse, Pulse)
* code = $loinc#8867-4 "Heart rate"
* permittedDataType = #Quantity
* permittedUnit = $ucum#/min "bpm"
* extension[FlowsheetPlot].valueRange.low = 40 '/min'
* extension[FlowsheetPlot].valueRange.high = 160 '/min'
* extension[FlowsheetAlert].valueString = "<60, ≥120"
* insert CellWidth(first, 60)
* insert CellWidth(second, 30)
* insert AbsoluteRange(20, 250, /min)

Instance: labour-care-guide-systolic
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(systolic, Systolic BP)
* code = $loinc#8480-6 "Systolic blood pressure"
* permittedDataType = #Quantity
* permittedUnit = $ucum#mm[Hg] "mmHg"
* extension[FlowsheetPlot].valueRange.low = 60 'mm[Hg]'
* extension[FlowsheetPlot].valueRange.high = 200 'mm[Hg]'
* extension[FlowsheetAlert].valueString = "<80, ≥140"
* insert CellWidth(first, 60)
* insert CellWidth(second, 30)

Instance: labour-care-guide-diastolic
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(diastolic, Diastolic BP)
* code = $loinc#8462-4 "Diastolic blood pressure"
* permittedDataType = #Quantity
* permittedUnit = $ucum#mm[Hg] "mmHg"
* extension[FlowsheetPlot].valueRange.low = 30 'mm[Hg]'
* extension[FlowsheetPlot].valueRange.high = 130 'mm[Hg]'
* extension[FlowsheetAlert].valueString = "≥90"
* insert CellWidth(first, 60)
* insert CellWidth(second, 30)

Instance: labour-care-guide-temperature
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(temperature, Temperature)
* code = $loinc#8310-5 "Body temperature"
* permittedDataType = #Quantity
* permittedUnit = $ucum#Cel "°C"
* extension[FlowsheetPlot].valueRange.low = 35 'Cel'
* extension[FlowsheetPlot].valueRange.high = 40 'Cel'
* extension[FlowsheetDecimals].valueInteger = 1
* extension[FlowsheetAlert].valueString = "<35.0, ≥37.5"
* insert CellWidth(first, 60)
* insert CellWidth(second, 30)

Instance: labour-care-guide-urine-protein
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(urine-protein, Urine protein)
* code = $loinc#20454-5 "Protein [Presence] in Urine by Test strip"
* permittedDataType = #CodeableConcept
* extension[FlowsheetAlert].valueString = "++, +++, ++++"
* insert CellWidth(first, 60)
* insert CellWidth(second, 30)

Instance: labour-care-guide-urine-acetone
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(urine-acetone, Urine acetone)
* code = $loinc#2514-8 "Ketones [Presence] in Urine by Test strip"
* permittedDataType = #CodeableConcept
* extension[FlowsheetAlert].valueString = "++, +++, ++++"
* insert CellWidth(first, 60)
* insert CellWidth(second, 30)

Instance: labour-care-guide-labour-progress
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetSection(labour-progress, Labour progress)
* code = SGHIDocumentTypeCodeSystem#labour-care-guide "WHO Labour Care Guide"
* hasMember[+] = Reference(labour-care-guide-contractions)
* hasMember[+] = Reference(labour-care-guide-contraction-duration)
* hasMember[+] = Reference(labour-care-guide-cervix)
* hasMember[+] = Reference(labour-care-guide-pushing)
* hasMember[+] = Reference(labour-care-guide-descent)

Instance: labour-care-guide-contractions
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(contractions, Contractions per 10 min)
* code = $sghi-concept#lcg-contractions-per-10-min "Contractions per 10 minutes"
* permittedDataType = #Quantity
* permittedUnit = $ucum#"{#}/(10.min)" "per 10 min"
* extension[FlowsheetPlot].valueRange.low = 0 '{#}/(10.min)'
* extension[FlowsheetPlot].valueRange.high = 6 '{#}/(10.min)'
* extension[FlowsheetAlert].valueString = "≤2, >5"

Instance: labour-care-guide-contraction-duration
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(contraction-duration, Duration of contractions)
* code = $sghi-concept#lcg-contraction-duration "Duration of contractions"
* permittedDataType = #Quantity
* permittedUnit = $ucum#s "seconds"
* extension[FlowsheetAlert].valueString = "<20, >60"

Instance: labour-care-guide-cervix
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(cervix, Cervix)
* code = $loinc#11784-6 "Cervix Dilatation Vaginal exam"
* permittedDataType = #Quantity
* permittedUnit = $ucum#cm "cm"
* extension[FlowsheetPlot].valueRange.low = 5 'cm'
* extension[FlowsheetPlot].valueRange.high = 10 'cm'
* insert CellWidth(first, 60)
* insert CellWidth(second, 30)
* insert AbsoluteRange(0, 10, cm)

Instance: labour-care-guide-pushing
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(pushing, Pushing)
* code = $sghi-concept#lcg-pushing "Pushing"
* permittedDataType = #CodeableConcept

Instance: labour-care-guide-descent
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(descent, Descent)
* code = $sghi-concept#lcg-descent-fifths "Descent of the head in fifths palpable"
* permittedDataType = #Quantity
* permittedUnit = $ucum#"{fifths}" "/5"
* extension[FlowsheetPlot].valueRange.low = 0 '{fifths}'
* extension[FlowsheetPlot].valueRange.high = 5 '{fifths}'
* insert CellWidth(first, 60)
* insert CellWidth(second, 30)
* qualifiedValue[+].rangeCategory = #absolute
* qualifiedValue[=].range.low = 0 '{fifths}'
* qualifiedValue[=].range.high = 5 '{fifths}'

Instance: labour-care-guide-shared-decision-making
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetSection(shared-decision-making, Shared decision-making)
* code = SGHIDocumentTypeCodeSystem#labour-care-guide "WHO Labour Care Guide"
* hasMember[+] = Reference(labour-care-guide-assessment)
* hasMember[+] = Reference(labour-care-guide-plan)

Instance: labour-care-guide-assessment
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(assessment, Assessment)
* code = $sghi-concept#lcg-assessment "Assessment"
* permittedDataType = #string
* insert CellWidth(first, 60)
* insert CellWidth(second, 60)

Instance: labour-care-guide-plan
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(plan, Plan)
* code = $sghi-concept#lcg-plan "Plan"
* permittedDataType = #string
* insert CellWidth(first, 60)
* insert CellWidth(second, 60)
