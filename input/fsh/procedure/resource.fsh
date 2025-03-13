Profile:        SGHIProcedure
Parent:         Procedure
Id:             sghi-procedure
Title:          "SGHI Procedure"
Description:    "This resource is used to record the details of current and historical procedures performed on, with, or for a patient, practitioner, device, organization, or location. Examples include surgical procedures, diagnostic procedures, endoscopic procedures, biopsies, counseling, physiotherapy, personal support services, adult day care services, non-emergency transportation, home modification, exercise, verification of enrollment qualifications for a social program etc. Procedures may be performed by a healthcare professional, a service provider, a friend or relative or in some cases by the patient themselves."

* identifier 1..*
  * insert CommonIdentifierRules
* basedOn 1..1 
* basedOn only SGHIReference
* basedOn only Reference(SGHIServiceRequest)

* partOf 1..1
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
* code only SGHICodeableConcept
* code from ICHICodes (required)
* code.coding from ICHICodes (required)

* subject MS
* subject only SGHIReference
* subject only Reference(SGHIPatient or Practitioner)

* focus only SGHIReference
* focus only Reference(SGHIPatient or Practitioner or PractitionerRole)

* encounter 1..1 MS
* encounter only SGHIReference
* encounter only Reference(SGHIEncounter)

* occurrenceDateTime 1..1
* occurrenceDateTime only dateTime

* recorded 1..1 MS
* recorded only dateTime

* recorder 1..1 MS
* recorder only SGHIReference
* recorder only Reference(SGHIPractitioner or SGHIPractitionerRole)

* performer 1..1 MS
  * actor only SGHIReference
  * actor only Reference(SGHIPractitioner or SGHIPractitionerRole)
  * onBehalfOf only SGHIReference
  * onBehalfOf only Reference(SGHIOrganization)

* location 1..1 MS
* location only SGHIReference
* location only Reference(SGHILocation)

* bodySite 1..1 MS
* bodySite only SGHICodeableConcept
* bodySite from ICHICodes (required)

* outcome 1..1 MS
* outcome only SGHICodeableConcept
* outcome from SGHIProcedureOutcome

* report 1..*
* report only SGHIReference
* report only Reference(SGHIDiagnosticReport or DocumentReference)

* complication only SGHICodeableReference
* complication only CodeableReference(SGHICondition)

* followUp 1..1 MS
* followUp only SGHICodeableConcept
* followUp from SGHIProcedureFollowUpCodes

* note only SGHIAnnotation
* category only SGHICodeableConcept