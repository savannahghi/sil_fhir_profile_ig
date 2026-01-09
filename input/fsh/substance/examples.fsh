Instance: ExampleSGHISubstance
InstanceOf: SGHISubstance
Description: "An example of a substance profile"

* meta.profile = "{{HAPI_FHIR_BASE_URL}}/StructureDefinition/substance"

* identifier[0].system = "http://example.org/substances"
* identifier[0].value = "SUBST001"
* identifier[0].type = http://terminology.hl7.org/CodeSystem/v2-0203#NDC "National Drug Code"
* identifier[0].assigner = Reference(ExampleSGHIOrganization)
* instance = true
* status = #active

* category[0] = http://terminology.hl7.org/CodeSystem/substance-category#chemical "Chemical"

* code = http://snomed.info/sct#387458008 "Paracetamol"
* description = "Paracetamol 500mg tablets"
* expiry = "2024-12-31"
* quantity = 100 'mg' "milligram"

* ingredient[0].quantity.numerator = 500 'mg'
* ingredient[0].quantity.denominator = 1 'TAB'
* ingredient[0].substanceCodeableConcept = http://snomed.info/sct#387458008 "Paracetamol"