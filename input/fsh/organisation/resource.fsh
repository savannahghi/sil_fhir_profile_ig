Profile: SGHIOrganization
Parent: Organization
Id: sghi-organization
Title: "SGHI Organization"
Description: "SGHI's profile for Organization"
* meta.profile = "{{HAPI_FHIR_BASE_URL}}/StructureDefinition/sghi-organization" (exactly)

* identifier 1..*
  * type only SGHICodeableConcept
  * type from SGHIOrganizationIdentifierTypes (required)
  * use from $identifier-use (required)
  * value 1..1
  * system 1..1
  * assigner 1..1
  * assigner only SGHIReference
  * assigner only Reference(SGHIOrganization)

* active 1..1
* type 1..*
* type only SGHICodeableConcept

* name 1..1

* partOf only SGHIReference
* partOf only Reference(SGHIOrganization)

* contact 1..*

* qualification.issuer only SGHIReference
* qualification.issuer only Reference(SGHIOrganization)
