Profile: SGHIAppointment
Parent: Appointment
Id: sghi-appointment
Title: "SGHI Appointment Profile"
Description: "SGHI's profile for Appointment"

* identifier 1..*
  * system 1..1
  * value 1..1
  * type from http://hl7.org/fhir/ValueSet/identifier-type (extensible)
  * use from http://hl7.org/fhir/ValueSet/identifier-use (required)
  * assigner only Reference(SGHIOrganization)

* status 1..1
* specialty 1..*
* appointmentType 1..1
* reason 1..* 
* priority 1..1
* start 1..1
* end 1..1
* created 1..1
* subject 1..1
* subject only Reference(SGHIPatient)
* participant 1..*
  * actor 1..1
  * actor only Reference(SGHIPatient)
  * status 1..1
  * type 1..1
* note 1..*