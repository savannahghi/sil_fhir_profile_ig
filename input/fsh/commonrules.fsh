RuleSet: CommonIdentifierRules
* type only SGHICodeableConcept
* type from $identifier-type (required)
* use from $identifier-use (required)
* value 1..1
* system 1..1
* assigner 1..1
* assigner only Reference(SGHIOrganization)

RuleSet: CommonContactRules
* relationship 1..* 
  * relationship from SGHIContactRelationship (required)
  * name 1..1
  * name only SGHIHumanName
  * telecom 1..1
  * telecom only SGHIContactPoint
  * organization only Reference(SGHIOrganization)