ValueSet: SGHIAdministrativeGender
Id: sghi-administrative-gender
Title: "SGHI Administrative Gender"
Description: "Gender codes used in SGHI systems"
* ^experimental = false
* include #male "Male" from system http://hl7.org/fhir/administrative-gender
* include #female "Female" from system http://hl7.org/fhir/administrative-gender

ValueSet: SGHIContactRelationship
Id: sghi-contact-relationship
Title: "SGHI Contact Relationship Types"
Description: "Contact relationship types used in SGHI systems"
* ^experimental = false
* include #N "Next-of-Kin" from system $v2-0131
* include #C "Emergency Contact" from system $v2-0131
* include #S "Spouse" from system $v2-0131
* include #E "Employer" from system $v2-0131
* include #CP "Contact Person" from system $v2-0131