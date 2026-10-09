Profile:        SGHIProcedure
Parent:         Procedure
Id:             procedure
Title:          "SGHI Procedure"
Description:    "This resource is used to record the details of current and historical procedures performed on, with, or for a patient, practitioner, device, organization, or location. Examples include surgical procedures, diagnostic procedures, endoscopic procedures, biopsies, counseling, physiotherapy, personal support services, adult day care services, non-emergency transportation, home modification, exercise, verification of enrollment qualifications for a social program etc. Procedures may be performed by a healthcare professional, a service provider, a friend or relative or in some cases by the patient themselves."

* identifier 1..*
  * type from SGHIDefaultIdentifierTypes (required)
  * insert CommonIdentifierRules
// Optional: a procedure recorded from a paper form has none of these to give.
* basedOn 0..1
* basedOn only SGHIReference
* basedOn only Reference(SGHIServiceRequest)

* partOf 0..1
* partOf only SGHIReference
* partOf only Reference(SGHIProcedure or SGHIObservation)

* status MS
* status from SGHIProcedureStatus (required)

* statusReason only SGHICodeableConcept
* statusReason from ICHICodes (required)

* category 1..1 MS
* category only SGHICodeableConcept
* category from SGHIProcedureCategory (extensible)

* code 1..1 MS
// Free text allowed: a theatre note names the operation as the surgeon wrote it.
// Extensible: ICHI where it has the intervention; the Kinangop forms' procedures
// (anaesthesia, haemodialysis, delivery, dressing) are coded where ICHI cannot be used.
* code from ICHICodes (extensible)
* code.coding from ICHICodes (extensible)

* subject MS
* subject only SGHIReference
* subject only Reference(SGHIPatient or Practitioner)

* focus only SGHIReference
* focus only Reference(SGHIPatient or Practitioner or PractitionerRole)

* encounter 1..1 MS
* encounter only SGHIReference
* encounter only Reference(SGHIEncounter)

// A Period as well: a haemodialysis session runs from Time due on to Time due off.
* occurrence[x] 1..1
* occurrence[x] only dateTime or Period

* recorded 1..1 MS
* recorded only dateTime

* recorder 1..1 MS
* recorder only SGHIReference
* recorder only Reference(SGHIPractitioner or SGHIPractitionerRole)

// 0..*: a form may name several (both dialysis nurses) or none.
* performer 0..* MS
  * actor only SGHIReference
  * actor only Reference(SGHIPractitioner or SGHIPractitionerRole)
  * onBehalfOf only SGHIReference
  * onBehalfOf only Reference(SGHIOrganization)

* location 0..1 MS
* location only SGHIReference
* location only Reference(SGHILocation)

* bodySite 0..1 MS
* bodySite only SGHICodeableConcept
* bodySite from ICHICodes (required)

// Free text allowed: the anaesthetic record's result and remarks are written, not coded.
* outcome 0..1 MS
* outcome from SGHIProcedureOutcome (extensible)

* report 0..*
* report only SGHIReference
* report only Reference(SGHIDiagnosticReport or DocumentReference)

* complication only SGHICodeableReference
* complication only CodeableReference(SGHICondition)

// 0..* and free text: reversal notes and post-operative instructions are both follow-up.
* followUp 0..* MS
* followUp from SGHIProcedureFollowUpCodes (extensible)

* note only SGHIAnnotation
* category only SGHICodeableConcept