ValueSet: SGHIIdentifierTypes
Id: sghi-identifier-types
Title: "SGHI Identifier Types"
Description: "Identifier types used in SGHI systems"
* ^experimental = false
* include #SC "Slade Code" from system SGHIIdentifierCodeSystem
* include #CR "CR Number" from system SGHIIdentifierCodeSystem
* include #HI "Health ID" from system SGHIIdentifierCodeSystem
* include #CI "Customer ID" from system SGHIIdentifierCodeSystem
* include #GHI  "Global Health ID" from system SGHIIdentifierCodeSystem
* include #FN "File Number" from system SGHIIdentifierCodeSystem
* include #ID "National ID" from system SGHIIdentifierCodeSystem
* include #MID "Military ID" from system SGHIIdentifierCodeSystem
* include #AID "Alien ID" from system SGHIIdentifierCodeSystem
* include #NHIFID "NHIF ID" from system SGHIIdentifierCodeSystem
* include #PN "Patient Number" from system SGHIIdentifierCodeSystem
* include #PYO "Payer Member Number" from system SGHIIdentifierCodeSystem
* include #SMN "Smart Memeber Number" from system SGHIIdentifierCodeSystem
* include #FHIID "FHIR Patient ID" from system SGHIIdentifierCodeSystem
* include #ERPID "ERP Customer ID" from system SGHIIdentifierCodeSystem
* include #CN "CCC Number" from system SGHIIdentifierCodeSystem
* include #RFID "Refugee ID" from system SGHIIdentifierCodeSystem
* include #BID "Birth Certificate Number" from system SGHIIdentifierCodeSystem
* include #MN "Mandate Number" from system SGHIIdentifierCodeSystem
* include #PPN "Passport Number" from system $v2-0203


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