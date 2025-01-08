ValueSet: SGHIIdentifierTypes
Id: sghi-identifier-types
Title: "SGHI Identifier Types"
Description: "Identifier types used in SGHI systems"
* ^experimental = false
* include #MR "Medical Record Number" from system http://terminology.hl7.org/CodeSystem/v2-0203
* include #NI "National ID" from system http://terminology.hl7.org/CodeSystem/v2-0203
* include #PPN "Passport Number" from system http://terminology.hl7.org/CodeSystem/v2-0203
* include #CZ "Citizenship Card" from system http://terminology.hl7.org/CodeSystem/v2-0203

ValueSet: SGHIAdministrativeGender
Id: sghi-administrative-gender
Title: "SGHI Administrative Gender"
Description: "Gender codes used in SGHI systems"
* ^experimental = false
* include #male "Male" from system http://hl7.org/fhir/administrative-gender
* include #female "Female" from system http://hl7.org/fhir/administrative-gender
* include #other "Other" from system http://hl7.org/fhir/administrative-gender
* include #unknown "Unknown" from system http://hl7.org/fhir/administrative-gender

ValueSet: SGHIContactRelationship
Id: sghi-contact-relationship
Title: "SGHI Contact Relationship Types"
Description: "Contact relationship types used in SGHI systems"
* ^experimental = false
* include #N "Next-of-Kin" from system http://terminology.hl7.org/CodeSystem/v2-0131
* include #C "Emergency Contact" from system http://terminology.hl7.org/CodeSystem/v2-0131
* include #F "Father" from system http://terminology.hl7.org/CodeSystem/v2-0131
* include #M "Mother" from system http://terminology.hl7.org/CodeSystem/v2-0131
* include #S "Spouse" from system http://terminology.hl7.org/CodeSystem/v2-0131