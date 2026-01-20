ValueSet: SGHIPersonIdentifierTypes
Id: person-identifier-types
Title: "SGHI Person Identifier Types"
Description: "Identifier types used  to identify patient, practitioner, animal or a live actor in the healthcare context in SGHI's systems"
* ^status = #active
* include SGHIPersonIdentifierCodeSystem#national-id "National ID" 
* include SGHIPersonIdentifierCodeSystem#passport-number "Passport Number"
* include SGHIPersonIdentifierCodeSystem#military-id "Military ID" 
* include SGHIPersonIdentifierCodeSystem#alien-id "Alien ID"
* include SGHIPersonIdentifierCodeSystem#patient-number "Patient Number"
* include SGHIPersonIdentifierCodeSystem#payer-member-number "Payer Member Number"
* include SGHIPersonIdentifierCodeSystem#smart-member-number "Smart Member Number"
* include SGHIPersonIdentifierCodeSystem#drchrono-id "Dr Chrono Chart ID"
* include SGHIPersonIdentifierCodeSystem#erp-customer-id "ERP Customer ID"
* include SGHIPersonIdentifierCodeSystem#ccc-number "Comprehensive Care Clinic Number"
* include SGHIPersonIdentifierCodeSystem#refugee-id "Refugee ID"
* include SGHIPersonIdentifierCodeSystem#birth-certificate "Birth Certificate Number"
* include SGHIPersonIdentifierCodeSystem#client-registry-number "Client Registry Number"
* include SGHIPersonIdentifierCodeSystem#slade-health-id "Slade Health ID"
* include SGHIDefaultIdentifierCodeSystem#default-id "Default Resource Identifier"

ValueSet: SGHIOrganizationIdentifierTypes
Id: organization-identifier-types
Title: "SGHI Organization Identifier Types"
Description: "Identifier types used to identify an organization across in SIL's systems"
* include SGHIOrganisationIdentifierCodeSystem#mfl-code "Master Facility List Code"
* include SGHIOrganisationIdentifierCodeSystem#sha-slade-code "SHA Slade Code"
* include SGHIOrganisationIdentifierCodeSystem#fid-code "Facility ID Code"
* include SGHIOrganisationIdentifierCodeSystem#fr-code "Facility Registry Code"
* include SGHIOrganisationIdentifierCodeSystem#kmpdc-registration-number "KMPDC Registration Number"
* include SGHIOrganisationIdentifierCodeSystem#slade-code "Slade360 Code"

ValueSet: SGHIDrugsIdentifierType
Id: drugs-identifier-type
Title: "SGHI Drugs Identifier Types"
Description: """ Identifier types used across dm+d hierarchy"""
* ^status = #active
* ^experimental = false
* include SGHIIdentifierCodeSystem#vtmid
* include SGHIIdentifierCodeSystem#vtmidprev
* include SGHIIdentifierCodeSystem#isid
* include SGHIIdentifierCodeSystem#isidprev
* include SGHIIdentifierCodeSystem#vpid
* include SGHIIdentifierCodeSystem#vpidprev
* include SGHIIdentifierCodeSystem#vppid
* include SGHIIdentifierCodeSystem#apid
* include SGHIIdentifierCodeSystem#appid
* include SGHIIdentifierCodeSystem#dbid
* include SGHIIdentifierCodeSystem#slade-concept-code

ValueSet: SGHIContactRelationship
Id: contact-relationship
Title: "SGHI Contact Relationship Types"
Description: "Contact relationship types used in SGHI systems"
* ^experimental = false
* include #N "Next-of-Kin" from system $v2-0131
* include #C "Emergency Contact" from system $v2-0131
* include #S "Spouse" from system $v2-0131
* include #E "Employer" from system $v2-0131
* include #CP "Contact Person" from system $v2-0131

