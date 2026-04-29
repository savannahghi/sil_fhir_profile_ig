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
* include SGHIPersonIdentifierCodeSystem#payer-member-number "Insurance"
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

// TODO:: I am not certainly sure at this moment what altering the ocl system in the above (SGHIMedicationFormCodes) will break. I will review later
ValueSet: SGHIMedicationForms
Id: medication-form
Title: "SGHI Medication Forms"
Description: "ValueSet containing SGHI medication forms"
* ^status = #active
* include SGHIMedicationForm#powder "Powder"
* include SGHIMedicationForm#tablets "Tablets"
* include SGHIMedicationForm#capsule "Capsule"
* include SGHIMedicationForm#solution "Solution"
* include SGHIMedicationForm#lozenge "Lozenge"
* include SGHIMedicationForm#suspension "Suspension"
* include SGHIMedicationForm#syrup "Syrup"

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
* include SGHIRouteOfAdministrationCodeSystem#iv "Intravenous"
* include SGHIRouteOfAdministrationCodeSystem#im "Intramuscular"
* include SGHIRouteOfAdministrationCodeSystem#it "Intrathecal"
* include SGHIRouteOfAdministrationCodeSystem#o "Oral"
* include SGHIRouteOfAdministrationCodeSystem#sc "Subcutaneous"
* include SGHIRouteOfAdministrationCodeSystem#sl "Sublingual"
* include SGHIRouteOfAdministrationCodeSystem#in "Intranasal"
* include SGHIRouteOfAdministrationCodeSystem#oc "Ocular"
* include SGHIRouteOfAdministrationCodeSystem#ot "Otic"
* include SGHIRouteOfAdministrationCodeSystem#vg "Vaginal"
* include SGHIRouteOfAdministrationCodeSystem#rc "Rectal"

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


ValueSet: SGHIDosageUnit
Id: dosage-unit
Title: "SGHI Dosage Units"
Description: "A ValueSet defining the possible units of measurement for medication dosage in SGHI's systems."
* ^status = #active
* include SGHIDosageUnitCodeSystem#mg "Milligrams"
* include SGHIDosageUnitCodeSystem#g "Grams"
* include SGHIDosageUnitCodeSystem#ml "Milliliters"
* include SGHIDosageUnitCodeSystem#dr "Drops"
* include SGHIDosageUnitCodeSystem#puff "Puffs"
* include SGHIDosageUnitCodeSystem#tab "Tablets"

ValueSet: SGHIDosageFrequency
Id: dosage-frequency
Title: "SGHI Dosage Frequency"
Description: "A ValueSet defining the possible frequencies for medication intake in SGHI's systems."
* ^status = #active
* include SGHIDosageFrequencyCodeSystem#OD "Once daily"
* include SGHIDosageFrequencyCodeSystem#TW "Twice daily"
* include SGHIDosageFrequencyCodeSystem#TID "Three times daily"
* include SGHIDosageFrequencyCodeSystem#QID "Four times daily"
* include SGHIDosageFrequencyCodeSystem#PRN "As Needed"
* include SGHIDosageFrequencyCodeSystem#BT "At bedtime"


ValueSet: SGHIEventTiming
Id: timing-of-event
Title: "SGHI Event Timing"
Description: "A ValueSet defining the possible timing options for events in SGHI's systems."
* ^status = #active
* include SGHIEventTimingCodeSystem#MORN "Morning"
* include SGHIEventTimingCodeSystem#MORN.early "Early Morning"
* include SGHIEventTimingCodeSystem#MORN.late "Late Morning"
* include SGHIEventTimingCodeSystem#NOON "Noon" 
* include SGHIEventTimingCodeSystem#AFT "Afternoon"
* include SGHIEventTimingCodeSystem#AFT.early "Early Afternoon"
* include SGHIEventTimingCodeSystem#AFT.late "Late Afternoon"
* include SGHIEventTimingCodeSystem#EVE "Evening"
* include SGHIEventTimingCodeSystem#EVE.early "Early Evening"
* include SGHIEventTimingCodeSystem#EVE.late "Late Evening"
* include SGHIEventTimingCodeSystem#NIGHT "Night"
* include SGHIEventTimingCodeSystem#PHS "After Sleep"
* include SGHIEventTimingCodeSystem#IMD "Immediate"
* include SGHIEventTimingCodeSystem#HS "At naptime"
* include SGHIEventTimingCodeSystem#WAKE "Upon Waking up"
* include SGHIEventTimingCodeSystem#C "Meals"
* include SGHIEventTimingCodeSystem#CM "Breakfast"
* include SGHIEventTimingCodeSystem#CD "Lunch time"
* include SGHIEventTimingCodeSystem#CV "Dinner time"
* include SGHIEventTimingCodeSystem#AC "Before Dinner"
* include SGHIEventTimingCodeSystem#ACM "Before Breakfast"
* include SGHIEventTimingCodeSystem#ACD "Before Lunch"
* include SGHIEventTimingCodeSystem#ACV "Before Dinner"
* include SGHIEventTimingCodeSystem#PC "After Meal"
* include SGHIEventTimingCodeSystem#PCM "After Breakfast"
* include SGHIEventTimingCodeSystem#PCD "After Lunch"
* include SGHIEventTimingCodeSystem#PCV "After Dinner"

ValueSet: SGHIOrderForms
Id: order-forms
Title: "SGHI Order Forms"
Description: "A ValueSet defining the possible order forms in SGHI's systems."
* ^status = #active
* include SGHIOrderFormsCodeSystem#medication-order-form "Medication Order Form"
* include SGHIOrderFormsCodeSystem#review-of-system "Review of Systems"
* include SGHIOrderFormsCodeSystem#vitals-form "Vitals Form"
* include SGHIOrderFormsCodeSystem#patient-history-form "Patient History Form"

