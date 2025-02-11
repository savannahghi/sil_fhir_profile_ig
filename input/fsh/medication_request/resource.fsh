Profile: SGHIMedicationRequest
Parent: MedicationRequest
Id: sghi-medication-request
Title: "SGHI MedicationRequest"
Description: "An order or request for both supply of the medication and the instructions for administration of the medication to a patient. The resource is called 'MedicationRequest' rather than 'MedicationPrescription' or 'MedicationOrder' to generalize the use across inpatient and outpatient settings, including care plans, etc., and to harmonize with workflow patterns."
* meta.profile = "https://fhir.slade360.co.ke/StructureDefinition/sghi-medication-request" (exactly)

* identifier 1..*
  * insert CommonIdentifierRules
* basedOn only Reference(SGHIServiceRequest or SGHIMedicationRequest)
* priorPrescription only Reference(SGHIMedicationRequest)
* medication only CodeableReference(SGHIMedication)
* informationSource only Reference(SGHIPatient or SGHIOrganization)
* category 1..*
* category only SGHICodeableConcept
* priority 1..1
* subject only Reference(SGHIPatient)
* encounter 1..1
* dispenseRequest.dispenser only Reference(SGHIOrganization)
* encounter only Reference(SGHIEncounter)
* authoredOn 1..1
* requester 1..1
* requester only Reference(SGHIPatient or SGHIOrganization)
* recorder 1..1
* reason 1..1
* reason only CodeableReference(SGHICondition or SGHIObservation)
* effectiveDosePeriod 1..1
* dosageInstruction 1..*
* dosageInstruction only SGHIDosage
* performer only Reference(SGHIPatient or SGHIOrganization)

Profile: SGHIDosage
Parent: Dosage
Id: sghi-dosage
Title: "SGHI Dosage"
Description: "A comprehensive Dosage profile for SGHI prescriptions, ensuring structured routes, methods, timing, and dose details."

* timing 1..1
* timing.repeat 1..1

// We can require that either frequency or dayOfWeek is provided:
* timing.repeat.frequency 0..1
* timing.repeat.dayOfWeek 0..*
* route 1..1
* doseAndRate 1..*
* doseAndRate.doseQuantity.system = "http://unitsofmeasure.org" (exactly)
* doseAndRate.doseRange.low.system = "http://unitsofmeasure.org" (exactly)
* doseAndRate.doseRange.high.system = "http://unitsofmeasure.org" (exactly)
* doseAndRate.rate[x] only Ratio or Range

// Force UCUM for numeric values
* doseAndRate.rateRatio.numerator.system = "http://unitsofmeasure.org" (exactly)
* doseAndRate.rateRatio.denominator.system = "http://unitsofmeasure.org" (exactly)
* doseAndRate.rateRange.low.system = "http://unitsofmeasure.org" (exactly)
* doseAndRate.rateRange.high.system = "http://unitsofmeasure.org" (exactly)

