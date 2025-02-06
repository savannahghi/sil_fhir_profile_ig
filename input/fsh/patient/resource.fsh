Profile: SGHIPatient
Parent: Patient
Id: sghi-patient
Title: "SGHI Patient"
Description: "SGHI's profile of the Patient"

* identifier 1..*
  * type from SGHIPatientIdentifierTypes (required)
  * use from $identifier-use (required)
  * value 1..1
  * system 1..1
* text 0..1
* active 1..1
* name 1..1
* telecom 1..*
* gender 1..1 
* gender from http://hl7.org/fhir/ValueSet/administrative-gender (required)
* birthDate 1..1 
* contact 1..*
  * relationship 1..* 
  * relationship from http://hl7.org/fhir/ValueSet/patient-contactrelationship (extensible)
  * name 1..1
  * telecom 1..1
* managingOrganization 1..1