ValueSet: SGHIRegistrySearchIdentifiers
Id: registry-search-identifiers
Title: "SGHI Registry Search Identifiers"
Description: "A ValueSet defining the possible identifiers that can be used for searching in SGHI's registries."
* ^status = #active
* include SGHIPersonIdentifierCodeSystem#national-id "National ID"
* include SGHIPersonIdentifierCodeSystem#military-id "Military ID"
* include SGHIPersonIdentifierCodeSystem#alien-id "Alien ID"
* include SGHIPersonIdentifierCodeSystem#refugee-id "Refugee ID"
* include SGHIPersonIdentifierCodeSystem#birth-certificate "Birth Certificate Number"
* include SGHIPersonIdentifierCodeSystem#payer-member-number "Insurance"

// ============================================================
// Special Clinic ValueSets (ANC / PNC / CWC)
// All codes sourced from SGHISpecialClinicCodeSystem
// ============================================================

ValueSet: SGHIMUACNutritionalStatus
Id: muac-nutritional-status
Title: "SGHI MUAC Nutritional Status"
Description: "A ValueSet for Mid-Upper Arm Circumference (MUAC) nutritional status categories used in special-clinic workflows."
* ^status = #active
* include SGHISpecialClinicCodeSystem#muac-green "Green — Normal (≥23 cm)"
* include SGHISpecialClinicCodeSystem#muac-yellow "Yellow — Moderate Acute Malnutrition (20–22.9 cm)"
* include SGHISpecialClinicCodeSystem#muac-red "Red — Severe Acute Malnutrition (<20 cm)"

ValueSet: SGHIBreastExaminationResult
Id: breast-examination-result
Title: "SGHI Breast Examination Result"
Description: "A ValueSet for breast examination results recorded during ANC visits."
* ^status = #active
* include SGHISpecialClinicCodeSystem#breast-normal "Yes — Normal"
* include SGHISpecialClinicCodeSystem#breast-abnormal "Yes — Abnormal"
* include SGHISpecialClinicCodeSystem#not-done "Not Done"

ValueSet: SGHIFGMComplications
Id: fgm-complications
Title: "SGHI FGM-Associated Complications"
Description: "A ValueSet enumerating complications associated with Female Genital Mutilation (FGM)."
* ^status = #active
* include SGHISpecialClinicCodeSystem#fgm-scarring "Scarring"
* include SGHISpecialClinicCodeSystem#fgm-keloid "Keloid formation"
* include SGHISpecialClinicCodeSystem#fgm-dyspareunia "Dyspareunia"
* include SGHISpecialClinicCodeSystem#fgm-uti "Urinary tract infection"

ValueSet: SGHIBloodSugarScreening
Id: blood-sugar-screening
Title: "SGHI Blood Sugar Screening Result"
Description: "A ValueSet for random blood sugar (RBS) screening results used in ANC workflows."
* ^status = #active
* include SGHISpecialClinicCodeSystem#rbs-normal "RBS < 11.1 mmol/L — No Diabetes"
* include SGHISpecialClinicCodeSystem#rbs-diabetes "RBS ≥ 11.1 mmol/L — Has Diabetes"
* include SGHISpecialClinicCodeSystem#rbs-not-done "No RBS Done"

ValueSet: SGHISyphilisTestType
Id: syphilis-test-type
Title: "SGHI Syphilis Test Type"
Description: "A ValueSet for the type of syphilis test performed during ANC screening."
* ^status = #active
* include SGHISpecialClinicCodeSystem#rpr "RPR (Rapid Plasma Reagin)"
* include SGHISpecialClinicCodeSystem#vdrl "VDRL (Venereal Disease Research Laboratory)"
* include SGHISpecialClinicCodeSystem#dual-testing "Dual Testing (RPR + VDRL)"

ValueSet: SGHITBScreeningResult
Id: tb-screening-result
Title: "SGHI TB Screening Result"
Description: "A ValueSet for tuberculosis (TB) screening results in special-clinic workflows."
* ^status = #active
* include SGHISpecialClinicCodeSystem#presumed-tb "Presumed TB"
* include SGHISpecialClinicCodeSystem#no-tb-signs "No Signs of TB"
* include SGHISpecialClinicCodeSystem#on-tb-treatment "Already on TB Treatment"

ValueSet: SGHIHIVTestingType
Id: hiv-testing-type
Title: "SGHI HIV Testing Type"
Description: "A ValueSet indicating whether the HIV test at a visit is an initial test or a retest."
* ^status = #active
* include SGHISpecialClinicCodeSystem#hiv-initial-test "Initial Test (I)"
* include SGHISpecialClinicCodeSystem#hiv-retest "Retest (R)"

ValueSet: SGHIFinalHIVResult
Id: final-hiv-result
Title: "SGHI Final HIV Result"
Description: "A ValueSet for the final HIV result at an ANC visit, capturing previously known status."
* ^status = #active
* include SGHISpecialClinicCodeSystem#hiv-previously-positive "Previously Positive (PrevP)"
* include SGHISpecialClinicCodeSystem#hiv-previously-negative "Previously Negative (PrevN)"
* include SGHISpecialClinicCodeSystem#hiv-known-positive "Known Positive — Status before 1st ANC (KP)"

