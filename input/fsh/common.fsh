Profile: SGHIHumanName
Parent: HumanName
Id: sghi-human-name
Title: "SGHI HumanName"
Description: "A specialized human name data type with stricter cardinalities."

* family 1..1
* given 1..*
* use 1..1
* text 1..1

Profile: SGHIContactPoint
Parent: ContactPoint
Id: sghi-contact-point
Title: "SGHI ContactPoint"
Description: "A custom contact point with stricter cardinality"
* system 1..1
* value 1..1

// Multiple resources in our domain can “only” use our specialized CodeableConcept data type profile,
// ensuring consistency across our IG
Profile: SGHICodeableConcept
Parent: CodeableConcept
Id: sghi-codeableconcept
Title: "SGHI CodeableConcept"
Description: "A CodeableConcept represents a value that is usually supplied by providing a reference to one or more terminologies or ontologies but may also be defined by the provision of text. This is a common pattern in healthcare data."

* coding 1..*
  * system 1..1
  * code 1..1
  * display 1..1
* text 0..1

Profile: SGHICodeableReference
Parent: CodeableReference
Id: sghi-codeable-reference
Title: "SGHI CodeableReference"
Description: "SGHI CodeableReference"
* concept only SGHICodeableConcept
* reference only SGHIReference

Profile: SGHIReference
Parent: Reference
Id: sghi-reference
Title: "SGHI Reference"
Description: "SGHI Reference"
* reference 1..1
* type 0..1
* display 1..1