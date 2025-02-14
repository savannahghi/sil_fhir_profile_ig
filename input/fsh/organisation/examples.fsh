Instance: ExampleSGHIOrganization
InstanceOf: SGHIOrganization
Usage: #example
Title: "Example SGHI Organization"
Description: "An example Organization resource conforming to the SGHIOrganization profile."

* identifier[0].use = #official
* identifier[0].type = #PPN "Passport number"
* identifier[0].value = "123456789"
* identifier[0].system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[0].assigner = Reference(ExampleSGHIOrganization)
* identifier[0].type[0].coding.code = #PPN
* identifier[0].type[0].coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* active = true
* type = #prov "Healthcare Provider"
* name = "SGHI Healthcare Organization"
* contact.purpose = #ADMIN "Administrative"
* contact.name.text = "Jane Doe"
* contact.telecom[0].system = #phone
* contact.telecom[0].value = "+254717355900"
* contact.telecom[0].use = #work
* contact.telecom[1].system = #email
* contact.telecom[1].value = "admin@sghi.org"
* contact.telecom[1].use = #work
* contact.address.use = #work
* contact.address.type = #physical
* contact.address.city = "Nairobi"
* contact.address.postalCode = "98765"
* contact.address.country = "Kenya"
