Instance: ExampleSGHIEpisodeOfCare
InstanceOf: SGHIEpisodeOfCare
Title: "Example SGHI Episode of Care"
Description: "An example of an episode of care conforming to the SGHIEpisodeOfCare profile."
* identifier[0].use = #official
* identifier[0].type = #VN "Visit Number"
* identifier[0].system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[0].value = "EOC1234567890"
* identifier[0].assigner = Reference(ExampleSGHIOrganization)
* status = #active
* patient = Reference(ExampleSGHIPatient)
* period.start = "2025-01-01"
* period.end = "2025-01-31"
* managingOrganization = Reference(ExampleSGHIOrganization)
* reason[0].value.reference = Reference(ExampleSGHICondition)
* diagnosis[0].condition.reference = Reference(ExampleSGHICondition)
* statusHistory.status = #planned "Planned"
* statusHistory.period.start = "2025-01-01"
* statusHistory.period.end = "2025-01-31"
* referralRequest = Reference(ExampleSGHIServiceRequest)