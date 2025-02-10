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

ValueSet: SGHIBedStatus
Id: sghi-bed-status
Title: "SGHI Bed Status"
Description: "Codes that can be used to indicate the operating status of an organization's location"
* include #CLOSED "Closed" from system SGHIIdentifierCodeSystem
* include #HOUSEKEEPING "Housekeeping" from system SGHIIdentifierCodeSystem
* include #OCCUPIED "Occupied" from system SGHIIdentifierCodeSystem
* include #UNOCCUPIED "Unoccupied" from system SGHIIdentifierCodeSystem
* include #CONTAMINATED "Contaminated" from system SGHIIdentifierCodeSystem
* include #ISOLATED "Isolated" from system SGHIIdentifierCodeSystem

ValueSet: SGHILocationMode
Id: sghi-location-mode
Title: "SGHI Location Mode"
Description: "Codes that can be used to indicate the mode of a location"
* include #instance "Instance" from system SGHIIdentifierCodeSystem
* include #kind "Instance" from system SGHIIdentifierCodeSystem

ValueSet: SGHIContactPointUse
Id: sghi-contact-point-use
Title: "SGHI Contact Point Use"
Description: "Code used to indicate contact use"
* include #work "Work" from system SGHIIdentifierCodeSystem
* include #mobile "Mobile" from system SGHIIdentifierCodeSystem

ValueSet: SGHIContactSystem
Id: sghi-contact-system
Title: "SGHI Contact System"
Description: "Code used to indicate what communications system is required to make use of the contact."
* include #phone "Phone" from system SGHIIdentifierCodeSystem
* include #email "Email" from system SGHIIdentifierCodeSystem

ValueSet: SGHILocationForm
Id: sghi-location-form
Title: "SGHI Location Form"
Description: "Physical form of the location, e.g. building, room, vehicle, road, virtual."
* include #bu "Building" from system SGHIIdentifierCodeSystem
* include #wi "Wing" from system SGHIIdentifierCodeSystem 
* include #wa "Ward" from system SGHIIdentifierCodeSystem
* include #ro "Room" from system SGHIIdentifierCodeSystem 
* include #bd "Bed" from system SGHIIdentifierCodeSystem
* include #ve "Vehicle" from system SGHIIdentifierCodeSystem 
* include #area "Area" from system SGHIIdentifierCodeSystem 
* include #vi "Virtual" from system SGHIIdentifierCodeSystem
