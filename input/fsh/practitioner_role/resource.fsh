Profile: SGHIPractitionerRole
Parent: PractitionerRole
Id: sghi-practitioner-role
Title: "SGHI PractitionerRole"
Description: "PractitionerRole describes the types of services that practitioners provide to SGHI Organization at specific location(s). The profile a specific set of Roles/Locations/specialties/services that a practitioner may perform at an organization for a period of time."

* meta.profile = "https://fhir.slade360.co.ke/StructureDefinition/sghi-practitioner-role" (exactly)
* identifier 1..*
  * insert CommonIdentifierRules

* active 1..1

* period 0..1
  * start 1..1
  * end 1..1

* practitioner 1..1
* practitioner only SGHIReference
* practitioner only Reference(SGHIPractitioner)

* organization 1..1
* organization only SGHIReference
* organization only Reference(SGHIOrganization)

* code 1..*
* code only SGHICodeableConcept
* code from SGHIPractitionerRoleValueSet


* organization 1..1
* organization only SGHIReference
* organization only Reference(SGHIOrganization)

* specialty 1..*
* specialty only SGHICodeableConcept
* specialty from SGHIPractitionerSpecialtyValueSet

* location 1..*
* location only SGHIReference
* location only Reference(SGHILocation)

* contact 0..*
  * name 1..1
  * name only SGHIHumanName
  * telecom 1..1
  * telecom only SGHIContactPoint

* availability 0..*
  * availableTime 0..*
    * daysOfWeek 1..*
    * allDay 1..1
    * availableStartTime 0..1
    * availableEndTime 0..1