ValueSet: SGHIActPriority
Id: encounter-act-priority
Title: "SGHI Encounter Priority"
Description: "Urgency of an encounter"
* include SGHIIdentifierCodeSystem#stat 
* include SGHIIdentifierCodeSystem#asap
* include SGHIIdentifierCodeSystem#preop 
* include SGHIIdentifierCodeSystem#elective

ValueSet: SGHIDiagnosticConclusionICD11
Id: diagnostic-conclusion-icd11
Title: "SGHI Diagnostic Conclusion ICD-11"
Description: "ICD-11 codes used for diagnostic conclusions in SGHI"
* include codes from system http://id.who.int/icd/release/11/mms

ValueSet: SGHIBedStatus
Id: bed-status
Title: "SGHI Bed Status"
Description: "Codes that can be used to indicate the operating status of an organization's location"
* include #closed "Closed" from system SGHIIdentifierCodeSystem
* include #housekeeping "Housekeeping" from system SGHIIdentifierCodeSystem
* include #occupied "Occupied" from system SGHIIdentifierCodeSystem
* include #unoccupied "Unoccupied" from system SGHIIdentifierCodeSystem
* include #contaminated "Contaminated" from system SGHIIdentifierCodeSystem
* include #isolated "Isolated" from system SGHIIdentifierCodeSystem

ValueSet: SGHILocationMode
Id: location-mode
Title: "SGHI Location Mode"
Description: "Codes that can be used to indicate the mode of a location"
* include #instance "Instance" from system SGHIIdentifierCodeSystem
* include #kind "Instance" from system SGHIIdentifierCodeSystem

ValueSet: SGHIContactPointUse
Id: contact-point-use
Title: "SGHI Contact Point Use"
Description: "Code used to indicate contact use"
* ^status = #active
* include http://hl7.org/fhir/ValueSet/contact-point-use#work
* include http://hl7.org/fhir/ValueSet/contact-point-use#mobile

ValueSet: SGHIContactSystem
Id: contact-system
Title: "SGHI Contact System"
Description: "Code used to indicate what communications system is required to make use of the contact."
* ^status = #active
* include http://hl7.org/fhir/ValueSet/contact-point-system#phone
* include http://hl7.org/fhir/ValueSet/contact-point-system#email

ValueSet: SGHILocationForm
Id: location-form
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
Id: service-request-category
Title: "Service Request Categories"
Description: "A ValueSet categorizing different types of service requests."
* ^status = #active
* ^version = "1.0"

* include codes from system SGHIServiceRequestCS

ValueSet:       SGHIProcedureStatus
Id:             procedure-status
Title:          "SGHI Procedure status value set"
Description:    "A value set for the status of a procedure, based on the FHIR ProcedureStatus codes."
* include codes from system http://hl7.org/fhir/event-status

ValueSet:       SGHIProcedureCategory
Id:             procedure-category
Title:          "SGHI Procedure Category value set"
Description:    "A value set for categorizing procedures, using LOINC codes where applicable."
* include #24642003 "Psychiatry procedure or service" from system SGHIIdentifierCodeSystem
* include #409063005 "Counseling" from system SGHIIdentifierCodeSystem 
* include #409073007 "Education" from system SGHIIdentifierCodeSystem
* include #387713003 "Surgical procedure (procedure)" from system SGHIIdentifierCodeSystem 
* include #103693007 "Diagnostic procedure" from system SGHIIdentifierCodeSystem
* include #46947000 "Chiropractic manipulation" from system SGHIIdentifierCodeSystem 
* include #410606002 "Social service procedure (procedure)" from system SGHIIdentifierCodeSystem 

ValueSet:       SGHIProcedureOutcome
Id:             procedure-outcome
Title:          "SGHI Procedure outcome value set"
Description:    "The outcome of the procedure - did it resolve the reasons for the procedure being performed?"
* include #385669000 "Successful" from system SGHIIdentifierCodeSystem
* include #385671000 "Unsuccessful" from system SGHIIdentifierCodeSystem
* include #385670004 "Partially successful" from system SGHIIdentifierCodeSystem

ValueSet:       SGHIProcedureFollowUpCodes
Id:             procedure-follow-up-codes
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


