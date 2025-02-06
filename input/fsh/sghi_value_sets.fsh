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


ValueSet: SGHITerminologyVS
Id: sghi-terminology-value-sets
Title: "SGHI Terminologies"
Description: "Terminologies used in SGHI's systems"
* include codes from system http://id.who.int/icd/release/11/mms 
* include codes from system http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical 
* include codes from system http://loinc.org 