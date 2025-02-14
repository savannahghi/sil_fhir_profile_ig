Instance: ExampleSGHIConsent
InstanceOf: SGHIConsent
Title: "Example SGHI Consent"
Description: "An example of consent conforming to the SGHIConsent profile."

* identifier[0]
  * use = #official
  * type.coding[0] = $identifier-type-cs#MR "Medical Record Number"
  * value = "550e8400-e29b-41d4-a716-446655440000"
  * system = $identifier-type-cs
  * assigner = Reference(ExampleSGHIOrganization)
* status = #active "Active"
* category = #59284-0 "Patient Consent"
* subject = Reference(ExampleSGHIPatient)
* date = "2025-01-27"
* grantee = Reference(ExampleSGHIPatient)
* grantor = Reference(ExampleSGHIOrganization)
* provision[0].actor[0].reference = Reference(ExampleSGHIOrganization)
* provision[0].actor.reference.display = "Organization"
* controller = Reference(ExampleSGHIOrganization)
* manager = Reference(ExampleSGHIOrganization)
* verification[0].verifiedBy = Reference(ExampleSGHIOrganization)
* verification[0].verified = true
* verification[0].verifiedWith = Reference(ExampleSGHIPatient)
* verification[0].verificationDate = "2025-01-27"
* decision = #permit