ValueSet: SGHIMedicationCodes
Id: medication-codes
Title: "SGHI Medication Codes"
Description: "ValueSet containing SGHI medication codes"
* ^status = #active
* include codes from system https://ocl-testing-api.savannahghi.org/fhir/CodeSystem/KNC4Drugs 
* include SGHIIdentifierCodeSystem#sghidefaultcode "SGHI Default Code"

ValueSet: SGHIInvestigationCodes
Id: investigation-codes
Title: "SGHI Investigation Codes"
Description: "ValueSet containing SGHI investigation codes"
* ^status = #active
* include codes from system https://ocl-testing-api.savannahghi.org/fhir/CodeSystem/KNC4Investigations 

ValueSet: SGHIMedicationFormCodes
Id: medication-form-codes
Title: "SGHI Medication Form Codes"
Description: "ValueSet containing SGHI medication form codes"
* ^status = #active
* include codes from system https://ocl-testing-api.savannahghi.org/fhir/ValueSet/DoseForm
* include SGHIIdentifierCodeSystem#powder "Powder"
* include SGHIIdentifierCodeSystem#tablets "Tablets"
* include SGHIIdentifierCodeSystem#capsule "Capsule"
* include SGHIIdentifierCodeSystem#solution "Solution"
* include SGHIIdentifierCodeSystem#lozenge "Lozenge"
* include SGHIIdentifierCodeSystem#suspension "Suspension"
* include SGHIIdentifierCodeSystem#syrup "Syrup"

ValueSet: SGHISubstanceCodes
Id: substance-codes
Title: "SGHI Substance Codes"
Description: "ValueSet containing SGHI substance codes"
* ^status = #active
* include codes from system https://ocl-testing-api.savannahghi.org/orgs/SIL/CodeSystem/KNC4Drugs

ValueSet: SGHIPractitionerRoleValueSet
Id: practitioner-role-value-set
Title: "SGHI Practitioner Value Set"
Description: "Custom practioner role value set"
* include #doctor "Doctor"  from system SGHIIdentifierCodeSystem
* include #nurse "Nurse"  from system SGHIIdentifierCodeSystem
* include #pharmacist "Pharmacist"  from system SGHIIdentifierCodeSystem
* include #researcher "Researcher"  from system SGHIIdentifierCodeSystem

ValueSet: SGHIPractitionerSpecialtyValueSet
Id: practitioner-specialty-value-set
Title: "SGHI Practitioner Value Set"
Description: "Custom practioner specialty value set"
* include #408467006 "Adult mental illness"  from system SGHIIdentifierCodeSystem
* include #394577000 "Anesthetics"  from system SGHIIdentifierCodeSystem
* include #394578005 "Audiological medicine"  from system SGHIIdentifierCodeSystem
* include #421661004 "Blood banking and transfusion medicine"  from system SGHIIdentifierCodeSystem
* include #408462000 "Burns care"  from system SGHIIdentifierCodeSystem

ValueSet: SGHIBodySiteValueSet
Id: body-site-value-set
Title: "SGHI Body Site Value Set"
Description: "Custom body site value set"
* include #111002 "Parathyroid gland"  from system SGHIIdentifierCodeSystem

ValueSet: SGHIMethodOfAdministration
Id: method-of-administration
Title: "SGHI Method Of Medication Administration"
Description: "Custom methods of administering medication"
* ^status = #active

* SGHIIdentifierCodeSystem#apply "Apply"
* SGHIIdentifierCodeSystem#inject "Inject"
* SGHIIdentifierCodeSystem#dialysis "Dialysis"
* SGHIIdentifierCodeSystem#insert "Insert"
* SGHIIdentifierCodeSystem#implant "Implant"
* SGHIIdentifierCodeSystem#infuse "Infuse"

ValueSet: SGHIDefaultIdentifierTypes
Id: default-identifier-types
Title: "SGHI Default Identifier Types"
Description: "Default identifier types used in SGHI's systems"
* include SGHIDefaultIdentifierCodeSystem#default-id "Default Resource Identifier"

