Profile: SGHIPlanDefinition
Parent: PlanDefinition
Id: sgh-plan-definition
Title: "SGHI Plan Definition Profile"
Description: "This resource allows for the definition of various types of plans as a sharable, consumable, and executable artifact."


* identifier 1..*
  * insert CommonIdentifierRules
* name 1..1
* title 1..1
* date 1..1
* useContext 1..
  * value[x] 1..1
  * valueCodeableConcept only SGHICodeableConcept
  * valueReference only SGHIReference
  * valueReference only Reference(SGHIPlanDefinition or SGHILocation or SGHIOrganization)
* action 1..
  * code only SGHICodeableConcept
  * reason only SGHICodeableConcept