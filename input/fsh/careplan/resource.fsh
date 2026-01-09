Profile: SGHICarePlan
Parent: CarePlan
Id: careplan
Title: "SGHI Care Plan"
Description: "A profile on the R5 CarePlan resource to represent a patient's treatment or management plan, such as a chemotherapy regimen."

* status 1..1
* intent 1..1

* identifier 1..*
  * type from SGHIDefaultIdentifierTypes (required)
  * insert CommonIdentifierRules
* title 1..1 MS
* description 1..1
* instantiatesCanonical 1..* MS
* subject only Reference(SGHIPatient)
* custodian 1..1 MS
* custodian only Reference(SGHIOrganization)
* created 1..1

* activity 1..* MS
* activity.performedActivity 1..* MS
* activity.performedActivity only SGHICodeableReference
* activity.performedActivity only CodeableReference(SGHITask)
* note.authorReference only Reference(SGHIOrganization or SGHIPractitioner)