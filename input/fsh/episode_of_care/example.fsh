Instance: ExampleSGHIEpisodeOfCare
InstanceOf: SGHIEpisodeOfCare
Title: "Example SGHI Episode of Care"
Description: "An example of an episode of care conforming to the SGHIEpisodeOfCare profile."
* identifier[0].use = #official
* identifier[0].system = "http://sghi-hospital.org/episodes"
* identifier[0].value = "EOC1234567890"
* status = #active
* patient = Reference(ExampleSGHIPatient)
* period.start = "2025-01-01"
* period.end = "2025-01-31"
* managingOrganization = Reference(ExampleSGHIOrganization)
* reason[0].value.reference = Reference(ExampleSGHICondition)
* diagnosis[0].condition.reference = Reference(ExampleSGHICondition)