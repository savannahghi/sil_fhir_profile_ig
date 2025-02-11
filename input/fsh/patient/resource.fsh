Profile: SGHIPatient
Parent: Patient
Id: sghi-patient
Title: "SGHI Patient"
Description: "Demographics and other administrative information about an individual or animal receiving care or other health-related services."
* meta.profile = "https://fhir.slade360.co.ke/StructureDefinition/sghi-patient" (exactly)

* identifier 1..*
  * type from SGHIPatientIdentifierTypes (required)
  * use from $identifier-use (required)
  * value 1..1
  * system 1..1
  * assigner only Reference(SGHIOrganization)
* text 0..1
* active 1..1
* name 1..1
* name only SGHIHumanName
* telecom 1..*
* telecom only SGHIContactPoint
* gender 1..1 
* gender from http://hl7.org/fhir/ValueSet/administrative-gender (required)
* birthDate 1..1 
* contact 0..*
  * relationship 1..* 
  * relationship from http://hl7.org/fhir/ValueSet/patient-contactrelationship (extensible)
  * name 1..1
  * name only SGHIHumanName
  * telecom 1..1
  * telecom only SGHIContactPoint
  * organization only Reference(SGHIOrganization)
* managingOrganization 1..1
* managingOrganization only Reference(SGHIOrganization)
* generalPractitioner only Reference(SGHIOrganization)
