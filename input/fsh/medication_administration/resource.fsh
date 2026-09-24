Profile: SGHIMedicationAdministration
Parent: MedicationAdministration
Id: medicationadministration
Title: "SGHI Medication Administration"
Description: "A dose of a medication actually given to, or deliberately not given to, a patient: the drug-round record, a drug pushed in theatre, a vasopressor running in critical care, a vitamin A supplement at an immunisation visit. It is the consumption end of the chain that SGHIMedicationRequest orders and SGHIMedicationDispense supplies, so every administration names who gave it and in which encounter. A dose that was not given is still an administration, with status not-done and the reason in statusReason; those reasons are drawn from the SGHI drug-round value sets rather than SNOMED."

* identifier 1..*
  * type from SGHIDefaultIdentifierTypes (required)
  * insert CommonIdentifierRules

* basedOn only SGHIReference
* basedOn only Reference(SGHICarePlan)

* partOf only SGHIReference
* partOf only Reference(SGHIMedicationAdministration or SGHIMedicationDispense or Procedure)

* status 1..1

// statusReason carries the drug-round outcome. The HL7 binding is example
// strength; SGHIMedicationNotGivenReason is the union of the held, refused and
// omitted sets, and which of those a code belongs to is what distinguishes a
// held dose from a refused one when status is #not-done for both.
* statusReason only SGHICodeableConcept
* statusReason from SGHIMedicationNotGivenReason (extensible)

* category only SGHICodeableConcept

// Extensible rather than required, unlike the request and dispense profiles:
// the MOH 510 extractor records vitamin A supplementation as an administration
// coded from SGHIKEPISupplement, which is not part of SGHIMedicationCodes.
* medication 1..1
* medication only SGHICodeableReference
* medication only CodeableReference(SGHIMedication)
* medication from SGHIMedicationCodes (extensible)

* subject 1..1
* subject only SGHIReference
* subject only Reference(SGHIPatient)

* encounter 1..1
* encounter only SGHIReference
* encounter only Reference(SGHIEncounter)

* supportingInformation only SGHIReference

* occurence[x] 1..1
* recorded 0..1

* performer 1..*
  * function only SGHICodeableConcept
  * actor only SGHICodeableReference
  * actor only CodeableReference(SGHIPractitioner or SGHIPractitionerRole or SGHIPatient or RelatedPerson or Device)
  // A performer named only by concept does not say who gave the dose.
  * actor.reference 1..1

* reason only SGHICodeableReference
* reason only CodeableReference(SGHICondition or SGHIObservation or SGHIDiagnosticReport)

* request only SGHIReference
* request only Reference(SGHIMedicationRequest)

* device only SGHICodeableReference

* note only SGHIAnnotation

// MedicationAdministration.dosage is a backbone element, not the Dosage
// datatype, so SGHIDosage cannot be applied here. Its site, route, method and
// dose are bound to the same SGHI value sets SGHIDosage uses so that what was
// given is coded the same way as what was ordered.
* dosage 0..1
  * site only SGHICodeableConcept
  * site from SGHIBodySiteValueSet (extensible)
  * route 1..1
  * route only SGHICodeableConcept
  * route from SGHIRouteOfAdministration (required)
  * method only SGHICodeableConcept
  * method from SGHIMethodOfAdministration (extensible)
  * dose from SGHIDosageUnit (required)

* obeys sghi-mad-completed-has-dosage
* obeys sghi-mad-not-done-has-reason

Invariant: sghi-mad-completed-has-dosage
Description: "A completed administration records what was given: dosage is present when status is completed."
Severity: #error
Expression: "status = 'completed' implies dosage.exists()"

Invariant: sghi-mad-not-done-has-reason
Description: "A dose that was not given says why: statusReason is present when status is not-done."
Severity: #error
Expression: "status = 'not-done' implies statusReason.exists()"