ValueSet: SGHIARVHAARTStatus
Id: arv-haart-status
Title: "SGHI ARV / HAART Status"
Description: "A ValueSet indicating a patient's current antiretroviral (ARV) or HAART therapy status."
* ^status = #active
* include SGHISpecialClinicCodeSystem#arv-yes "Yes — On ARV/HAART"
* include SGHISpecialClinicCodeSystem#arv-no "No — Not on ARV/HAART"
* include SGHISpecialClinicCodeSystem#arv-revisit "Revisit (already on treatment)"

ValueSet: SGHIPartnerHIVTestingStatus
Id: partner-hiv-testing-status
Title: "SGHI Partner HIV Testing Status"
Description: "A ValueSet capturing the HIV testing status of the patient's partner."
* ^status = #active
* include SGHISpecialClinicCodeSystem#partner-tested "Yes — Partner Tested"
* include SGHISpecialClinicCodeSystem#partner-not-tested "No — Partner Not Tested"
* include SGHISpecialClinicCodeSystem#partner-not-present "Not Applicable (Partner Not Present)"
* include SGHISpecialClinicCodeSystem#partner-known-positive "Known Positive (KP)"

ValueSet: SGHIFamilyPlanningMethods
Id: family-planning-methods
Title: "SGHI Family Planning Methods"
Description: "A ValueSet enumerating family planning methods offered or selected in special-clinic workflows."
* ^status = #active
* include SGHISpecialClinicCodeSystem#fp-iud "IUD (Intrauterine Device)"
* include SGHISpecialClinicCodeSystem#fp-implants "Implants (Subdermal)"
* include SGHISpecialClinicCodeSystem#fp-btl "BTL (Bilateral Tubal Ligation)"
* include SGHISpecialClinicCodeSystem#fp-counselled-no-method "Counselled — No Method Selected"
* include SGHISpecialClinicCodeSystem#fp-cocp "Combined oral contraceptive pills"
* include SGHISpecialClinicCodeSystem#fp-pop "Progestin only contraceptive pills"
* include SGHISpecialClinicCodeSystem#fp-injectables "Injectables"
* include SGHISpecialClinicCodeSystem#fp-male-condom "Male condom"
* include SGHISpecialClinicCodeSystem#fp-female-sterilization "Female sterilization"
* include SGHISpecialClinicCodeSystem#fp-vasectomy "Vasectomy"
* include SGHISpecialClinicCodeSystem#fp-fam "Fertility awareness-based methods"
* include SGHISpecialClinicCodeSystem#fp-ec "Emergency contraception"

ValueSet: SGHIANCComorbidities
Id: anc-comorbidities
Title: "SGHI ANC Comorbidities"
Description: "A ValueSet of comorbid conditions recorded during Antenatal Care (ANC) visits."
* ^status = #active
* include SGHISpecialClinicCodeSystem#anc-hypertension "Hypertension"
* include SGHISpecialClinicCodeSystem#anc-diabetes "Diabetes Mellitus"
* include SGHISpecialClinicCodeSystem#anc-epilepsy "Epilepsy"
* include SGHISpecialClinicCodeSystem#anc-malaria "Malaria in Pregnancy"
* include SGHISpecialClinicCodeSystem#anc-sti-rti "STIs / RTIs"
* include SGHISpecialClinicCodeSystem#anc-other "Other (Specify)"

ValueSet: SGHIIPTDose
Id: ipt-dose
Title: "SGHI IPT Dose"
Description: "A ValueSet for Intermittent Preventive Treatment (IPT) doses administered during ANC."
* ^status = #active
* include SGHISpecialClinicCodeSystem#ipt-dose-1 "IPT Dose 1 (SP)"
* include SGHISpecialClinicCodeSystem#ipt-dose-2 "IPT Dose 2 (SP)"
* include SGHISpecialClinicCodeSystem#ipt-dose-3 "IPT Dose 3 (SP)"

ValueSet: SGHITetanusToxoidDose
Id: tetanus-toxoid-dose
Title: "SGHI Tetanus Toxoid Dose"
Description: "A ValueSet for tetanus toxoid (TT) doses administered during ANC."
* ^status = #active
* include SGHISpecialClinicCodeSystem#tt-dose-1 "TT Dose 1"
* include SGHISpecialClinicCodeSystem#tt-dose-2 "TT Dose 2"
* include SGHISpecialClinicCodeSystem#tt-dose-3 "TT Dose 3"
* include SGHISpecialClinicCodeSystem#tt-dose-4 "TT Dose 4"
* include SGHISpecialClinicCodeSystem#tt-dose-5 "TT Dose 5"
* include SGHISpecialClinicCodeSystem#tt-none "None / Not Applicable"

ValueSet: SGHIANCSupplementation
Id: anc-supplementation
Title: "SGHI ANC Supplementation"
Description: "A ValueSet for nutritional supplements prescribed or dispensed during Antenatal Care."
* ^status = #active
* include SGHISpecialClinicCodeSystem#supp-ifa "Combined Iron and Folic Acid (IFA)"
* include SGHISpecialClinicCodeSystem#supp-iron-only "Iron Supplement Only"
* include SGHISpecialClinicCodeSystem#supp-folate-only "Folate Supplement Only"
* include SGHISpecialClinicCodeSystem#supp-iron-folate-sep "Iron + Folate (Separately)"
* include SGHISpecialClinicCodeSystem#supp-calcium "Calcium Supplement"

ValueSet: SGHIReferralSourceDestination
Id: referral-source-destination
Title: "SGHI Referral Source / Destination"
Description: "A ValueSet for the source or destination of a patient referral in special-clinic workflows."
* ^status = #active
* include SGHISpecialClinicCodeSystem#referral-community-unit "Community Unit"
* include SGHISpecialClinicCodeSystem#referral-another-facility "Another Health Facility"

