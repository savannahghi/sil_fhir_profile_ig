Instance: ExampleSGHIMedication
InstanceOf: SGHIMedication
Usage: #example
Title: "SGHI Medication resource example"
Description: "An example of SGHI Medication resource Example"

* identifier
  * use = #official
  * type = #SNO "Serial Number"
  * value = "example-medication-id"
  * system = "http://terminology.hl7.org/CodeSystem/v2-0203"
  * assigner = Reference(ExampleSGHIOrganization)
* status = #active
* code
  * coding
    * code = #763158003 "Medicinal product (product)"
* ingredient
  * item = Reference(ExampleFHIRSubstance)
  * isActive = true
  * strengthRatio.numerator
    * value = 250
    * unit = "mg"
    * system = "http://unitsofmeasure.org"