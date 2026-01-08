Profile: SGHISpecimen
Parent: Specimen
Id: specimen
Title: "SGHI Specimen"
Description: "A sample to be used for analysis."

* identifier 1..*
  * type from SGHIDefaultIdentifierTypes (required)
  * insert CommonIdentifierRules
* accessionIdentifier 1..1
* status 1..1 
* subject 1..1
* subject only SGHIReference
* subject only Reference(SGHIPatient)
* receivedTime 1..1
* role 1..
* role only SGHICodeableConcept
* collection 1..1
* collection.collector only SGHIReference
* collection.collector only Reference(SGHIPractitioner)
* collection.collected[x] 1..1
* processing 1..1
* processing.method 1..1
* processing.method only SGHICodeableConcept
* processing.method from SGHISpecimenTypeVs
* processing.additive only SGHIReference