ValueSet: SGHIPlaceOfDelivery
Id: place-of-delivery
Title: "SGHI Place of Delivery"
Description: "A ValueSet indicating where the baby was delivered."
* ^status = #active
* include SGHISpecialClinicCodeSystem#delivery-facility "Facility"
* include SGHISpecialClinicCodeSystem#delivery-home "Home"
* include SGHISpecialClinicCodeSystem#delivery-bba "BBA (Born Before Arrival)"

ValueSet: SGHIModeOfDelivery
Id: mode-of-delivery
Title: "SGHI Mode of Delivery"
Description: "A ValueSet for the mode of delivery recorded in PNC and ANC workflows."
* ^status = #active
* include SGHISpecialClinicCodeSystem#delivery-svd "SVD (Spontaneous Vaginal Delivery)"
* include SGHISpecialClinicCodeSystem#delivery-cs "CS (Caesarean Section)"
* include SGHISpecialClinicCodeSystem#delivery-breech "Breech"
* include SGHISpecialClinicCodeSystem#delivery-avd "AVD (Assisted Vaginal Delivery)"

ValueSet: SGHIPNCVisitTiming
Id: pnc-visit-timing
Title: "SGHI PNC Visit Timing"
Description: "A ValueSet for the timing of Postnatal Care (PNC) visits relative to delivery."
* ^status = #active
* include SGHISpecialClinicCodeSystem#pnc-0-48h "0–48 hours postpartum"
* include SGHISpecialClinicCodeSystem#pnc-3d-6w "3 days to 6 weeks postpartum"
* include SGHISpecialClinicCodeSystem#pnc-gt-6w "More than 6 weeks postpartum"

ValueSet: SGHIPallorSeverity
Id: pallor-severity
Title: "SGHI Pallor Severity"
Description: "A ValueSet for pallor severity assessed during PNC or ANC examinations."
* ^status = #active
* include SGHISpecialClinicCodeSystem#pallor-mild "Mild"
* include SGHISpecialClinicCodeSystem#pallor-moderate "Moderate"
* include SGHISpecialClinicCodeSystem#pallor-severe "Severe"
* include SGHISpecialClinicCodeSystem#pallor-absent "Absent"

ValueSet: SGHIBreastStatePNC
Id: breast-state-pnc
Title: "SGHI Breast State (PNC)"
Description: "A ValueSet for the state of the breasts assessed during Postnatal Care visits."
* ^status = #active
* include SGHISpecialClinicCodeSystem#breast-state-normal "Normal"
* include SGHISpecialClinicCodeSystem#breast-cracked-nipple "Cracked nipple"
* include SGHISpecialClinicCodeSystem#breast-engorged "Engorged"
* include SGHISpecialClinicCodeSystem#breast-mastitis "Mastitis"

ValueSet: SGHIUterusState
Id: uterus-state
Title: "SGHI Uterus State"
Description: "A ValueSet for the state of the uterus assessed during Postnatal Care visits."
* ^status = #active
* include SGHISpecialClinicCodeSystem#uterus-contracted "Contracted"
* include SGHISpecialClinicCodeSystem#uterus-not-contracted "Not contracted"
* include SGHISpecialClinicCodeSystem#uterus-other "Other (specify)"

ValueSet: SGHIPPHStatus
Id: pph-status
Title: "SGHI PPH Status"
Description: "A ValueSet indicating the presence or absence of postpartum haemorrhage (PPH)."
* ^status = #active
* include SGHISpecialClinicCodeSystem#pph-present "Present"
* include SGHISpecialClinicCodeSystem#pph-absent "Absent"

ValueSet: SGHICSectionSiteState
Id: cs-section-site-state
Title: "SGHI C-Section Site State"
Description: "A ValueSet for the state of the caesarean section wound site during PNC follow-up."
* ^status = #active
* include SGHISpecialClinicCodeSystem#cs-site-bleeding "Bleeding"
* include SGHISpecialClinicCodeSystem#cs-site-normal "Normal"
* include SGHISpecialClinicCodeSystem#cs-site-infected "Infected"
* include SGHISpecialClinicCodeSystem#cs-site-gaping "Gaping"

ValueSet: SGHILochiaState
Id: lochia-state
Title: "SGHI Lochia State"
Description: "A ValueSet for the state of lochia (postpartum vaginal discharge) assessed during PNC."
* ^status = #active
* include SGHISpecialClinicCodeSystem#lochia-normal "Normal"
* include SGHISpecialClinicCodeSystem#lochia-foul-smelling "Foul smelling"
* include SGHISpecialClinicCodeSystem#lochia-excessive "Excessive"

ValueSet: SGHIEpisiotomyState
Id: episiotomy-state
Title: "SGHI Episiotomy State"
Description: "A ValueSet for the healing state of an episiotomy wound assessed during PNC."
* ^status = #active
* include SGHISpecialClinicCodeSystem#episiotomy-repaired "Repaired"
* include SGHISpecialClinicCodeSystem#episiotomy-gaping "Gaping"
* include SGHISpecialClinicCodeSystem#episiotomy-infected "Infected"
* include SGHISpecialClinicCodeSystem#episiotomy-healed "Healed"

