Instance: neuro-observation-chart
InstanceOf: ObservationDefinition
Usage: #definition
Title: "Neurological observation chart"
Description: "The flowsheet template for the ICU neurological chart."
* status = #active
* name = "neuro-observation-chart"
* title = "Neurological observations"
* version = "1.0.0"
* code = SGHIDocumentTypeCodeSystem#neuro-observation-chart "Neurological observation chart"
* useContext[+].code = $usage-context-type#workflow
* useContext[=].valueCodeableConcept = SGHIFlowsheetContextCodeSystem#inpatient
* useContext[+].code = $usage-context-type#workflow
* useContext[=].valueCodeableConcept = SGHIFlowsheetContextCodeSystem#critical-care
* extension[FlowsheetGrouping].valueCode = #hourly
* extension[FlowsheetScope].valueCode = #encounter
* extension[FlowsheetDefaultWindow].valueQuantity = 24 'h'
* extension[FlowsheetMaxWindow].valueQuantity = 7 'd'
* extension[FlowsheetAliases].valueCanonical = Canonical(flowsheet-observation-aliases)
* hasMember[+] = Reference(neuro-observation-chart-unit)
* hasMember[+] = Reference(neuro-observation-chart-gcs)
* hasMember[+] = Reference(neuro-observation-chart-pupils)
* hasMember[+] = Reference(neuro-observation-chart-limbs)
* hasMember[+] = Reference(neuro-observation-chart-vital-signs)

Instance: neuro-observation-chart-unit
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetSection(unit, The stay)
* code = SGHIDocumentTypeCodeSystem#neuro-observation-chart "Neurological observation chart"
* extension[FlowsheetHeader].valueBoolean = true
* hasMember[+] = Reference(neuro-observation-chart-day-in-unit)
* hasMember[+] = Reference(neuro-observation-chart-diagnosis)

Instance: neuro-observation-chart-day-in-unit
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(day-in-unit, Day in unit)
* code = $sghi-concept#obs-day-in-unit "Day in unit"
* permittedDataType = #integer

Instance: neuro-observation-chart-diagnosis
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(diagnosis, Diagnosis)
* code = $loinc#11450-4 "Problem list - Reported"
* permittedDataType = #string

Instance: neuro-observation-chart-gcs
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetSection(gcs, Glasgow Coma Scale)
* code = SGHIDocumentTypeCodeSystem#neuro-observation-chart "Neurological observation chart"
* hasMember[+] = Reference(neuro-observation-chart-eye)
* hasMember[+] = Reference(neuro-observation-chart-verbal)
* hasMember[+] = Reference(neuro-observation-chart-motor)
* hasMember[+] = Reference(neuro-observation-chart-total)

Instance: neuro-observation-chart-eye
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(eye, Eyes open)
* code = $loinc#9267-6 "Glasgow coma score eye opening"
* permittedDataType = #CodeableConcept

Instance: neuro-observation-chart-verbal
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(verbal, Best verbal response)
* code = $loinc#9270-0 "Glasgow coma score verbal"
* permittedDataType = #CodeableConcept

Instance: neuro-observation-chart-motor
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(motor, Best motor response)
* code = $loinc#9268-4 "Glasgow coma score motor"
* permittedDataType = #CodeableConcept

Instance: neuro-observation-chart-total
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(total, GCS total)
* code = $loinc#9269-2 "Glasgow coma score total"
* permittedDataType = #integer
* permittedUnit = $ucum#"{score}" "score"
* extension[FlowsheetAlert].valueString = "≤8"
* extension[FlowsheetPlot].valueRange.low = 3 '{score}'
* extension[FlowsheetPlot].valueRange.high = 15 '{score}'
* insert AbsoluteRange(3, 15, {score})

Instance: neuro-observation-chart-pupils
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetSection(pupils, Pupils)
* code = SGHIDocumentTypeCodeSystem#neuro-observation-chart "Neurological observation chart"
* hasMember[+] = Reference(neuro-observation-chart-right-pupil-size)
* hasMember[+] = Reference(neuro-observation-chart-right-pupil-reaction)
* hasMember[+] = Reference(neuro-observation-chart-left-pupil-size)
* hasMember[+] = Reference(neuro-observation-chart-left-pupil-reaction)

