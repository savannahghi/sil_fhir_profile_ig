Instance: ExampleSGHIEncounter
InstanceOf: SGHIEncounter
Description: "An example of an Encounter resource conforming to the SGHI Encounter profile."


* identifier[0]
  * use = #official
  * type.coding[0] = $identifier-type-cs#VN "Visit Number"
  * value = "VN123456789"
  * system = $identifier-type-cs
  * assigner = Reference(ExampleSGHIOrganization)
* identifier[0].use = #official
* identifier[0].type = #VN "Visit Number"
* identifier[0].value = "VN123456789"
* identifier[0].system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[0].assigner = Reference(ExampleSGHIOrganization)
* status = #in-progress
* class = #AMB "Ambulatory"
* subject = Reference(ExampleSGHIPatient)
* episodeOfCare = Reference(ExampleSGHIEpisodeOfCare)
* serviceProvider = Reference(ExampleSGHIOrganization)
* diagnosis[0].condition = Reference(ExampleSGHICondition)
* participant[0].actor = Reference(ExampleSGHIPatient)
* appointment = Reference(ExampleSGHIAppointment)