ValueSet: SGHICervicalCancerScreeningResult
Id: cervical-cancer-screening-result
Title: "SGHI Cervical Cancer Screening Result"
Description: "A ValueSet for cervical cancer screening (VIA/VILI) results recorded in special-clinic workflows."
* ^status = #active
* include SGHISpecialClinicCodeSystem#cx-normal "Normal (1)"
* include SGHISpecialClinicCodeSystem#cx-suspected "Suspected (2)"
* include SGHISpecialClinicCodeSystem#cx-confirmed "Confirmed (3)"
* include SGHISpecialClinicCodeSystem#cx-not-done "Not Done (4)"

ValueSet: SGHIWeightForAgeCategory
Id: weight-for-age-category
Title: "SGHI Weight-for-Age Category"
Description: "A ValueSet for weight-for-age nutritional status categories used in Child Welfare Clinic (CWC) workflows."
* ^status = #active
* include SGHISpecialClinicCodeSystem#wfa-normal "Normal (1)"
* include SGHISpecialClinicCodeSystem#wfa-underweight "Underweight (2)"
* include SGHISpecialClinicCodeSystem#wfa-severe-underweight "Severe Underweight (3)"
* include SGHISpecialClinicCodeSystem#wfa-overweight "Overweight (4)"
* include SGHISpecialClinicCodeSystem#wfa-obese "Obese (5)"

ValueSet: SGHIHeightForAgeCategory
Id: height-for-age-category
Title: "SGHI Height/Length-for-Age Category"
Description: "A ValueSet for height/length-for-age growth categories used in Child Welfare Clinic (CWC) workflows."
* ^status = #active
* include SGHISpecialClinicCodeSystem#hfa-normal "Normal (1)"
* include SGHISpecialClinicCodeSystem#hfa-stunted "Stunted (2)"
* include SGHISpecialClinicCodeSystem#hfa-severely-stunted "Severely Stunted (3)"

ValueSet: SGHIVitaminASupplementationStatus
Id: vitamin-a-supplementation-status
Title: "SGHI Vitamin A Supplementation Status"
Description: "A ValueSet for Vitamin A supplementation status in children attending the Child Welfare Clinic."
* ^status = #active
* include SGHISpecialClinicCodeSystem#vita-6-11m "Supplemented — 6 to 11 months (1)"
* include SGHISpecialClinicCodeSystem#vita-12-59m "Supplemented — 12 to 59 months (2)"
* include SGHISpecialClinicCodeSystem#vita-not-supplemented "Not supplemented (3)"

ValueSet: SGHIDevelopmentalMilestones
Id: developmental-milestones
Title: "SGHI Developmental Milestones"
Description: "A ValueSet for developmental milestones assessed during Child Welfare Clinic (CWC) visits."
* ^status = #active
* include SGHISpecialClinicCodeSystem#milestone-head-control "Head control (1)"
* include SGHISpecialClinicCodeSystem#milestone-sitting "Sitting (2)"
* include SGHISpecialClinicCodeSystem#milestone-talking "Talking (3)"

ValueSet: SGHICWCDangerSigns
Id: cwc-danger-signs
Title: "SGHI CWC Danger Signs"
Description: "A ValueSet for danger signs assessed in children during Child Welfare Clinic visits."
* ^status = #active
* include SGHISpecialClinicCodeSystem#cwc-danger-no-breastfeed "Unable to breastfeed (1)"
* include SGHISpecialClinicCodeSystem#cwc-danger-no-drink "Unable to drink (2)"
* include SGHISpecialClinicCodeSystem#cwc-danger-vomits-all "Vomits everything (3)"
* include SGHISpecialClinicCodeSystem#cwc-danger-bloody-diarrhoea "Bloody diarrhoea (4)"
* include SGHISpecialClinicCodeSystem#cwc-danger-oedema "Oedema (5)"
* include SGHISpecialClinicCodeSystem#cwc-danger-convulsions "Convulsions (6)"

ValueSet: SGHICWCFollowUpService
Id: cwc-followup-service
Title: "SGHI CWC Follow-Up Service Type"
Description: "A ValueSet for follow-up service types offered at the Child Welfare Clinic."
* ^status = #active
* include SGHISpecialClinicCodeSystem#cwc-followup-nutrition "Nutrition services (1)"
* include SGHISpecialClinicCodeSystem#cwc-followup-rehabilitation "Rehabilitation services (2)"

ValueSet: SGHICervicalCancerVisitType
Id: cervical-cancer-visit-type
Title: "SGHI Cervical Cancer Visit Type"
Description: "A ValueSet for the type of cervical cancer clinic visit."
* ^status = #active
* include SGHISpecialClinicCodeSystem#cx-visit-initial-screening "Initial screening"
* include SGHISpecialClinicCodeSystem#cx-visit-routine-screening "Routine screening"
* include SGHISpecialClinicCodeSystem#cx-visit-treatment "Treatment visit"
* include SGHISpecialClinicCodeSystem#cx-visit-post-treatment "Post-treatment visit"
* include SGHISpecialClinicCodeSystem#cx-visit-post-treatment-complications "Post-treatment complications"

ValueSet: SGHIVIATestResult
Id: via-test-result
Title: "SGHI VIA / VILI / HPV Test Result"
Description: "A ValueSet for VIA, VILI, and HPV test results in cervical cancer screening."
* ^status = #active
* include SGHISpecialClinicCodeSystem#via-positive "Positive"
* include SGHISpecialClinicCodeSystem#via-negative "Negative"
* include SGHISpecialClinicCodeSystem#via-suspicious-cancer "Suspicious for cancer"

