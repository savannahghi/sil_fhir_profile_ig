Instance: ExampleSGHIPractitionerRole
InstanceOf: SGHIPractitionerRole
Description: "An example of a PractitionerRole resource conforming to the SGHI PractitionerRole profile."

* identifier[0].type = http://terminology.hl7.org/CodeSystem/v2-0203#MR "Medical Record Number"
* identifier[0].value = "3456789QWERTY"
* identifier[0].system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[0].assigner = Reference(ExampleSGHIOrganization)
* active = true
* period.start = "2025-01-01"
* period.end = "2025-01-31"

* practitioner = Reference(ExampleSGHIPractitioner)

* organization = Reference(ExampleSGHIOrganization)
* code = #71388002 "doctor"
* specialty[0] = http://snomed.info/sct#264814015 "General practice"
* location[0] = Reference(ExampleSGHILocation) "Nairobi Hospital"

* contact[0].name.given[0] = "Mary"
* contact[0].name.family = "Pond"
* contact[0].name.use = #official
* contact[0].name.text = "Mary Pond"
* contact[0].telecom[0].system = #phone
* contact[0].telecom[0].value = "+254-733-987654"
* contact[0].address.use = #work
* contact[0].address.type = #physical
* contact[0].address.city = "Nairobi"
* contact[0].address.postalCode = "98765"
* contact[0].address.country = "Kenya"

* availability[0].availableTime[0].daysOfWeek[0] = #mon "Monday"
* availability[0].availableTime[0].allDay = false
* availability[0].availableTime[0].availableStartTime = "08:00:00"
* availability[0].availableTime[0].availableEndTime = "15:00:00"
* availability[0].notAvailableTime[0].description = "Away on business"
* availability[0].notAvailableTime[0].during.start = "2025-07-07"
* availability[0].notAvailableTime[0].during.end = "2025-10-07"