ValueSet: SGHIRouteOfAdministration
Id: route-of-administration
Title: "Route Of Administration"
Description: "A ValueSet defining the possible routes of drug administration."
* ^status = #active

* include SGHIIdentifierCodeSystem#iv "Intravenous"
* include SGHIIdentifierCodeSystem#im "Intramuscular"
* include SGHIIdentifierCodeSystem#it "Intrathecal"
* include SGHIIdentifierCodeSystem#ro "Oral"

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
* include codes from system http://id.who.int/icd/release/11/beta/ichi

ValueSet: SGHIConditionSeverity
Id: condition-severity
Title: "condition-severity"
Description: "Condition severity"
* ^status = #active
* include SGHIConditionSeverityCodeSystem#severe "Severe"
* include SGHIConditionSeverityCodeSystem#mild "Mild"
* include SGHIConditionSeverityCodeSystem#moderate "Moderate"

ValueSet: SGHISpecialtyVs
Id: speciality
Title: "speciality"
Description: "Speciality"
* ^status = #active
* include codes from system SGHISpecialtyCodeSystem


ValueSet: SGHIEncounterClassVs
Id: encounter-class
Title: "Encounter Class Value Sets"
* ^status = #active
* include codes from system http://terminology.hl7.org/ValueSet/encounter-class
* include SGHIIdentifierCodeSystem#chemo "Chemotherapy"
* include SGHIIdentifierCodeSystem#surg "Surgery"
* include SGHIIdentifierCodeSystem#radio "Radiotherapy"


ValueSet: SGHISpecimenMolecularMarkersVs
Id: molecular-Markers
Title: "Molecular Markers Value Sets"
Description: "Molecular Markers Value Sets"
* ^status = #active
* include SGHIIdentifierCodeSystem#braf "BRAF Mutation"
* include SGHIIdentifierCodeSystem#kras "KRAS Mutation"
* include SGHIIdentifierCodeSystem#nras "NRAS Mutation"
* include SGHIIdentifierCodeSystem#egfr "EGFR Mutation"
* include SGHIIdentifierCodeSystem#alk "ALK Rearrangement"
* include SGHIIdentifierCodeSystem#her2 "HER2 Amplification"
* include SGHIIdentifierCodeSystem#pik3ca "PIK3CA Mutation"
* include SGHIIdentifierCodeSystem#pt53 "TP53 Mutation"
* include SGHIIdentifierCodeSystem#msi "Microsatellite Instability"
* include SGHIIdentifierCodeSystem#pdli "PD-L1 Expression"
* include SGHIIdentifierCodeSystem#other "Other"

ValueSet: SGHIDistanceMetastatisVs
Id: distance-metastatis
Title: "Distance Metastatis Value Sets"
Description: "Distance Metastatis Value Sets"
* ^status = #active
* include SGHIIdentifierCodeSystem#bone "Bone"
* include SGHIIdentifierCodeSystem#liver "Liver"
* include SGHIIdentifierCodeSystem#lung "Lung"
* include SGHIIdentifierCodeSystem#brain  "Brain"
* include SGHIIdentifierCodeSystem#skin "Skin"
* include SGHIIdentifierCodeSystem#dln "Distant Lymph Nodes"

ValueSet: SGHIGradeVs
Id: grade
Title: "Grade Value Sets"
Description: "Grade Value Sets"
* ^status = #active
* include SGHIIdentifierCodeSystem#gradeI "Well Differentiated"
* include SGHIIdentifierCodeSystem#gradeII "Moderately Differentiated"
* include SGHIIdentifierCodeSystem#gradeIII "Poorly Differentiated"
* include SGHIIdentifierCodeSystem#gradeIV "Undifferentiated / Anaplastic"
* include SGHIIdentifierCodeSystem#none "Not Graded"
* include codes from system http://loinc.org