ValueSet: SGHIPapSmearResult
Id: pap-smear-result
Title: "SGHI Pap Smear Result"
Description: "A ValueSet for Pap smear results in cervical cancer screening."
* ^status = #active
* include SGHISpecialClinicCodeSystem#pap-normal "Normal"
* include SGHISpecialClinicCodeSystem#pap-ascus "ASCUS/ASC-H (Atypical squamous cells of undetermined significance, high grade lesion not excluded)"
* include SGHISpecialClinicCodeSystem#pap-lsil "LSIL (Low grade squamous intraepithelial lesion)"
* include SGHISpecialClinicCodeSystem#pap-hsil "HSIL/CIS (High grade squamous intraepithelial lesion)"
* include SGHISpecialClinicCodeSystem#pap-agus "AGUS (Atypical glandular cells of undetermined significance)"
* include SGHISpecialClinicCodeSystem#pap-invasive-cancer "Invasive cancer"
* include SGHISpecialClinicCodeSystem#pap-other "Other, please specify"

ValueSet: SGHIColposcopyResult
Id: colposcopy-result
Title: "SGHI Colposcopy / Cervicography Result"
Description: "A ValueSet for colposcopy and cervicography findings."
* ^status = #active
* include SGHISpecialClinicCodeSystem#colpo-satisfactory "Satisfactory"
* include SGHISpecialClinicCodeSystem#colpo-unsatisfactory "Unsatisfactory"
* include SGHISpecialClinicCodeSystem#colpo-normal "Normal"
* include SGHISpecialClinicCodeSystem#colpo-acetowhite "Acetowhite"
* include SGHISpecialClinicCodeSystem#colpo-leukoplakia "Leukoplakia"
* include SGHISpecialClinicCodeSystem#colpo-punctuation "Punctuation"
* include SGHISpecialClinicCodeSystem#colpo-abnormal-vessels "Abnormal vessels"
* include SGHISpecialClinicCodeSystem#colpo-mosaicism "Mosaicism"

ValueSet: SGHICervicalCancerActivityToday
Id: cervical-cancer-activity-today
Title: "SGHI Cervical Cancer Activity Performed Today"
Description: "A ValueSet for the cervical cancer-related activity performed during today's visit."
* ^status = #active
* include SGHISpecialClinicCodeSystem#cx-activity-screening-cryo-done "Screening today, with cryotherapy done today"
* include SGHISpecialClinicCodeSystem#cx-activity-screening-cryo-postponed "Screening done today, with cryotherapy postponed"
* include SGHISpecialClinicCodeSystem#cx-activity-treated-postponed-case "Treated a previously screened and postponed case"

ValueSet: SGHIChronicCareFollowUpCondition
Id: chronic-care-followup-condition
Title: "SGHI Chronic Care Follow-Up Condition"
Description: "A ValueSet for conditions managed during a chronic care follow-up visit."
* ^status = #active
* include SGHISpecialClinicCodeSystem#chronic-dm "Diabetes mellitus (DM)"
* include SGHISpecialClinicCodeSystem#chronic-htn "Hypertension (HTN)"
* include SGHISpecialClinicCodeSystem#chronic-dm-htn "Both DM and HTN"
* include SGHISpecialClinicCodeSystem#chronic-asthma "Asthma"
* include SGHISpecialClinicCodeSystem#chronic-arthritis "Arthritis"
* include SGHISpecialClinicCodeSystem#chronic-other "Other"

ValueSet: SGHILabelledScale0To10
Id: labelled-scale-0-to-10
Title: "SGHI 0–10 Labelled Scale"
Description: "A ValueSet for a generic 0–10 labelled scale used for symptom severity or functional status."
* ^status = #active
* include SGHISpecialClinicCodeSystem#scale-0-none "0 = None / Best possible"
* include SGHISpecialClinicCodeSystem#scale-1-3-mild "1–3 = Mild / Manageable"
* include SGHISpecialClinicCodeSystem#scale-4-6-moderate "4–6 = Moderate (affects daily activities)"
* include SGHISpecialClinicCodeSystem#scale-7-9-severe "7–9 = Severe"
* include SGHISpecialClinicCodeSystem#scale-10-worst "10 = Worst / Completely limited"

ValueSet: SGHIPainScale0To10
Id: pain-scale-0-to-10
Title: "SGHI Pain Scale 0–10 Labelled"
Description: "A ValueSet for the 0–10 labelled pain scale."
* ^status = #active
* include SGHISpecialClinicCodeSystem#pain-0-none "0 = No pain"
* include SGHISpecialClinicCodeSystem#pain-1-3-mild "1–3 = Mild pain (annoying but manageable)"
* include SGHISpecialClinicCodeSystem#pain-4-6-moderate "4–6 = Moderate pain (affects daily activities)"
* include SGHISpecialClinicCodeSystem#pain-10-worst "10 = Worst pain"

ValueSet: SGHIEyeComplications
Id: eye-complications
Title: "SGHI Eye Complications"
Description: "A ValueSet for eye-related complications in chronic disease follow-up."
* ^status = #active
* include SGHISpecialClinicCodeSystem#eye-swelling "Eye swelling"
* include SGHISpecialClinicCodeSystem#eye-impaired-vision "Impaired vision"
* include SGHISpecialClinicCodeSystem#eye-double-vision "Double vision"

ValueSet: SGHIRenalComplications
Id: renal-complications
Title: "SGHI Renal Complications"
Description: "A ValueSet for renal complications in chronic disease follow-up."
* ^status = #active
* include SGHISpecialClinicCodeSystem#renal-urine-volume "Volume of urine"
* include SGHISpecialClinicCodeSystem#renal-facial-oedema "Facial oedema"
* include SGHISpecialClinicCodeSystem#renal-pedal-oedema "Pedal oedema"

