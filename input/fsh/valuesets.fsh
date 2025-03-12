ValueSet: SGHIPatientIdentifierTypes
Id: sghi-patient-identifier-types
Title: "SGHI Identifier Types"
Description: "Identifier types used  to identify patient in SGHI's systems"
* ^status = #active
* include #patient-number "Patient Number" from system SGHIIdentifierCodeSystem
* include #national-id "National ID" from system SGHIIdentifierCodeSystem
* include #passport-number "Passport Number" from system SGHIIdentifierCodeSystem                    
* include #military-id "Military ID" from system SGHIIdentifierCodeSystem       
* include #alien-id "Alien ID" from system SGHIIdentifierCodeSystem 
* include #nhif-id "National Hospital Insurance Fund ID"  from system SGHIIdentifierCodeSystem
* include #smart-member-number "Smart Member Number" from system SGHIIdentifierCodeSystem 
* include #drchrono-id "Dr Chrono Chart ID" from system SGHIIdentifierCodeSystem 
* include #fhir-patient-id "FHIR Patient ID" from system SGHIIdentifierCodeSystem 
* include #erp-customer-id "ERP Customer ID" from system SGHIIdentifierCodeSystem 
* include #ccc-number "Comprehensive Care Clinic Number" from system SGHIIdentifierCodeSystem 
* include #refugee-id "Refugee ID" from system SGHIIdentifierCodeSystem 
* include #birth-certificate "Birth Certificate Number" from system SGHIIdentifierCodeSystem 
* include #mandate-number "Mandate Number" from system SGHIIdentifierCodeSystem 
* include #client-registry-number "Client Registry Number" from system SGHIIdentifierCodeSystem 
* include #slade-health-id "Slade Health ID" from system SGHIIdentifierCodeSystem

ValueSet: SGHIOrganizationIdentifierTypes
Id: sghi-organization-identifier-types
Title: "SGHI Identifier Types"
Description: "Identifier types used  to identify patient in SGHI's systems"
* include #mfl-code "Master Facility List Code"  from system SGHIIdentifierCodeSystem
* include #facility-registry-id "Facility Registry ID"  from system SGHIIdentifierCodeSystem
* include #slade-code "Slade360 Code" from system SGHIIdentifierCodeSystem

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
* include #stat "stat" from system SGHIIdentifierCodeSystem
* include #asap "asap" from system SGHIIdentifierCodeSystem
* include #preop "preop" from system SGHIIdentifierCodeSystem
* include #elective "routine" from system SGHIIdentifierCodeSystem

ValueSet: SGHIDiagnosticConclusionICD11
Id: sghi-diagnostic-conclusion-icd11
Title: "SGHI Diagnostic Conclusion ICD-11"
Description: "ICD-11 codes used for diagnostic conclusions in SGHI"
* include codes from system http://id.who.int/icd/release/11/mms

ValueSet: SGHIBedStatus
Id: sghi-bed-status
Title: "SGHI Bed Status"
Description: "Codes that can be used to indicate the operating status of an organization's location"
* include #closed "Closed" from system SGHIIdentifierCodeSystem
* include #housekeeping "Housekeeping" from system SGHIIdentifierCodeSystem
* include #occupied "Occupied" from system SGHIIdentifierCodeSystem
* include #unoccupied "Unoccupied" from system SGHIIdentifierCodeSystem
* include #contaminated "Contaminated" from system SGHIIdentifierCodeSystem
* include #isolated "Isolated" from system SGHIIdentifierCodeSystem

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
* include #building "Building" from system SGHIIdentifierCodeSystem
* include #wing "Wing" from system SGHIIdentifierCodeSystem 
* include #ward "Ward" from system SGHIIdentifierCodeSystem
* include #room "Room" from system SGHIIdentifierCodeSystem 
* include #bed "Bed" from system SGHIIdentifierCodeSystem
* include #vehicle "Vehicle" from system SGHIIdentifierCodeSystem 
* include #area "Area" from system SGHIIdentifierCodeSystem 
* include #virtual "Virtual" from system SGHIIdentifierCodeSystem

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
Title:          "SGHI Procedure Category value set"
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
Title:          "SGHI Procedure outcome value set"
Description:    "The outcome of the procedure - did it resolve the reasons for the procedure being performed?"
* include #385669000 "Successful" from system SGHIIdentifierCodeSystem
* include #385671000 "Unsuccessful" from system SGHIIdentifierCodeSystem
* include #385670004 "Partially successful" from system SGHIIdentifierCodeSystem

ValueSet:       SGHIProcedureComplication
Id:             sghi-procedure-complication
Title:          "SGHI ProcedureComplication value set"
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
* include codes from system http://loinc.org/

ValueSet: SGHIServiceRequestOrder
Id: sghi-service-request-order
Title: "SGHI Service Request Order "
Description: "LOIC codes used for order requests in SGHI"
* include codes from system http://loinc.org/

