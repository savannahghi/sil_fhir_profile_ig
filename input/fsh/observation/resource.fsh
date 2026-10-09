Profile: SGHIObservation
Parent: Observation
Id: observation
Title: "SGHI Observation"
Description: "Measurements and simple assertions made about a patient, device or other subject."

* identifier 1..*
  * type from SGHIDefaultIdentifierTypes (required)
  * insert CommonIdentifierRules

* category 1..1
* category only SGHICodeableConcept


* code 1..1
* code only SGHICodeableConcept

* subject 1..1
* subject only SGHIReference
* subject only Reference(SGHIPatient)

* encounter 1..1
* encounter only SGHIReference
* encounter only Reference(SGHIEncounter)

* performer 1..*
* performer only SGHIReference
// Practitioners too: the charts record who took each reading ("taken by",
// "completed by", "recorded by"), and the response's author is a practitioner.
* performer only Reference(SGHIOrganization or SGHIPatient or SGHIPractitioner or SGHIPractitionerRole)

// dateTime as well as instant: R5's vital-signs profiles, which apply to every
// Observation with a vital-sign LOINC code, allow effective[x] only as dateTime
// or Period, so an instant-only rule made every vital sign fail one or the other.
* effective[x] 1..1
* effective[x] only dateTime or instant

* issued 1..1

* interpretation 0..*
* interpretation from SGHIObservationInterpretation (extensible)
* interpretation only SGHICodeableConcept

// referenceRange carries the normal band and the critical thresholds as separate
// entries, told apart by type; component mirrors it for panels such as blood
// pressure, where each component is flagged against its own range.
* referenceRange.type from SGHIReferenceRangeMeaning (extensible)
* referenceRange.type only SGHICodeableConcept
* component.interpretation from SGHIObservationInterpretation (extensible)
* component.interpretation only SGHICodeableConcept
* component.referenceRange.type from SGHIReferenceRangeMeaning (extensible)
* component.referenceRange.type only SGHICodeableConcept

* basedOn only SGHIReference
* basedOn only Reference(SGHIServiceRequest or SGHIMedicationRequest)

// Extensible: ICD-11 has no laterality-only eye structures, which the pupil
// observations need.
* bodySite from ICD11Codes (extensible)
* bodySite only SGHICodeableConcept

* triggeredBy.observation only SGHIReference
* triggeredBy.observation only Reference(SGHIObservation)

* partOf only SGHIReference
* partOf only Reference(SGHIMedicationDispense)

* hasMember only SGHIReference
* hasMember only Reference(SGHIObservation)

* derivedFrom only SGHIReference
* derivedFrom only Reference(SGHIObservation or SGHIQuestionnaireResponse)


* valueString only string
* valueBoolean only boolean
* valueInteger only integer
* valueDateTime only dateTime
* valueCodeableConcept only SGHICodeableConcept
* valueReference only SGHIReference
* valueAttachment only SGHIAttachment