ValueSet: SGHIBehaviourVs
Id: behaviour
Title: "Behaviour Value Sets"
Description: "Behaviour Value Sets"
* ^status = #active
* include SGHIIdentifierCodeSystem#benign "Benign"
* include SGHIIdentifierCodeSystem#malignant "Malignant"
* include SGHIIdentifierCodeSystem#insitu "In Situ"
* include SGHIIdentifierCodeSystem#borderline "Borderline"
* include SGHIIdentifierCodeSystem#uncertain "Uncertain"
* include SGHIIdentifierCodeSystem#other "Other"

ValueSet: SGHIHormoneReceptorStatusVs
Id: hormone-receptor-status
Title: "Hormone Receptor Status"
Description: "Hormone Receptor Status"
* ^status = #active
* include SGHIIdentifierCodeSystem#positive "Positive"
* include SGHIIdentifierCodeSystem#negative "Negative"
* include SGHIIdentifierCodeSystem#equivocal  "Equivocal"
* include SGHIIdentifierCodeSystem#nottested "Not Tested"

ValueSet: SGHITypeOfTestVs
Id: typeoftest
Title: "Type Of Test Value Sets"
Description: "Type Of Test Value Sets"
* ^status = #active
* include SGHIIdentifierCodeSystem#hematology "Hematology" 
* include SGHIIdentifierCodeSystem#cytology "Cytology"
* include SGHIIdentifierCodeSystem#histopathology "Histopathology" 
* include SGHIIdentifierCodeSystem#ich "Immunohistochemistry"
* include SGHIIdentifierCodeSystem#fc "Flow Cytometry"
* include SGHIIdentifierCodeSystem#molecular "Molecular" 
* include SGHIIdentifierCodeSystem#other "Other"

ValueSet: SGHISpecimenTypeVs
Id: specimentype
Title: "Specimen Type Value Sets"
Description: "Specimen Type Value Sets"
* ^status = #active
* include SGHIIdentifierCodeSystem#cnb "Core Needle Biopsy" 
* include SGHIIdentifierCodeSystem#excision "Excision"
* include SGHIIdentifierCodeSystem#fna "Fine Needle Aspiration" 
* include SGHIIdentifierCodeSystem#ib "Incisional Biopsy" 
* include SGHIIdentifierCodeSystem#pb "Punch Biopsy" 
* include SGHIIdentifierCodeSystem#sb "Shave Biopsy" 
* include SGHIIdentifierCodeSystem#eb "Endoscopic Biopsy" 
* include SGHIIdentifierCodeSystem#ras "Resection Autopsy Specimen"

ValueSet: SGHILateralityVs
Id: laterality
Title: "Laterality Value Sets"
Description: "Laterality Value Sets"
* ^status = #active
* include SGHIIdentifierCodeSystem#right "Right"
* include SGHIIdentifierCodeSystem#left "Left"
* include SGHIIdentifierCodeSystem#bilateral "Bilateral"
* include SGHIIdentifierCodeSystem#unknown "Unknown"


ValueSet: SGHICancerStagesVs
Id: cancer-stages
Title: "Cancer Stages Value Sets"
Description: "Cancer Stages Value Sets"
* ^status = #active
* include SGHIIdentifierCodeSystem#stage1 "Stage 1"
* include SGHIIdentifierCodeSystem#stage2 "Stage 2"
* include SGHIIdentifierCodeSystem#stage3 "Stage 3"
* include SGHIIdentifierCodeSystem#stage4 "Stage 4"


ValueSet: SGHIDefaultCodeVs
Id: default-code
Title: "SGHI Default Code Value Sets"
Description: "SGHI Default Code Value Sets"
* ^status = #active
* include SGHIIdentifierCodeSystem#sghidefaultcode "SGHI Default Code"

ValueSet: AllLoincCodes
Id: all-loinc-codes
Title: "All LOINC Codes"
Description: "A ValueSet that includes all codes from the LOINC code system."
* ^status = #active
* include codes from system http://loinc.org