ValueSet: SGHIMedicationCodes
Id: sghi-medication-codes
Title: "SGHI Medication Codes"
Description: "ValueSet containing SGHI medication codes"
* ^status = #active
* include codes from system https://ocl-testing-api.savannahghi.org/fhir/CodeSystem/KNC4Drugs 

ValueSet: SGHIInvestigationCodes
Id: sghi-investigation-codes
Title: "SGHI Investigation Codes"
Description: "ValueSet containing SGHI investigation codes"
* ^status = #active
* include codes from system https://ocl-testing-api.savannahghi.org/fhir/CodeSystem/KNC4Investigations 

ValueSet: SGHIMedicationFormCodes
Id: sghi-medication-form-codes
Title: "SGHI Medication Form Codes"
Description: "ValueSet containing SGHI medication form codes"
* ^status = #active
* include codes from system https://ocl-testing-api.savannahghi.org/fhir/ValueSet/DoseForm 

ValueSet: SGHISubstanceCodes
Id: sghi-substance-codes
Title: "SGHI Substance Codes"
Description: "ValueSet containing SGHI substance codes"
* ^status = #active
* include codes from system https://ocl-testing-api.savannahghi.org/orgs/SIL/CodeSystem/KNC4Drugs

ValueSet: SGHIPractitionerRoleValueSet
Id: sghi-practitioner-role-value-set
Title: "SGHI Practitioner Value Set"
Description: "Custom practioner role value set"
* include #doctor "Doctor"  from system SGHIIdentifierCodeSystem
* include #nurse "Nurse"  from system SGHIIdentifierCodeSystem
* include #pharmacist "Pharmacist"  from system SGHIIdentifierCodeSystem
* include #researcher "Researcher"  from system SGHIIdentifierCodeSystem

ValueSet: SGHIPractitionerSpecialtyValueSet
Id: sghi-practitioner-specialty-value-set
Title: "SGHI Practitioner Value Set"
Description: "Custom practioner specialty value set"
* include #408467006 "Adult mental illness"  from system SGHIIdentifierCodeSystem
* include #394577000 "Anesthetics"  from system SGHIIdentifierCodeSystem
* include #394578005 "Audiological medicine"  from system SGHIIdentifierCodeSystem
* include #421661004 "Blood banking and transfusion medicine"  from system SGHIIdentifierCodeSystem
* include #408462000 "Burns care"  from system SGHIIdentifierCodeSystem

ValueSet: SGHIBodySiteValueSet
Id: sghi-body-site-value-set
Title: "SGHI Body Site Value Set"
Description: "Custom body site value set"
* include #111002 "Parathyroid gland"  from system SGHIIdentifierCodeSystem

ValueSet: SGHIMethodValueSet
Id: sghi-method-value-set
Title: "SGHI Method Value Set"
Description: "Custom method value set"
* include #APPLY "Apply"  from system SGHIIdentifierCodeSystem

ValueSet: SGHIIdentifierTypes
Id: sghi-identifier-types
Title: "SGHI Standard Identifier Types"
Description: "Standard identifier types used in SGHI's systems"
* include #SLADEID "Universal System Identifier" from system SGHIIdentifierCodeSystem

ValueSet: SGHIRouteOfAdministration
Id: route-of-administration
Title: "Route Of Administration"
Description: "A ValueSet defining the possible routes of drug administration."
* ^url = "https://ocl-testing-api.savannahghi.org/orgs/SIL/ValueSet/RouteOfAdministration"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false

* include codes from system https://ocl-testing-api.savannahghi.org/orgs/SIL/sources/KNC4Drugs/concepts/ where concept_class = "ROUTE"

ValueSet: SGHIServiceRequestCodeVS
Id: sghi-service-request-code-vs
Title: "SGHI ServiceRequest Code ValueSet"
Description: "ValueSet for ServiceRequest.code, including concepts from LOINC and ICHI."
* ^status = #active
* include codes from system https://loinc.org
* include codes from system https://id.who.int/ichi
* include codes from system https://ocl-testing-api.savannahghi.org/fhir/CodeSystem/KNC4Investigations

ValueSet: AllLoincCodes
Id: all-loinc
Title: "All LOINC Codes"
Description: "All codes from LOINC"
* ^status = #active
* include codes from system http://loinc.org

ValueSet: ICD11Codes
Id: ICD11Codes
Title: "All ICD-11 codes"
Description: "All codes from ICD-11"
* ^status = #active
* include codes from system http://id.who.int/icd/release/11/mms

ValueSet: ICHICodes
Id: ICHICodes
Title: "All ICHI codes"
Description: "All codes from ICHI"
* ^status = #active
* include codes from system http://id.who.int/ichi

ValueSet: SGHIConditionSeverity
Id: sghi-condition-severity
Title: "sghi-condition-severity"
Description: "Condition severity"
* ^status = #active
* include #mild "Mild"  from system SGHIIdentifierCodeSystem
* include #severe "Severe"  from system SGHIIdentifierCodeSystem
* include #moderate "Moderate"  from system SGHIIdentifierCodeSystem 