ValueSet: SGHICardiacComplications
Id: cardiac-complications
Title: "SGHI Cardiac Complications"
Description: "A ValueSet for cardiac complications in chronic disease follow-up."
* ^status = #active
* include SGHISpecialClinicCodeSystem#cardiac-chest-pain "Chest pain"
* include SGHISpecialClinicCodeSystem#cardiac-difficulty-breathing "Difficulty in breathing"
* include SGHISpecialClinicCodeSystem#cardiac-orthopnea "Orthopnea"
* include SGHISpecialClinicCodeSystem#cardiac-pnd "Paroxysmal nocturnal dyspnea"

ValueSet: SGHIMusculoskeletalComplications
Id: musculoskeletal-complications
Title: "SGHI Musculoskeletal Complications"
Description: "A ValueSet for musculoskeletal complications in chronic disease follow-up."
* ^status = #active
* include SGHISpecialClinicCodeSystem#msk-lower-limb-swelling "Lower limb swelling"
* include SGHISpecialClinicCodeSystem#msk-numbness "Numbness"
* include SGHISpecialClinicCodeSystem#msk-burning-sensation "Burning sensation in hands and feet"

ValueSet: SGHICNSComplications
Id: cns-complications
Title: "SGHI CNS Complications"
Description: "A ValueSet for central nervous system complications in chronic disease follow-up."
* ^status = #active
* include SGHISpecialClinicCodeSystem#cns-headaches "Headaches"
* include SGHISpecialClinicCodeSystem#cns-tia "Transient ischaemic attacks"

ValueSet: SGHIPhysicalHealthSymptoms
Id: physical-health-symptoms
Title: "SGHI Physical Health Symptoms"
Description: "A ValueSet for physical health symptoms reported during a clinical encounter."
* ^status = #active
* include SGHISpecialClinicCodeSystem#phys-sleepy "Sleepy"
* include SGHISpecialClinicCodeSystem#phys-breathing-difficulties "Breathing difficulties"
* include SGHISpecialClinicCodeSystem#phys-low-energy "Low energy"
* include SGHISpecialClinicCodeSystem#phys-no-appetite "No appetite"
* include SGHISpecialClinicCodeSystem#phys-pain "Pain"

ValueSet: SGHIEmotionalHealthSymptoms
Id: emotional-health-symptoms
Title: "SGHI Emotional Health Symptoms"
Description: "A ValueSet for emotional health symptoms reported during a clinical encounter."
* ^status = #active
* include SGHISpecialClinicCodeSystem#emot-sad "Sad"
* include SGHISpecialClinicCodeSystem#emot-stressed "Stressed"
* include SGHISpecialClinicCodeSystem#emot-anxiety "Anxiety"
* include SGHISpecialClinicCodeSystem#emot-worry "Worry"
* include SGHISpecialClinicCodeSystem#emot-mood-swings "Mood swings"

ValueSet: SGHIFistulaType
Id: fistula-type
Title: "SGHI Fistula Type"
Description: "A ValueSet for fistula types used in gynaecological and obstetric workflows."
* ^status = #active
* include SGHISpecialClinicCodeSystem#vvf "VVF (Vesicovaginal fistula)"
* include SGHISpecialClinicCodeSystem#rvf "RVF (Rectovaginal fistula)"
* include SGHISpecialClinicCodeSystem#vvr "VVR (Vesicovaginal Reflux)"

ValueSet: SGHIVisitType
Id: visit-type
Title: "SGHI Visit Type"
Description: "A ValueSet defining the possible visit types in SGHI's systems."
* ^status = #active
* include SGHIVisitTypeCodeSystem#AMB "Ambulatory"
* include SGHIVisitTypeCodeSystem#IMP "Inpatient"
* include SGHIVisitTypeCodeSystem#EMER "Emergency"
* include SGHIVisitTypeCodeSystem#FLD "Field"
* include SGHIVisitTypeCodeSystem#VR "Virtual"
* include SGHIVisitTypeCodeSystem#HH "Home Health"
* include SGHIVisitTypeCodeSystem#ACUTE "Acute"
* include SGHIVisitTypeCodeSystem#NONAC "Inpatient Non-Acute"
* include SGHIVisitTypeCodeSystem#OBSENC "Observation Encounter"
* include SGHIVisitTypeCodeSystem#PRENC "Pre-Admission"
* include SGHIVisitTypeCodeSystem#SS "Short Stay"
* include SGHIVisitTypeCodeSystem#CHEMO "Chemotherapy"
* include SGHIVisitTypeCodeSystem#RADIO "Radiotherapy"
* include SGHIVisitTypeCodeSystem#SURG "Surgery"
* include SGHIVisitTypeCodeSystem#imaging_only "Imaging visit"
* include SGHIVisitTypeCodeSystem#vaccination "Vaccination visit"
* include SGHIVisitTypeCodeSystem#lab_only "Laboratory visit"
* include SGHIVisitTypeCodeSystem#pharmacy_only "Pharmacy visit"
* include SGHIVisitTypeCodeSystem#community_outreach "Community outreach visit"
* include SGHIVisitTypeCodeSystem#phone_consultation "Phone consultation"
* include SGHIVisitTypeCodeSystem#inpatient_review "Inpatient review"
* include SGHIVisitTypeCodeSystem#teleconsultation "Teleconsultation"
* include SGHIVisitTypeCodeSystem#trauma "Trauma visit"
* include SGHIVisitTypeCodeSystem#home_visit "Home visit"
* include SGHIVisitTypeCodeSystem#day_case "Day case / same-day admission"
* include SGHIVisitTypeCodeSystem#procedure_visit "Outpatient procedure visit"
* include SGHIVisitTypeCodeSystem#urgent_care "Urgent care visit"
* include SGHIVisitTypeCodeSystem#chronic_care "Chronic care visit"
* include SGHIVisitTypeCodeSystem#preventive "Preventive / wellness visit"
* include SGHIVisitTypeCodeSystem#inpatient_admission "Inpatient admission"
* include SGHIVisitTypeCodeSystem#outpatient_consultation "Outpatient consultation"
* include SGHIVisitTypeCodeSystem#emergency_visit "Emergency visit"
* include SGHIVisitTypeCodeSystem#follow_up "Follow-up visit"

