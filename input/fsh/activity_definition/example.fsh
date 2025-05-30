Instance: ExampleActivityDefintion
InstanceOf: SGHIActivityDefinition
Description: "An example of SGHIActivityDefinition resource"
Usage: #example

* identifier[0]
  * use = #official
  * type.coding[0] = $identifier-type-cs#ACSN "Accession ID"
  * value = "APT123456"
  * system = $identifier-type-cs
  * assigner = Reference(ExampleSGHIOrganization)
* status = #draft
* name = "Example ActivityDefition Name"
* title = "Example ActivityDefinition Title"
