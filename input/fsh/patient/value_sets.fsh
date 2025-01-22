ValueSet: SGHIIdentifierTypes
Id: sghi-identifier-types
Title: "SGHI Identifier Types"
Description: "Identifier types used in SGHI systems"
* ^experimental = false
* include #SC "Slade Code" from system SGHIIdentifierCodeSystem
* include #CR "CR Number" from system SGHIIdentifierCodeSystem
* include #HI "Health ID" from system SGHIIdentifierCodeSystem
* include #NI "National ID" from system $v2-0203
* include #PPN "Passport Number" from system $v2-0203

ValueSet: SGHIAdministrativeGender
Id: sghi-administrative-gender
Title: "SGHI Administrative Gender"
Description: "Gender codes used in SGHI systems"
* ^experimental = false
* include #male "Male" from system $administrative-gender
* include #female "Female" from system $administrative-gender
* include #other "Other" from system $administrative-gender

ValueSet: SGHIContactRelationship
Id: sghi-contact-relationship
Title: "SGHI Contact Relationship Types"
Description: "Contact relationship types used in SGHI systems"
* ^experimental = false
* include #N "Next-of-Kin" from system $v2-0131
* include #C "Emergency Contact" from system $v2-0131
* include #F "Father" from system $v2-0131
* include #M "Mother" from system $v2-0131
* include #S "Spouse" from system $v2-0131