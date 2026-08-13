Profile: SGHIPractitioner
Parent: Practitioner
Id: practitioner
Title: "SGHI Practitioner"
Description: "SGHI's Practitioner used in SGHI systems"
* identifier 1..
  * type from SGHIPersonIdentifierTypes (required)
  * insert CommonIdentifierRules
* name 1..
* name only SGHIHumanName
* gender 1..1
* telecom only SGHIContactPoint
* telecom.system from SGHIContactSystem
* telecom.use from SGHIContactPointUse
* birthDate 1..1
* qualification 1..
* qualification.identifier 0..
* qualification.code 1..1
* qualification.code only SGHICodeableConcept
* qualification.period 0..1
* qualification.issuer 0..1

