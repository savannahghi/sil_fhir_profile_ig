Instance: PatientExample
InstanceOf: SGHIPatient
Description: "An example of a patient profile."
* identifier[0].system = "https://savannahinformatics.com/identifiers/patient"
* identifier[0].value = "12345"
* identifier[0].type = #MR "Medical Record Number"
* active = true
* name[0].given[0] = "James"
* name[0].family = "Pond"
* telecom[0].system = #phone
* telecom[0].value = "+254-722-123456"
* gender = #male
* birthDate = "1990-07-15"
* contact[0].relationship[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/v2-0131"
* contact[0].relationship[0].coding[0].code = #N
* contact[0].name.given[0] = "Mary"
* contact[0].name.family = "Pond"
* contact[0].telecom[0].system = #phone
* contact[0].telecom[0].value = "+254-733-987654"
* managingOrganization = Reference(Organization/SGHospital)