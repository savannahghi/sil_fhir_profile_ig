Profile: SGHITask
Parent: Task
Id: sghi-task
Title: "SGHI Task Profile"
Description: "SGHI's profile for Task"

* identifier 1..*
  * system 1..1
  * value 1..1
  * type from http://hl7.org/fhir/ValueSet/identifier-type (extensible)
  * use from http://hl7.org/fhir/ValueSet/identifier-use (required)
  * assigner only Reference(SGHIOrganization)
* status 1..1
* intent 1..1
* businessStatus 1..1
  * coding 1..1
* authoredOn 1..1
* lastModified 1..1
* for 1..1
* for only Reference(SGHIPatient)
* owner 1..1
* owner only Reference(SGHIOrganization)
* requester 1..1
* requester only Reference(SGHIPatient)
* input 1..*
  * type 1..1
  * value[x] 1..1
* output 1..*
  * type 1..1
  * value[x] 1..1
* obeys task-lastModified

Invariant: task-lastModified
Description: "Last modified date must be greater than or equal to authored-on date"
Expression: "lastModified.empty() or authoredOn.empty() or lastModified >= authoredOn"
Severity: #error