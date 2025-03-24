Instance: ExampleSGHIAppointment
InstanceOf: SGHIAppointment
Description: "An example of an Appointment resource conforming to the SGHI Appointment profile."
Usage: #example

* identifier[0]
  * use = #official
  * type.coding[0] = $identifier-type-cs#ACSN "Accession ID"
  * value = "APT123456"
  * system = $identifier-type-cs
  * assigner = Reference(ExampleSGHIOrganization)

* status = #booked

* specialty[0].coding[0].system = "http://loinc.org/"
* specialty[0].coding[0] = #394814009 "General practice"

* appointmentType.coding[0] = $v2-0276#ROUTINE "Routine appointment"

* reason.reference = Reference(ExampleSGHICondition)
* reason.reference.display = "Observation"
* priority.coding[0] = $v3-ActPriority#R "Routine"

* start = "2023-11-25T09:00:00Z"
* end = "2023-11-25T09:30:00Z"

* created = "2023-11-20T10:00:00Z"

* subject = Reference(ExampleSGHIPatient)

* participant[0]
  * actor = Reference(ExampleSGHIPatient)
  * status = #accepted
  * type.coding[0] = $v3-ParticipationType#ATND "Attender"

* note[0].text = "Patient requested morning appointment"