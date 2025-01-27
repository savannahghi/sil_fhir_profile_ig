Instance: ExampleSGHIConsent
InstanceOf: SGHIConsent
Title: "Example SGHI Consent"
Description: "An example of consent conforming to the SGHIConsent profile."
* identifier[0].type = #MR "Medical Record Number"
* identifier[0].use = #official
* identifier[0].value = "550e8400-e29b-41d4-a716-446655440000"
* status = #active "Active"
* category = #59284-0 "Patient Consent"
* subject = Reference(ExampleSGHIPatient)
* date = "2025-01-27"
* grantee = Reference(ExampleSGHIOrganization)
* grantor = Reference(ExampleSGHIOrganization)
* provision[0].actor[0].reference = Reference(ExampleSGHIOrganization)