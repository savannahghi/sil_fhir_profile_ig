// Example of a consultation encounter
Instance: Consultation
InstanceOf: SGHIEncounter
Title: "Consultation Encounter"
Description: "Example of a consultation encounter for SGHI."
* status = #in-progress
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB
* subject = Reference(SGHIPatient/example-patient)
* episodeOfCare = Reference(SGHIEpisodeOfCare/example-episode)
* serviceProvider = Reference(SGHIOrganization/example-organization)
* identifier.system = "http://example.org/identifiers/encounter"
* identifier.value = "12345"