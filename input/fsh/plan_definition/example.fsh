Instance: ExampleSGHIPlanDefinition
InstanceOf: SGHIPlanDefinition
Description: "An example of an PlanDefintion resource conforming to the SGHI PlanDefinition profile."
Usage: #example

* identifier[0]
  * use = #official
  * type.coding[0] = $identifier-type-cs#ACSN "Accession ID"
  * value = "APT123456"
  * system = $identifier-type-cs
  * assigner = Reference(ExampleSGHIOrganization)

* status = #booked
* name = "PlanDefinition Name"
* title = "PlanDefinition Title"
* date = "2025-03-25T09:00:00Z"
* action.title = "Example action title"
* useContext.code.code = #MR
* useContext.code.display = "Medical Record Number"
* useContext.valueReference.reference = "ExampleSGHIOrganization"
* useContext.valueReference.display = "Example value reference"
