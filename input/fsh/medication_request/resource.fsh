Profile: SGHIMedicationRequest
Parent: MedicationRequest
Id: sghi-medicationrequest
Title: "SGHI MedicationRequest"
Description: "An order or request for both supply of the medication and the instructions for administration of the medication to a patient. The resource is called 'MedicationRequest' rather than 'MedicationPrescription' or 'MedicationOrder' to generalize the use across inpatient and outpatient settings, including care plans, etc., and to harmonize with workflow patterns."

* identifier 1..*
  * insert CommonIdentifierRules

* basedOn only SGHIReference
* basedOn only Reference(SGHIServiceRequest or SGHIMedicationRequest)

* priorPrescription only SGHIReference
* priorPrescription only Reference(SGHIMedicationRequest)

* medication only SGHICodeableReference
* medication only CodeableReference(SGHIMedication)
* medication from SGHIMedicationCodes (required)

* informationSource only SGHIReference
* informationSource only Reference(SGHIPatient or SGHIOrganization)

* category only SGHICodeableConcept

* priority 1..1

* subject only SGHIReference
* subject only Reference(SGHIPatient)

* encounter 1..1
* encounter only SGHIReference
* encounter only Reference(SGHIEncounter)

* dispenseRequest.dispenser only SGHIReference
* dispenseRequest.dispenser only Reference(SGHIOrganization)

* authoredOn 1..1
* requester 1..1
* requester only SGHIReference
* requester only Reference(SGHIPatient or SGHIOrganization)

* recorder only SGHIReference
* recorder only Reference(SGHIPractitioner or SGHIPractitionerRole)

* reason only SGHICodeableReference
* reason only CodeableReference(SGHICondition or SGHIObservation)

* effectiveDosePeriod 1..1
* dosageInstruction 1..*
* dosageInstruction only SGHIDosage

* performer only SGHIReference
* performer only Reference(SGHIPatient or SGHIOrganization)

Profile: SGHIDosage
Parent: Dosage
Id: sghi-dosage
Title: "SGHI Dosage"
Description: "A comprehensive Dosage profile for SGHI prescriptions, ensuring structured routes, methods, timing, and dose details."

* additionalInstruction only SGHICodeableConcept
* asNeededFor only SGHICodeableConcept
* site only SGHICodeableConcept
* site from ICHICodes
* route only SGHICodeableConcept
* method only SGHICodeableConcept
* timing 1..1
* timing.repeat 1..1
* site from SGHIBodySiteValueSet
* method from SGHIMethodValueSet

// We can require that either frequency or dayOfWeek is provided:
* timing.repeat.frequency 0..1
* timing.repeat.dayOfWeek 0..*
* route 1..1
* route from SGHIRouteOfAdministration (required)
* doseAndRate 1..*
* doseAndRate.type only SGHICodeableConcept
* doseAndRate.doseQuantity.system = "http://unitsofmeasure.org" (exactly)
* doseAndRate.doseRange.low.system = "http://unitsofmeasure.org" (exactly)
* doseAndRate.doseRange.high.system = "http://unitsofmeasure.org" (exactly)
* doseAndRate.rate[x] only Ratio or Range

// Force UCUM for numeric values
* doseAndRate.rateRatio.numerator.system = "http://unitsofmeasure.org" (exactly)
* doseAndRate.rateRatio.denominator.system = "http://unitsofmeasure.org" (exactly)
* doseAndRate.rateRange.low.system = "http://unitsofmeasure.org" (exactly)
* doseAndRate.rateRange.high.system = "http://unitsofmeasure.org" (exactly)

