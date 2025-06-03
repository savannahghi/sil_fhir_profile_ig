Profile: SGHISpecimen
Parent: Specimen
Id: sghi-specimen
Title: "SGHI Specimen"
Description: "A sample to be used for analysis."

* identifier 1..*
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
* collection.collector 1..1
* collection.collector only SGHIReference
* collection.collector only Reference(SGHIPractitioner)
* collection.collected[x] 1..1