Instance: neuro-observation-chart-right-pupil-size
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(right-pupil-size, Right pupil size)
* code = $sghi-concept#neuro-pupil-size "Pupil size"
* bodySite = http://snomed.info/sct#18944008 "Right eye structure"
* permittedDataType = #Quantity
* permittedUnit = $ucum#mm "mm"
* insert AbsoluteRange(1, 9, mm)

Instance: neuro-observation-chart-right-pupil-reaction
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(right-pupil-reaction, Right pupil reaction)
* code = $sghi-concept#neuro-pupil-reaction "Pupil reaction"
* bodySite = http://snomed.info/sct#18944008 "Right eye structure"
* permittedDataType = #CodeableConcept
* extension[FlowsheetAlert].valueString = "Fixed"

Instance: neuro-observation-chart-left-pupil-size
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(left-pupil-size, Left pupil size)
* code = $sghi-concept#neuro-pupil-size "Pupil size"
* bodySite = http://snomed.info/sct#8966001 "Left eye structure"
* permittedDataType = #Quantity
* permittedUnit = $ucum#mm "mm"
* insert AbsoluteRange(1, 9, mm)

Instance: neuro-observation-chart-left-pupil-reaction
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(left-pupil-reaction, Left pupil reaction)
* code = $sghi-concept#neuro-pupil-reaction "Pupil reaction"
* bodySite = http://snomed.info/sct#8966001 "Left eye structure"
* permittedDataType = #CodeableConcept
* extension[FlowsheetAlert].valueString = "Fixed"

Instance: neuro-observation-chart-limbs
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetSection(limbs, Limb power)
* code = SGHIDocumentTypeCodeSystem#neuro-observation-chart "Neurological observation chart"
* hasMember[+] = Reference(neuro-observation-chart-arms)
* hasMember[+] = Reference(neuro-observation-chart-legs)

Instance: neuro-observation-chart-arms
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(arms, Arms)
* code = $sghi-concept#neuro-arm-power "Arm power"
* permittedDataType = #CodeableConcept

Instance: neuro-observation-chart-legs
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(legs, Legs)
* code = $sghi-concept#neuro-leg-power "Leg power"
* permittedDataType = #CodeableConcept

Instance: neuro-observation-chart-vital-signs
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetSection(vital-signs, Vital signs)
* code = SGHIDocumentTypeCodeSystem#neuro-observation-chart "Neurological observation chart"
* hasMember[+] = Reference(neuro-observation-chart-pulse)
* hasMember[+] = Reference(neuro-observation-chart-sbp)
* hasMember[+] = Reference(neuro-observation-chart-dbp)
* hasMember[+] = Reference(neuro-observation-chart-rr)
* hasMember[+] = Reference(neuro-observation-chart-temp)

Instance: neuro-observation-chart-pulse
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(pulse, Pulse)
* code = $loinc#8867-4 "Heart rate"
* permittedDataType = #Quantity
* permittedUnit = $ucum#/min "bpm"
* insert AbsoluteRange(20, 250, /min)

Instance: neuro-observation-chart-sbp
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(sbp, Systolic BP)
* code = $loinc#8480-6 "Systolic blood pressure"
* permittedDataType = #Quantity
* permittedUnit = $ucum#mm[Hg] "mmHg"
* insert AbsoluteRange(40, 300, mm[Hg])

Instance: neuro-observation-chart-dbp
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(dbp, Diastolic BP)
* code = $loinc#8462-4 "Diastolic blood pressure"
* permittedDataType = #Quantity
* permittedUnit = $ucum#mm[Hg] "mmHg"
* insert AbsoluteRange(20, 200, mm[Hg])

Instance: neuro-observation-chart-rr
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(rr, Respiration rate)
* code = $loinc#9279-1 "Respiratory rate"
* permittedDataType = #Quantity
* permittedUnit = $ucum#/min "breaths/min"
* insert AbsoluteRange(4, 80, /min)

Instance: neuro-observation-chart-temp
InstanceOf: ObservationDefinition
Usage: #definition
* insert FlowsheetRow(temp, Temperature)
* code = $loinc#8310-5 "Body temperature"
* permittedDataType = #Quantity
* permittedUnit = $ucum#Cel "°C"
* extension[FlowsheetDecimals].valueInteger = 1
* insert AbsoluteRange(25, 45, Cel)
