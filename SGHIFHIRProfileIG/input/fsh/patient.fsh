// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.
Profile: SGHIPatient
Parent: Patient
Description: "SGHI's profile of the Patient resource."
* name 1..* MS

Instance: PatientExample
InstanceOf: SGHIPatient
Description: "An example of a patient profile."
* name
  * given[0] = "James"
  * family = "Pond"