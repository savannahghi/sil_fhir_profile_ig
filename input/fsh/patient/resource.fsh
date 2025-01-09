Profile: SGHIPatient
Parent: Patient
Id: sghi-patient
Description: "SGHI's profile of the Patient resource."

* identifier 1..*
  * type from SGHIIdentifierTypes (extensible)
  * value 1..1

* active 1..1

* name 1..1

* telecom 1..*

* gender 1..1
  * ^binding.strength = #required
  * ^binding.valueSet = Canonical(SGHIAdministrativeGender)

* birthDate 1..1

* contact 1..*
  * relationship 1..*
    * ^binding.strength = #extensible
    * ^binding.valueSet = Canonical(SGHIContactRelationship)
  * name 1..1
  * telecom 1..1

* managingOrganization 1..1