Instance: ExampleSGHIAllergyIntolerance
InstanceOf: SGHIAllergyIntolerance
Description: "An example of an AllergyIntolerance resource conforming to the SGHI AllergyIntolerance profile."

* identifier[0]
  * use = #official
  * type.coding[0]
    * system = "http://terminology.hl7.org/CodeSystem/v2-0203"
    * code = #MR
    * display = "Medical Record Number"
  * value = "ALL123456789"
  * system = "http://terminology.hl7.org/CodeSystem/v2-0203"
  * assigner = Reference(ExampleSGHIOrganization)

* clinicalStatus.coding[0]
  * system = "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical"
  * code = #active
  * display = "Active"

* verificationStatus.coding[0]
  * system = "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification"
  * code = #confirmed
  * display = "Confirmed"

* code.coding[0]
  * system = "http://loinc.org"
  * code = #227493005
  * display = "Meat Allergy"

* type = #allergy
* category = #food
* criticality = #high
* onsetDateTime = "2025-01-01T10:30:00Z"
* patient = Reference(ExampleSGHIPatient)
* encounter = Reference(ExampleSGHIEncounter)
* recordedDate = "2025-01-22"
* participant[0].actor = Reference(ExampleSGHIPatient)

* reaction[0]
  * substance.coding[0]
    * system = "http://loinc.org"
    * code = #227493005
    * display = "Meat"
  * description = "Severe rash and difficulty breathing"
  * severity = #severe
  * exposureRoute.coding[0]
    * system = "http://terminology.hl7.org/CodeSystem/route-codes"
    * code = #oral
    * display = "Oral"
  * manifestation.reference = Reference(ExampleSGHIObservation)
