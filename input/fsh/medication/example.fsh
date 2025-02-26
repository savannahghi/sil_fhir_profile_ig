Instance: ExampleSGHIMedication
InstanceOf: SGHIMedication
Usage: #example
Title: "SGHI Medication resource example"
Description: "An example of SGHI Medication resource Example"

* meta.profile = "{{HAPI_FHIR_BASE_URL}}/StructureDefinition/sghi-medication"

* identifier[0]
  * use = #official
  * type.coding[0] = $identifier-type-cs#SNO "Serial Number"
  * value = "example-medication-id"
  * system = $identifier-type-cs
  * assigner = Reference(ExampleSGHIOrganization)

* status = #active

* code = #AMP "Panadol 500mg tablets"

* marketingAuthorizationHolder = Reference(ExampleSGHIOrganization)
* marketingAuthorizationHolder.display = "Organization"
* ingredient[0]
  * item = Reference(ExampleSGHISubstance)
  * isActive = true
  * strengthRatio
    * numerator
      * value = 250
      * unit = "mg"
      * system = "http://unitsofmeasure.org"
      * code = #mg
    * denominator
      * value = 1
      * unit = "tablet"
      * system = "http://terminology.hl7.org/CodeSystem/v3-orderableDrugForm"
      * code = #TAB