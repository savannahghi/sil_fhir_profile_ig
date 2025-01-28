Instance: ExampleSGHIEncounter
InstanceOf: SGHIEncounter
Description: "An example of an Encounter resource conforming to the SGHI Encounter profile."
* identifier[0].use = #official
* identifier[0].type = #VN "Visit Number"
* identifier[0].value = "VN123456789"
* identifier[0].assigner = Reference(ExampleSGHIOrganization)
* status = #in-progress
* class[0] = #AMB "Ambulatory"
* subject = Reference(ExampleSGHIPatient)
* episodeOfCare = Reference(ExampleSGHIEpisodeOfCare)
* serviceProvider = Reference(ExampleSGHIOrganization)
* priority = #A "ASAP"
* diagnosis[0].condition = Reference(ExampleSGHICondition)
* participant[0].actor = Reference(ExampleSGHIPatient)
* appointment = Reference(ExampleSGHIAppointment)