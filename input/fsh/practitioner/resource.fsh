Profile: SGHIPractitioner
Parent: Practitioner
Id: sghi-practitioner
Title: "SGHI Practitioner"
Description: "SGHI's Practitioner used in SGHI systems"
* identifier 1..
  * insert CommonIdentifierRules
* name 1..
* name only SGHIHumanName
* gender 1..1
* telecom only SGHIContactPoint
* telecom.system from SGHIContactSystem
* telecom.use from SGHIContactPointUse
* birthDate 1..1
* qualification 1..
* qualification.identifier 1..
  * insert CommonIdentifierRules
* qualification.code 1..1
* qualification.code only SGHICodeableConcept
* qualification.period 1..1
* qualification.issuer 1..1
* qualification.issuer only SGHIReference
* qualification.issuer only Reference(SGHIOrganization)