ValueSet: SGHIGeneralResult
Id: general-result
Title: "SGHI General Result"
Description: "A ValueSet for a general positive / negative / not-applicable result used across clinical workflows."
* ^status = #active
* include SGHISpecialClinicCodeSystem#result-positive "Positive"
* include SGHISpecialClinicCodeSystem#result-negative "Negative"
* include SGHISpecialClinicCodeSystem#result-not-applicable "Not Applicable"

ValueSet: SGHIHIVRapidTestResult
Id: hiv-rapid-test-result
Title: "SGHI HIV Rapid Test Result"
Description: "A ValueSet for HIV rapid test results: Positive (P), Negative (N), Invalid (I), and Not Applicable (NA)."
* ^status = #active
* include SGHISpecialClinicCodeSystem#hiv-rapid-positive "Positive (P)"
* include SGHISpecialClinicCodeSystem#hiv-rapid-negative "Negative (N)"
* include SGHISpecialClinicCodeSystem#hiv-rapid-invalid "Invalid (I)"
* include SGHISpecialClinicCodeSystem#hiv-rapid-not-applicable "Not Applicable (NA)"


ValueSet: SGHICervicalCancerScreeningMethod
Id: cervical-cancer-screening-method
Title: "SGHI Cervical Cancer Screening Method"
Description: "A ValueSet for the method of cervical cancer screening performed during a visit."
* ^status = #active
* include SGHISpecialClinicCodeSystem#VIA "VIA (Visual Inspection with Acetic Acid)"
* include SGHISpecialClinicCodeSystem#VILI "VILI (Visual Inspection with Lugol's Iodine)"
* include SGHISpecialClinicCodeSystem#HPV "HPV DNA Testing"
* include SGHISpecialClinicCodeSystem#PAP-SMEAR "Pap Smear"
* include SGHISpecialClinicCodeSystem#ND "Not Done / Not Applicable"

ValueSet: SGHIUterotonicGiven
Id: uterotonic-given
Title: "SGHI Uterotonic Given"
Description: "A ValueSet for uterotonic drugs administered during delivery."
* ^status = #active
* include SGHISpecialClinicCodeSystem#uterotonic-oxytocin "Oxytocin"
* include SGHISpecialClinicCodeSystem#uterotonic-carbetocin "Carbetocin"
* include SGHISpecialClinicCodeSystem#uterotonic-none "None"

ValueSet: SGHIVaginalExaminationResult
Id: vaginal-examination-result
Title: "SGHI Vaginal Examination Result"
Description: "A ValueSet for vaginal examination results recorded during labor and delivery."
* ^status = #active
* include SGHISpecialClinicCodeSystem#vaginal-exam-normal "Normal"
* include SGHISpecialClinicCodeSystem#vaginal-exam-esiotomy "Episiotomy"
* include SGHISpecialClinicCodeSystem#vaginal-exam-tear "Vaginal tear"
* include SGHISpecialClinicCodeSystem#vaginal-exam-fgm "FGM"
* include SGHISpecialClinicCodeSystem#vaginal-exam-warts "Vaginal warts"

ValueSet: SGHIMothersBabyStatus
Id: mothers-baby-status
Title: "SGHI Mother's Baby Status After Delivery"
Description: "A ValueSet for the status of the baby after delivery."
* ^status = #active
* include SGHISpecialClinicCodeSystem#mother-baby-alive "Alive"
* include SGHISpecialClinicCodeSystem#mother-baby-dead "Dead"

ValueSet: SGHIDeliveryComplications
Id: delivery-complications
Title: "SGHI Delivery Complications"
Description: "A ValueSet for complications that occurred during delivery."
* ^status = #active
* include SGHISpecialClinicCodeSystem#delivery-comp-aph "APH (Ante Partum Haemorrhage)"
* include SGHISpecialClinicCodeSystem#delivery-comp-pph "PPH (Post Partum Haemorrhage)"
* include SGHISpecialClinicCodeSystem#delivery-comp-eclampsia "Eclampsia"
* include SGHISpecialClinicCodeSystem#delivery-comp-ruptured-uterus "Ruptured Uterus"
* include SGHISpecialClinicCodeSystem#delivery-comp-obstructed-labour "Obstructed Labour"
* include SGHISpecialClinicCodeSystem#delivery-comp-sepsis "Sepsis"
* include SGHISpecialClinicCodeSystem#delivery-comp-none "None"

ValueSet: SGHIBirthOutcome
Id: birth-outcome
Title: "SGHI Birth Outcome"
Description: "A ValueSet for the outcome of the birth."
* ^status = #active
* include SGHISpecialClinicCodeSystem#birth-outcome-lb "Live Birth"
* include SGHISpecialClinicCodeSystem#birth-outcome-fsb "Fresh Still Birth"
* include SGHISpecialClinicCodeSystem#birth-outcome-msb "Macerated Still Birth"