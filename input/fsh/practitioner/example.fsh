Instance: ExampleSGHIPractitioner
InstanceOf: SGHIPractitioner
Description: "An example of a Practitioner resource conforming to the SGHI Practitioner profile"

* identifier[0].system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[0].value = "12345"
* identifier[0].type = http://terminology.hl7.org/CodeSystem/v2-0203#MR "Medical Record Number"
* identifier[0].assigner = Reference(ExampleSGHIOrganization)

* active = true

* name[0].use = #official
* name[0].family = "Pond"
* name[0].given[0] = "James"
* name[0].text = "James Pond"

* telecom[0].system = #phone
* telecom[0].value = "+254-722-123456"

* gender = #male

* birthDate = "1990-07-15"

* qualification[0].identifier[0].system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* qualification[0].identifier[0].value = "Q-12345"
* qualification[0].identifier[0].type = http://terminology.hl7.org/CodeSystem/v2-0203#MR "Medical Record Number"
* qualification[0].identifier[0].assigner = Reference(ExampleSGHIOrganization)

* qualification[0].code.coding[0].system = "http://terminology.hl7.org/CodeSystem/v2-0360"
* qualification[0].code.coding[0].code = #NP
* qualification[0].code.coding[0].display = "Nurse Practitioner"

* qualification[0].period.start = "2010-07-15"
* qualification[0].period.end = "2030-07-15"

* qualification[0].issuer = Reference(ExampleSGHIOrganization)
