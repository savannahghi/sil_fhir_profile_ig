Instance: ExampleSGHIMedicationAdministration
InstanceOf: SGHIMedicationAdministration
Usage: #example
Title: "SGHI Medication Administration"
Description: "A dose of intravenous ceftriaxone given by a nurse on the ward against an inpatient prescription."

* identifier[0]
  * use = #official
  * type = SGHIDefaultIdentifierCodeSystem#default-id "Default Resource Identifier"
  * value = "example-medication-administration-id"
  * system = "https://fhir.slade360.co.ke/fhir/identifiers/medication-administration"
  * assigner = Reference(ExampleSGHIOrganization)
* status = #completed
* category = http://terminology.hl7.org/CodeSystem/medication-admin-location#inpatient "Inpatient"
* medication.reference = Reference(ExampleSGHIMedication)
* medication.concept = SGHIIdentifierCodeSystem#sghidefaultcode "SGHI Default Code"
* subject = Reference(ExampleSGHIPatient)
* encounter = Reference(ExampleSGHIEncounter)
* occurenceDateTime = "2025-01-22T08:05:00+03:00"
* recorded = "2025-01-22T08:07:00+03:00"
* performer[0]
  * function = http://terminology.hl7.org/CodeSystem/med-admin-perform-function#performer "Performer"
  * actor.reference = Reference(ExampleSGHIPractitioner)
* reason = Reference(ExampleSGHICondition)
* request = Reference(ExampleSGHIMedicationRequest)
* dosage
  * text = "Ceftriaxone 1 g IV infusion over 30 minutes"
  * route = SGHIRouteOfAdministrationCodeSystem#iv "Intravenous"
  * method = SGHIIdentifierCodeSystem#infuse "Infuse"
  * dose
    * value = 1
    * unit = "Grams"
    * system = Canonical(SGHIDosageUnitCodeSystem)
    * code = #g

Instance: ExampleSGHIMedicationAdministrationHeld
InstanceOf: SGHIMedicationAdministration
Usage: #example
Title: "SGHI Medication Administration (dose held)"
Description: "A scheduled oral dose withheld at the drug round because the patient was nil by mouth. The dose was not given, so status is not-done and the reason comes from the held set."

* identifier[0]
  * use = #official
  * type = SGHIDefaultIdentifierCodeSystem#default-id "Default Resource Identifier"
  * value = "example-medication-administration-held-id"
  * system = "https://fhir.slade360.co.ke/fhir/identifiers/medication-administration"
  * assigner = Reference(ExampleSGHIOrganization)
* status = #not-done
* statusReason = SGHIMedicationAdministrationCodeSystem#nil-by-mouth "Nil by mouth"
* medication.reference = Reference(ExampleSGHIMedication)
* medication.concept = SGHIIdentifierCodeSystem#sghidefaultcode "SGHI Default Code"
* subject = Reference(ExampleSGHIPatient)
* encounter = Reference(ExampleSGHIEncounter)
* occurenceDateTime = "2025-01-22T14:00:00+03:00"
* performer[0]
  * actor.reference = Reference(ExampleSGHIPractitioner)
* request = Reference(ExampleSGHIMedicationRequest)
