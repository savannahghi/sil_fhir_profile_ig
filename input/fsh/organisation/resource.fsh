Profile: SGHIOrganization
Parent: Organization
Id: organization
Title: "SGHI Organization"
Description: "SGHI's profile for Organization"

* identifier 1..*
  * type only SGHICodeableConcept
  * type from SGHIOrganizationIdentifierTypes (required)
  * use from $identifier-use (required)
  * value 1..1
  * system 1..1

* active 1..1
* name 1..1

* partOf only SGHIReference
* partOf only Reference(SGHIOrganization)

* qualification.issuer only SGHIReference
* qualification.issuer only Reference(SGHIOrganization)
