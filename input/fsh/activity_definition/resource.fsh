Profile: SGHIActivityDefinition
Parent: ActivityDefinition
Id: sgh-activity-definition
Title: "SGHI Activity Defintion Profile"
Description: "This resouce allows for the definition of some activity to be performed, independent of a particular patient, practitioner, or other performance context."

* identifier 1..*
  * insert CommonIdentifierRules
* name 1..1
* title 1..1
* dosage only SGHIDosage