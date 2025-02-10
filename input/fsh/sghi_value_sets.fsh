ValueSet: SGHIPatientIdentifierTypes
Id: sghi-patient-identifier-types
Title: "SGHI Identifier Types"
Description: "Identifier types used  to identify patient in SGHI's systems"
* include #PN "Patient Number" from system SGHIIdentifierCodeSystem
* include #ID "National ID" from system SGHIIdentifierCodeSystem
* include #PPN "Passport Number" from system SGHIIdentifierCodeSystem                    
* include #MID "Military ID" from system SGHIIdentifierCodeSystem       
* include #AID "Alien ID" from system SGHIIdentifierCodeSystem 
* include #NHIFID "National Hospital Insurance Fund ID"  from system SGHIIdentifierCodeSystem
* include #SMN "Smart Member Number" from system SGHIIdentifierCodeSystem 
* include #DCCID "Dr Chrono Chart ID" from system SGHIIdentifierCodeSystem 
* include #FPID "FHIR Patient ID" from system SGHIIdentifierCodeSystem 
* include #ERPID "ERP Customer ID" from system SGHIIdentifierCodeSystem 
* include #CCC "Comprehensive Care Clinic Number" from system SGHIIdentifierCodeSystem 
* include #RFID "Refugee ID" from system SGHIIdentifierCodeSystem 
* include #DOBID "Birth Certificate Number" from system SGHIIdentifierCodeSystem 
* include #MN "Mandate Number" from system SGHIIdentifierCodeSystem 
* include #CRN "Client Registry Number" from system SGHIIdentifierCodeSystem 
* include #HID "Health ID" from system SGHIIdentifierCodeSystem

ValueSet: SGHIOrganizationIdentifierTypes
Id: sghi-organization-identifier-types
Title: "SGHI Identifier Types"
Description: "Identifier types used  to identify patient in SGHI's systems"
* include #MFLCODE "Master Facility List Code"  from system SGHIIdentifierCodeSystem
* include #KMFR "Kenya Master Health Facility Registry"  from system SGHIIdentifierCodeSystem
* include #FRID "Facility Registry ID"  from system SGHIIdentifierCodeSystem
* include #SC "Slade360 Code" from system SGHIIdentifierCodeSystem

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

ValueSet: SGHIActPriority
Id: sghi-encounter-act-priority
Title: "SGHI Encounter Priority"
Description: "Urgency of an encounter"
* include #STAT "STAT" from system SGHIIdentifierCodeSystem
* include #ASAP "ASAP" from system SGHIIdentifierCodeSystem
* include #NORMAL "Routine" from system SGHIIdentifierCodeSystem
* include #PREOP "ASAP" from system SGHIIdentifierCodeSystem
* include #EL "Routine" from system SGHIIdentifierCodeSystem

ValueSet: SGHIEncounterClass
Id: sghi-encounter-class
Title: "SGHI Encounter Class"
Description: "Codes that can be used to indicate the class of encounter: a specific code indicating class of service provided"
* include #IP "In Patient" from system SGHIIdentifierCodeSystem
* include #AMB "Ambulatory (Out Patient)" from system SGHIIdentifierCodeSystem
* include #EMR "Emergency" from system SGHIIdentifierCodeSystem

ValueSet: SGHIDiagnosticConclusionICD11
Id: sghi-diagnostic-conclusion-icd11
Title: "SGHI Diagnostic Conclusion ICD-11"
Description: "ICD-11 codes used for diagnostic conclusions in SGHI"
* include codes from system http://id.who.int/icd/release/11/mms
