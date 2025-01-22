Profile: SGHIOrganization
Parent: Organization
Id: sghi-organization
Title: "SGHI Organization"
Description: "A formally or informally recognized grouping of people or organizations formed for the purpose of achieving some form of collective action. Includes companies, institutions, corporations, departments, community groups, healthcare practice groups, payer/insurer, etc."
* identifier 1..*
  * type from http://hl7.org/fhir/ValueSet/identifier-type (extensible)
  * use from http://hl7.org/fhir/ValueSet/identifier-use (required)
  * value 1..1
* active 1..1
* type 1..*
* name 1..1
* contact 1..1
