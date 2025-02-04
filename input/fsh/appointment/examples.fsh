Instance: ExampleSGHIAppointment
InstanceOf: SGHIAppointment
Description: "An example of an Appointment resource conforming to the SGHI Appointment profile."
Usage: #example

* identifier[0]
  * use = #official
  * system = "http://terminology.hl7.org/CodeSystem/v2-0203"
  * type = #ACSN "Accession ID"
  * value = "APT123456"
  * assigner = Reference(ExampleSGHIOrganization)

* status = #booked

* specialty[0] = http://snomed.info/sct#394814009 "General practice"

* appointmentType = http://terminology.hl7.org/CodeSystem/v2-0276#ROUTINE "Routine appointment"

* reason[0].reference = Reference(ExampleSGHICondition)
* reason[1].reference = Reference(ExampleSGHIObservation)

* priority = http://terminology.hl7.org/CodeSystem/v3-ActPriority#R "Routine"

* start = "2023-11-25T09:00:00Z"
* end = "2023-11-25T09:30:00Z"

* created = "2023-11-20T10:00:00Z"

* subject = Reference(ExampleSGHIPatient)

* participant[0]
  * actor = Reference(ExampleSGHIPatient)
  * status = #accepted
  * type = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#ATND "Attender"

* note[0].text = "Patient requested morning appointment"