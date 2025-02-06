Profile: SGHIOrganization
Parent: Organization
Id: sghi-organization
Title: "SGHI Organization"
Description: "SGHI's profile for Organization"
* identifier 1..*
  * type from SGHIOrganizationIdentifierTypes (required)
  * use from $identifier-use (required)
  * value 1..1
  * system 1..1
* active 1..1
* type 1..*
* name 1..1
* contact 1..*
