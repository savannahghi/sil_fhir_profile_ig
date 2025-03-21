Profile: SGHIAppointment
Parent: Appointment
Id: sghi-appointment
Title: "SGHI Appointment Profile"
Description: "A booking of a healthcare event among patient(s), practitioner(s), related person(s) and/or device(s) for a specific date/time. This may result in one or more Encounter(s)."

* identifier 1..*
  * insert CommonIdentifierRules

* specialty 1..*
* specialty from SGHISpecialtyVs (required)
* specialty only SGHICodeableConcept

* cancellationReason only SGHICodeableConcept
* class only SGHICodeableConcept
* class from AllLoincCodes

* serviceCategory only SGHICodeableConcept
* appointmentType only SGHICodeableConcept

* priority only SGHICodeableConcept
* priority 1..1

* appointmentType 1..1

* reason 1..*
* reason only SGHICodeableReference

* reason from AllLoincCodes (required)
* reason only CodeableReference(SGHICondition or SGHIObservation)

* replaces only SGHIReference
* replaces only Reference(SGHIAppointment)

* previousAppointment only SGHIReference
* previousAppointment only Reference(SGHIAppointment)

* originatingAppointment only SGHIReference
* originatingAppointment only Reference(SGHIAppointment)

* start 1..1
* end 0..1
* created 1..1

* subject 1..1
* subject only SGHIReference
* subject only Reference(SGHIPatient)

* participant 1..*
  * actor 1..1
  * actor only SGHIReference
  * actor only Reference(SGHIPatient or SGHILocation or SGHIPractitionerRole)
  * type only SGHICodeableConcept

* basedOn only SGHIReference
* basedOn only Reference(SGHIServiceRequest or SGHIMedicationRequest)
