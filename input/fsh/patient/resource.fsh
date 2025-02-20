Profile: SGHIPatient
Parent: Patient
Id: sghi-patient
Title: "SGHI Patient"
Description: "Demographics and other administrative information about an individual or animal receiving care or other health-related services."
* meta.profile = "https://fhir.slade360.co.ke/StructureDefinition/sghi-patient" (exactly)

* identifier 1..*
  * type only SGHICodeableConcept
  * type from SGHIPatientIdentifierTypes (required)
  * use from $identifier-use (required)
  * value 1..1
  * system 1..1
  * assigner 1..1
  * assigner only SGHIReference
  * assigner only Reference(SGHIOrganization)

* text 0..1
* active 1..1

* name 1..1
* name only SGHIHumanName

* telecom 1..*
* telecom only SGHIContactPoint

* gender 1..1 
* gender from SGHIAdministrativeGender (required)
* birthDate 1..1 

* contact 0..*
  * relationship 1..* 
  * relationship only SGHICodeableConcept
  * relationship from SGHIContactRelationship (required)
  * name 1..1
  * name only SGHIHumanName
  * telecom 1..1
  * telecom only SGHIContactPoint
  * organization only SGHIReference
  * organization only Reference(SGHIOrganization)

* managingOrganization 1..1
* managingOrganization only SGHIReference
* managingOrganization only Reference(SGHIOrganization)

* generalPractitioner only SGHIReference
* generalPractitioner only Reference(SGHIOrganization)

* link.other only SGHIReference
* link.other only Reference(SGHIPatient)
