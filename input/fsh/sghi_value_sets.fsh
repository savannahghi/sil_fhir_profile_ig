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

ValueSet: SGHIServiceRequestCategory
Id: sghi-service-request-category
Title: "SGHI Service Request Category"
Description: "Set of concepts that can classify a requested service."
* include #26436-6 "Laboratory studies (set)" from system SGHIIdentifierCodeSystem 
* include #18748-4 "Diagnostic imaging study" from system SGHIIdentifierCodeSystem 
* include #21938-6 "Surgical approach" from system SGHIIdentifierCodeSystem
* include codes from system http://loinc.org

ValueSet:       SGHIProcedureStatus
Id:             procedure-status
Title:          "SGHI Procedure status value set"
Description:    "A value set for the status of a procedure, based on the FHIR ProcedureStatus codes."
* include codes from system http://hl7.org/fhir/event-status

ValueSet:       SGHIProcedureCategory
Id:             sghi-procedure-category
Title:          "Procedure Category value set"
Description:    "A value set for categorizing procedures, using LOINC codes where applicable."
* include #24642003 "Psychiatry procedure or service" from system SGHIIdentifierCodeSystem
* include #409063005 "Counseling" from system SGHIIdentifierCodeSystem 
* include #409073007 "Education" from system SGHIIdentifierCodeSystem
* include #387713003 "Surgical procedure (procedure)" from system SGHIIdentifierCodeSystem 
* include #103693007 "Diagnostic procedure" from system SGHIIdentifierCodeSystem
* include #46947000 "Chiropractic manipulation" from system SGHIIdentifierCodeSystem 
* include #410606002 "Social service procedure (procedure)" from system SGHIIdentifierCodeSystem 
* include codes from system http://loinc.org

ValueSet:       SGHIProcedureOutcome
Id:             sghi-procedure-outcome
Title:          "Procedure outcome value set"
Description:    "The outcome of the procedure - did it resolve the reasons for the procedure being performed?"
* include #385669000 "Successful" from system SGHIIdentifierCodeSystem
* include #385671000 "Unsuccessful" from system SGHIIdentifierCodeSystem
* include #385670004 "Partially successful" from system SGHIIdentifierCodeSystem

ValueSet:       SGHIProcedureComplication
Id:             sghi-procedure-complication
Title:          "ProcedureComplication value set"
Description:    "A value set for procedure complications, using LOINC codes."
* include codes from system http://loinc.org where concept is-a #42216-2

ValueSet:       SGHIProcedureFollowUpCodes
Id:             sghi-procedure-follow-up-codes
Title:          "SGHI Procedure follow up codes"
Description:    "Custom follow up procedure codes"
* include #18949003 "Change of dressing" from system SGHIIdentifierCodeSystem
* include #30549001 "Removal of suture" from system SGHIIdentifierCodeSystem
* include #241031001 "Removal of drain" from system SGHIIdentifierCodeSystem
* include #35963001 "Removal of staples" from system SGHIIdentifierCodeSystem
* include #225164002 "Removal of ligature" from system SGHIIdentifierCodeSystem
* include #447346005 "Cardiopulmonary exercise test (procedure)" from system SGHIIdentifierCodeSystem
* include #229506003 "Scar tissue massage" from system SGHIIdentifierCodeSystem
* include #274441001 "Suction drainage" from system SGHIIdentifierCodeSystem
* include #394725008 "Diabetes medication review (procedure)" from system SGHIIdentifierCodeSystem
* include #359825008 "Cytopathology, review of bronchioalveolar lavage specimen" from system SGHIIdentifierCodeSystem