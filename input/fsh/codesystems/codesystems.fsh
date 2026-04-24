CodeSystem: SGHIOrganisationIdentifierCodeSystem
Id: organisation-identifier-codesystem
Description: "A single code system enumerating the identifier types used identify organisations across SIL's environment."
* ^status = #active
* #mfl-code "Master Facility List Code"
  * ^definition = "Official identifier assigned by the Kenya Master Facility List (MFL) for healthcare facilities and organizations within Kenya's health system"
* #sha-slade-code "SHA Slade Code"
  * ^definition = "Unique identifier assigned by the Social Health Authority (SHA) in collaboration with Slade 360 platform for healthcare provider identification and claims processing"
* #fid-code "Facility ID Code"
  * ^definition = "Generic facility identification code used for internal healthcare facility tracking and administrative purposes"
* #fr-code "Facility Registry Code"
  * ^definition = "Identifier assigned by the national or regional Facility Registry system for official healthcare facility registration and cataloging"
* #kmpdc-registration-number "KMPDC Registration Number"
  * ^definition = "Registration number issued by the Kenya Medical Practitioners and Dentists Council (KMPDC) for licensed medical practitioners and dentists"
* #slade-code "Slade360 Code"
  * ^definition = "Unique identifier assigned by the Slade 360 healthcare information platform for healthcare organizations and providers within their network"
* #default-id "Default System Identifier"
  * ^definition = "A unique UUID identifier assigned by the system by default"

CodeSystem: SGHIConditionSeverityCodeSystem
Description: "A single code system enumerating severity levels for clinical conditions within the SGHI ecosystem."
* ^status = #active
* #severe "Severe"
  * ^definition = "Indicates a life-threatening or highly serious clinical condition requiring urgent or intensive medical intervention."
* #mild "Mild"
  * ^definition = "Indicates a low-severity clinical condition with minimal symptoms and routine clinical management."
* #moderate "Moderate"
  * ^definition = "Indicates a clinical condition of intermediate severity requiring medical attention but not immediately life-threatening."

CodeSystem: SGHIDefaultIdentifierCodeSystem
Id: default-identifier-codesystem
Description: "A single code system enumerating severity levels for clinical conditions within the SGHI ecosystem."
* ^status = #active
* #default-id "Default Resource Identifier"
  * ^definition = "A unique UUID identifier assigned by the system by default."

CodeSystem: SGHIPersonIdentifierCodeSystem
Id: person-identifier-codesystem
Description: "A code system different identifiers used to identify an animal, patient, practitioner or any other live actior in the healthcare context"
* ^status = #active
* #national-id "National ID" 
  * ^definition = "A unique national identifier assigned by the National Registration Bureau (NRB) under the Ministry of Interior and National Administration."
* #passport-number "Passport Number"
  * ^definition = "A unique identifier assigned by the Directorate of Immigration Services under the Ministry of Interior and National Administration."
* #military-id "Military ID" 
  * ^definition = "A unique identifier assigned by the Kenya Defence Forces (KDF) for military personnel."
* #alien-id "Alien ID"
  * ^definition = "A unique identifier assigned by the Directorate of Immigration Services to foreign nationals residing in Kenya."
* #patient-number "Patient Number"
  * ^definition = "A unique identifier assigned by Slade360 Advantage for internal patient tracking."
* #payer-member-number "Payer Member Number"
  * ^definition = "A unique identifier assigned by insurance providers, including private insurers and Slade360."
* #smart-member-number "Smart Member Number"
  * ^definition = "A unique health identifier assigned by Slade360."
* #drchrono-id "Dr Chrono Chart ID"
  * ^definition = "A unique identifier assigned by the Dr. Chrono healthcare platform for patient records."
* #erp-customer-id "ERP Customer ID"
  * ^definition = "A unique patient identifier assigned by Slade360 ERP system."
* #ccc-number "Comprehensive Care Clinic Number"
  * ^definition = "A unique identifier assigned by HIV/AIDS treatment programs."
* #refugee-id "Refugee ID"
  * ^definition = "A unique identifier assigned by the Refugee Affairs Secretariat (RAS) under the Ministry of Interior, in collaboration with UNHCR."
* #birth-certificate "Birth Certificate Number"
  * ^definition = "A unique identifier assigned by the Civil Registration Department under the Ministry of Interior and National Administration."
* #mandate-number "Mandate Number"
  * ^definition = "A regulatory or legal identifier assigned by relevant government agencies."
* #client-registry-number "Client Registry Number"
  * ^definition = "A unique identifier used for internal patient tracking within a Client Registry system."
* #slade-health-id "Slade Health ID"
  * ^definition = "A unique health identifier assigned by Slade360 Health CRM for patient records."

CodeSystem: SGHIDosageUnitCodeSystem
Id: dosage-unit
Description: "A code system enumerating the different units of measurement used to specify medication dosages across SGHI's environment."
* ^status = #active
* #mg "Milligrams" "Milligrams (mg) is a unit of mass commonly used to specify the dosage of medications, particularly for solid forms like tablets and capsules."
* #ml "Milliliters" "Milliliters (mL) is a unit of volume commonly used to specify the dosage of liquid medications, such as syrups and solutions."
* #g "Grams" "Grams (g) is a unit of mass used to specify the dosage of medications"
* #dr "Drops" "Drops (dr) is a unit of volume used to specify the dosage of liquid medications, particularly for eye drops and ear drops."
* #tab "Tablets" "Tablets (tab) is a unit of count used to specify the dosage of medications in solid form, such as tablets and capsules."
* #puff "Puffs" "Puffs (puff) is a unit of count used to specify the dosage of inhaled medications, such as those delivered via metered-dose inhalers (MDIs)."

CodeSystem: SGHIDosageFrequencyCodeSystem
Id: dosage-frequency
Description: "A code system enumerating the different units of measurement used to specify medication intake frequency in a day."
* ^status = #active
* #OD "Once daily" "The medication is to be taken once a day"
* #TW "Twice daily" "The medication is to be taken twice a day"
* #TID "Three times daily" "The medication is to be taken thrice a day"
* #QID "Four times daily" "The medication is to be taken four times a day"
* #PRN "As Needed" "The medication is to be taken as needed"
* #BT "At bedtime" "The medication is to be taken at bedtime"

CodeSystem: SGHIRouteOfAdministrationCodeSystem
Id: route-of-administration
Description: "A code system enumerating the different route options used to specify medication administration routes across SGHI's environment."
* ^status = #active
* #o "Oral" "Administration of medication through the mouth."
* #iv "Intravenous" "Administration of medication directly into a vein."
* #im "Intramuscular" "Administration of medication into a muscle."
* #it "Intrathecal" "Intrathecal"
* #sc "Subcutaneous" "Administration of medication into the tissue layer between the skin and the muscle"
* #sl "Sublingual" "Administration of medication under the tongue for absorption through the mucous membranes."
* #in "Intranasal" "Administration of medication through the nasal passages for absorption through the mucous membranes."
* #oc "Ocular" "Administration of medication to the eye, typically in the form of eye drops or ointments."
* #ot "Otic" "Administration of medication to the ear, typically in the form of ear drops."
* #vg "Vaginal" "Administration of medication into the vagina, typically in the form of suppositories, creams, or gels."
* #rc "Rectal" "Administration of medication into the rectum, typically in the form of suppositories or enemas."

CodeSystem: SGHIEventTimingCodeSystem
Id: timing-of-event
Description: "A code system enumerating the different options used to specify event timing across SGHI's environment."
* ^status = #active
* #MORN "Morning" "Event occurs during the morning. The exact time is unspecified and established by institution convention or patient interpretation."
* #MORN.early "Early morning" "Event occurs during the early morning. The exact time is unspecified and established by institution convention or patient interpretation."
* #MORN.late "Late morning" "Event occurs during the late morning. The exact time is unspecified and established by institution convention or patient interpretation."
* #NOON "Noon" "Event occurs around 12:00pm. The exact time is unspecified and established by institution convention or patient interpretation."
* #AFT "Afternoon" "Event occurs during the afternoon. The exact time is unspecified and established by institution convention or patient interpretation."
* #AFT.early "Early afternoon" "Event occurs during the early afternoon. The exact time is unspecified and established by institution convention or patient interpretation."
* #AFT.late "Late afternoon" "Event occurs during the late afternoon. The exact time is unspecified and established by institution convention or patient interpretation."
* #EVE "Evening" "Event occurs during the evening. The exact time is unspecified and established by institution convention or patient interpretation."
* #EVE.early "Early evening" "Event occurs during the early evening. The exact time is unspecified and established by institution convention or patient interpretation."
* #EVE.late "Late evening" "Event occurs during the late evening. The exact time is unspecified and established by institution convention or patient interpretation."
* #NIGHT "Night" "Event occurs during the night. The exact time is unspecified and established by institution convention or patient interpretation."
* #PHS "After sleep" "Event occurs [offset] after subject goes to sleep. The exact time is unspecified and established by institution convention or patient interpretation."
* #IMD "Immediately" "Event occurs a single time (with no repetitions) as soon as possible after the scheduled or actual start of the overall event."
* #HS  "At nap time/bedtime" "Prior to beginning a regular period of extended sleep (this would exclude naps). Note that this might occur at different times of day depending on a person's regular sleep schedule."
* #WAKE "Upon waking" "Upon waking up from a regular period of sleep, in order to start regular activities (this would exclude waking up from a nap or temporarily waking up during a period of sleep)"
* #C   "Meal" "The event is to occur before, during, or after a meal."
* #CM "Breakfast time" "The event is to occur before the morning meal."
* #CD "Lunch time" "The event is to occur at lunch time."
* #CV "Dinner time" "The event is to occur at dinner time."
* #AC "Before Dinner" "The event is to occur before a meal."
* #ACM "Before Breakfast" "The event is to occur before breakfast."
* #ACD "Before Lunch" "The event is to occur before lunch."
* #ACV "Before Dinner" "The event is to occur before dinner."
* #PC "After Meal" "The event is to occur after meal."
* #PCM "After Breakfast" "The event is to occur after breakfast."
* #PCD "After Lunch" "The event is to occur after lunch."
* #PCV "After Dinner" "The event is to occur after dinner."

CodeSystem: SGHIIdentifierCodeSystem
Id: identifier-codesystem
Title: "SGHI Identifier Code System"
Description: "A single code system enumerating the many local identifier types used across SGHI's environment."
* ^status = #active
* ^content = #supplement
* #vtmid "VTM ID" "dm+d identifier for a Virtual Therapeutic Moiety (VTM) concept."
* #vtmidprev "Previous VTM ID" "Deprecated VTM identifier retained for traceability."
* #isid "IS ID" "dm+d identifier for an Ingredient Substance (IS) concept."
* #isidprev "Previous IS ID" "Deprecated IS identifier retained for traceability."
* #vpid  "VP ID" "dm+d identifier for a Virtual Product (VP) concept."
* #vpidprev "Previous VP ID" "Deprecated VP identifier retained for traceability."
* #vppid "VPP ID" "dm+d identifier for a Virtual Product Pack (VPP)."
* #apid "AP ID" "dm+d identifier for an Actual Medicinal Product (AMP)."
* #appid "APP ID" "dm+d identifier for an Actual Product Pack (APP)."
* #dbid "DB ID" "dm+d identifier referencing the primary key stored in our database."
* #slade-concept-code "Slade Concept Code" "A unique drug identifier assigned by slade 360."

* #stat "STAT" "A unique identifier assigned for highest priority cases (e.g., emergency)"
* #asap "ASAP" "As soon as possible, next highest priority after STAT"
* #routine "Routine" "Routine service, do at usual work hours"
* #preop "PREOP" "Used to indicate that a service is to be performed prior to a scheduled surgery"
* #elective "Elective" "Low priority. Beneficial to the patient but not essential for survival"
* #inpatient "In Patient" "A patient encounter where a patient is admitted by a hospital or equivalent facility, assigned to a location where patients generally stay at least overnight and provided with room, board, and continuous nursing service."
* #outpatient "Ambulatory (Out Patient)" "A comprehensive term for health care provided in a healthcare facility on a nonresident basis."
* #emergency "Emergency" "A patient encounter that takes place at a dedicated healthcare service delivery location where the patient receives immediate evaluation and treatment."
* #closed "Closed" "Closed"
* #housekeeping "Housekeeping" "Housekeeping"
* #occupied "Occupied" "Occupied"
* #unoccupied "Unoccupied" "Unoccupied"
* #contaminated "Contaminated" "Contaminated"
* #isolated "Isolated" "Isolated"
* #instance "Instance" "The Location resource represents a specific instance of a location (e.g., Operating Theatre 1A)."
* #kind "Kind" "The Location represents a class of locations (e.g., Any Operating Theatre)."
* #work "Work" "An office contact point. First choice for business-related contacts during business hours."
* #mobile "Mobile" "A telecommunication device that moves and stays with its owner."
* #phone "Phone" "The value is a telephone number used for voice calls."
* #email "Email" "The value is an email address."
* #building "Building" "Any Building or structure. This may contain rooms, corridors, wings, etc."
* #wing "Wing" "A Wing within a Building, often contains levels, rooms, and corridors."
* #ward "Ward" "A section of a medical facility that may contain rooms and other types of location."
* #room "Room" "A space that is allocated as a room."
* #bed "Bed" "A space that is allocated for sleeping or laying on."
* #vehicle "Vehicle" "A means of transportation, e.g., mobile clinics."
* #house "House" "A residential dwelling where a person/patient may reside."
* #area "Area" "A defined physical boundary of something, such as a flood risk zone or region."
* #virtual "Virtual" "A location that is virtual in nature, such as a conference call or virtual meeting space."


CodeSystem: SGHIVisitTypeCodeSystem
Id: visit-type-codesystem
Title: "SGHI Visit Type Code System"
Description: "A code system enumerating the different visit types used across SGHI's environment."
* ^status = #active
* ^content = #complete
* #AMB "Ambulatory" "A healthcare encounter where the patient is not admitted to a hospital or equivalent facility and receives care on a non-resident basis."
* #IMP "Inpatient" "A healthcare encounter where the patient is admitted to a hospital or equivalent facility, assigned to a location where patients generally stay at least overnight and provided with room, board, and continuous nursing service."
* #EMER "Emergency" "A healthcare encounter that takes place at a dedicated healthcare service delivery location where the patient receives immediate evaluation and treatment."
* #FLD "Field" "A healthcare encounter that takes place outside of a traditional healthcare facility, such as in a mobile clinic or during a home visit."
* #VR "Virtual" "A healthcare encounter that takes place in a virtual environment, such as through telemedicine or a virtual consultation."
* #HH "Home Health" "A healthcare encounter that takes place in a patient's home, typically involving healthcare services provided by visiting nurses or other healthcare professionals."
* #ACUTE "Acute" "A healthcare encounter that is characterized by a sudden onset and severe symptoms."
* #NONAC "Inpatient Non-Acute" "A healthcare encounter where the patient is admitted for care that does not require the intensity of an acute setting, such as rehabilitation or long-term care."
* #OBSENC "Observation Encounter" "A healthcare encounter where the patient is under observation to determine the need for further treatment or admission."
* #PRENC "Pre-Admission" "A healthcare encounter that occurs prior to a scheduled admission for tests or evaluations."
* #SS "Short Stay" "A healthcare encounter intended to be of short duration, typically less than 24 hours, but requiring more than basic outpatient care."
* #CHEMO "Chemotherapy" "A visit specifically for the administration of chemotherapy treatments."
* #RADIO "Radiotherapy" "A visit specifically for the administration of radiotherapy treatments."
* #SURG "Surgery" "A visit for a surgical procedure, whether minor or major."
* #imaging_only "Imaging visit" "A visit exclusively for diagnostic imaging services such as X-rays, MRIs, or CT scans."
* #vaccination "Vaccination visit" "A visit primarily for the administration of vaccines."
* #lab_only "Laboratory visit" "A visit exclusively for the collection of specimens or performing laboratory tests."
* #pharmacy_only "Pharmacy visit" "A visit to a pharmacy for the purpose of picking up or consulting on medications."
* #community_outreach "Community outreach visit" "A healthcare encounter that occurs in a community setting as part of an outreach program."
* #phone_consultation "Phone consultation" "A healthcare encounter conducted over the telephone."
* #inpatient_review "Inpatient review" "A visit to a patient currently admitted in an inpatient setting for the purpose of progress review."
* #teleconsultation "Teleconsultation" "A healthcare encounter conducted via video conferencing or other telecommunication technologies."
* #trauma "Trauma visit" "A visit for the evaluation and treatment of physical injuries caused by external force."
* #home_visit "Home visit" "A visit by a healthcare provider to a patient's place of residence."
* #day_case "Day case / same-day admission" "A visit where the patient is admitted and discharged on the same day for a procedure or treatment."
* #procedure_visit "Outpatient procedure visit" "A visit for a specific outpatient procedure that does not require overnight stay."
* #urgent_care "Urgent care visit" "A visit for a medical condition that requires prompt attention but is not a life-threatening emergency."
* #chronic_care "Chronic care visit" "A visit for the ongoing management of a chronic disease or condition."
* #preventive "Preventive / wellness visit" "A visit focused on disease prevention and health maintenance, such as annual check-ups."
* #inpatient_admission "Inpatient admission" "A visit for the purpose of admitting a patient to an inpatient facility."
* #outpatient_consultation "Outpatient consultation" "A visit for a consultation with a specialist or general practitioner in an outpatient setting."
* #emergency_visit "Emergency visit" "A visit for immediate medical attention due to an acute illness or injury."
* #follow_up "Follow-up visit" "A visit to review the progress of a patient after a previous encounter or treatment."



// Service Request Categories
* #26436-6 "Laboratory studies (set)" "Laboratory studies (set)"
* #18748-4 "Diagnostic imaging study" "Diagnostic imaging study"
* #21938-6 "Surgical approach" "Surgical approach"

// Procedure categories (Custom)
* #24642003 "Psychiatry procedure or service" "Psychiatry procedure or service"
* #409063005 "Counseling" "Counseling"
* #409073007 "Education" "Education"
* #387713003 "Surgical procedure (procedure)" "Surgical procedure (procedure)"
* #103693007 "Diagnostic procedure"	"Diagnostic procedure"
* #46947000 "Chiropractic manipulation"	"Chiropractic manipulation"
* #410606002 "Social service procedure (procedure)"	"Social service procedure (procedure)"

// Procedure Outcome codes (Custom)
* #385669000 "Successful" "Successful"
* #385671000 "Unsuccessful" "Unsuccessful"
* #385670004 "Partially successful" "Partially successful"

// Procedure follow up codes (Custom)
* #18949003 "Change of dressing" "The process of replacing or altering a wound dressing."
* #30549001 "Removal of suture" "The process of removing sutures (stitches) from a wound."
* #241031001 "Removal of drain" "The process of removing a drainage device from a body cavity or wound."
* #35963001 "Removal of staples" "The process of removing surgical staples from a wound."
* #225164002 "Removal of ligature" "The process of removing a ligature (tie) used to bind tissue or vessels."
* #447346005 "Cardiopulmonary exercise test (procedure)" "A test to assess the performance of the heart and lungs during physical exertion."
* #229506003 "Scar tissue massage" "Therapeutic massage applied to scar tissue to improve mobility and reduce discomfort."
* #274441001 "Suction drainage" "The process of removing fluid or debris from a body cavity using suction."
* #394725008 "Diabetes medication review (procedure)" "A review of medications prescribed for diabetes management."
* #359825008 "Cytopathology, review of bronchioalveolar lavage specimen" "The examination of cells obtained from a bronchioalveolar lavage specimen for diagnostic purposes."

// Practitioner Roles
* #doctor "Doctor" "A qualified/registered medical practitioner."
* #nurse "Nurse" "A practitioner with nursing experience that may be qualified/registered."
* #pharmacist "Pharmacist" "A qualified/registered/licensed pharmacist."
* #researcher "Researcher" "A practitioner that may perform research."

// Specific specialty of the Practitioner 
* #408467006 "Adult mental illness" "Specialty focused on the diagnosis and treatment of mental illnesses in adults."
* #394577000 "Anesthetics" "Specialty focused on administering anesthesia and managing pain during surgical procedures."
* #394578005 "Audiological medicine" "Specialty focused on the diagnosis and treatment of hearing and balance disorders."
* #421661004 "Blood banking and transfusion medicine" "Specialty focused on the collection, storage, and transfusion of blood and blood products."
* #408462000 "Burns care" "Specialty focused on the treatment and management of burn injuries."

// BodySite
* #111002 "Parathyroid gland" "Parathyroid gland"

// Method of application
* #apply "Apply" "Apply"
* #inject "Inject" "Inject"
* #dialysis "Dialysis" "Dialysis"
* #insert "Insert" "Insert"
* #implant "Implant" "Implant"
* #infuse "Infuse" "Infuse"

// Encounter class
* #chemo "Chemotherapy"
* #surg "Surgery"
* #radio "Radiotherapy"


// Molecular Markers
* #braf "BRAF Mutation"
* #kras "KRAS Mutation"
* #nras "NRAS Mutation"
* #egfr "EGFR Mutation"
* #alk "ALK Rearrangement"
* #her2 "HER2 Amplification"
* #pik3ca "PIK3CA Mutation"
* #pt53 "TP53 Mutation"
* #msi "Microsatellite Instability"
* #pdli "PD-L1 Expression"
* #other "Other"

// Distance Metastatis 
* #bone "Bone"
* #liver "Liver"
* #lung "Lung"
* #brain "Brain"
* #skin "Skin"
* #dln "Distant Lymph Nodes"

// Grade 
* #gradeI "Well Differentiated"
* #gradeII "Moderately Differentiated"
* #gradeIII "Poorly Differentiated"
* #gradeIV "Undifferentiated/ Anaplastic"
* #none "Not Graded"

// Behaviour 
* #benign "Benign"
* #malignant "Malignant"
* #insitu "In Situ"
* #borderline "Borderline"
* #uncertain "Uncertain"

// Hormone Receptor Status
* #positive "Positive"
* #negative "Negative"
* #equivocal "Equivocal"
* #nottested "Not Tested"

// Specimen Type
* #cnb "Core Needle Biopsy" 
* #excision "Excision"
* #fna "Fine Needle Aspiration" 
* #ib "Incisional Biopsy" 
* #pb "Punch Biopsy" 
* #sb "Shave Biopsy" 
* #eb "Endoscopic Biopsy" 
* #ras "Resection Autopsy Specimen"
// Type of Test
* #hematology "Hematology" 
* #cytology "Cytology"
* #histopathology "Histopathology" 
* #ich "Immunohistochemistry"
* #fc "Flow Cytometry"
* #molecular "Molecular" 

// Laterality
* #right "Right"
* #left "Left"
* #bilateral "Bilateral"
* #unknown "Unknown"

// Cancer Stages
* #stage1 "Stage 1"
* #stage2 "Stage 2"
* #stage3 "Stage 3"
* #stage4 "Stage 4"

// Default Code!!!
* #sghidefaultcode "SGHI Default Code"

CodeSystem: SGHIServiceRequestCS
Id: service-request-cs
Title: "SGHI Service Request CodeSystem"
Description: "A custom CodeSystem defining different elements of service requests."
* ^status = #active
* ^version = "1.0"
* ^content = #complete
* #laboratory-procedure "Laboratory procedure"
* #imaging "Imaging"
* #counselling "Counselling"
* #education "Education"
* #surgical-procedure "Surgical procedure"
* #referral "Referral"

CodeSystem: SGHILOINCCodeSystem
Id: loinc-codesystem
Title: "SGHI LOINC Code System"
Description: "A a subset of LOINC codes used across SGHI's environment."
* ^status = #active
* ^content = #fragment
* #39152-4 "Mammogram" "LOINC Code For Mammogram"
* #100884-6 "Biopsy" "LOINC Code For Biospy"
* #35954-7 "MRI" "LOINC Code For MRI"
* #24629-8 "Chest Ultrasound" "LOINC Code for Chest Ultrasound"
* #32422-8 "Breast Examination" "LOINC Code for Breast Examination"
* #718-7 "Whole Blood" "LOINC Code for Whole Blood"
* #2857-1 "Prostate Cancer" "LOINC Code For Prostate Cancer"
* #86662-4 "PapSmear" "LOINC Code For Pap Smear"
* #11506-3 "Provider Unspecified Progress Note" "LOINC Code For Unspecified Progress Note"
* #81216-4 "Progress Note Code" "LOINC Code For Progress Note"
* #51847-2 "Assessment Plan Code" "LOINC Code for Assessment Plan"
* #10164-2 "History Of Presenting Illness" "LOINC Code For History Of Present Illness"
* #29762-2  "Social History" "LOINC Code For Social History"
* #10157-6  "Family History" "LOINC Code For Family History"
* #29545-1  "Examination" "LOINC Code For Examination"
* #18776-5  "Plan Of Care" "LOINC Code For Plan Of Care"

CodeSystem: SGHISpecialtyCodeSystem
Id: specialtycodesystem
Title: "SGHI Specialty Code System"
Description: "A Specialty Code System to be used in  SGHI's environment."
* ^status = #active
* ^content = #complete
* #general-practitioner "General Practitioner" "A Specialties for primary healthcare and general medical services"
* #pediatrician "Pediatrician" "Specialized for child healthcare, vaccination programs, and neonatal care."
* #obstetrician "Obstetrician" "Specializes in maternal health, pregnancy care, and childbirth services."
* #surgeon "Surgeon" "Specializes in general surgical procedures for trauma, emergencies, and routine operations."
* #anaesthesiologist "Anesthesiologist" "Necessary for surgical support and pain management."
* #radiologist "Radiologist" "Specializes in diagnostic imaging such as X-rays and ultrasounds."
* #dentist "Dentist" "Specialist in dental health."

CodeSystem: LegacyIdentifierTypes
Id: legacy-identifier-types
Title: "Legacy Identifier Types (Deprecated)"
Description: "Obsolete identifier-type codes encountered in R4 data."
* ^status = #retired
* ^content = #complete
* #HEALTH_ID "Health ID"
* #NATIONAL_ID "National ID"

CodeSystem: RetiredCIELCodes
Id: retired-ciel-codes
Title: "Retired CIEL Codes"
Description: "A collection of CIEL codes formerly in use for clinical observations."
* ^status = #retired
* ^content = #fragment
* #5089 "Weight (kg)"
* #5086 "Diastolic blood pressure"
* #5085 "Systolic blood pressure"
* #5087 "Pulse"
* #1342 "Body mass index"
* #5090 "Height (cm)"
* #1343 "Mid-upper arm circumference"
* #5088 "Temperature (C)"
* #5092 "Arterial blood oxygen saturation (pulse oximeter)"
* #5242 "Respiratory rate"
* #163591 "Mammogram"
* #162825 "Breast examination (text)"
* #164805 "VIA screening for women aged between 30-49 years"
* #161288 "Ultrasound of chest"
* #885 "Papanicolaou smear"
* #159859 "Polymerase chain reaction, human papilloma virus, qualitative"
* #168651 "Magnetic resonance imaging of breast"
* #162927 "Excisional biopsy of breast"
* #167166 "Immune stain study"
* #160980 "Prostate examination (text)"
* #161939 "Whole blood"
* #160406 "Bilateral"
* #147661 "Benign Neoplasm of Skin of Breast"
* #161290 "Ultrasound of right breast"
* #154451 "abnormal Papanicolaou smear of vagina"
* #166674 "High Risk"
* #1064   "Not At Risk"
* #166675 "Low Risk"

CodeSystem: RetiredFHIRR4Codes
Id: retired-fhrr4-codes
Title: "Retired FHIR R4 Codes"
Description: "A collection of FHIR R 4 codes formerly in used in R4"
* ^status = #retired
* ^content = #complete
* #161360 "Referral"
* #159623 "Specialist"
* #1283   "Laboratory orders"

CodeSystem: SGHIMedicationForm
Id: medication-form
Title: "SGHI Medication Form"
Description: "A custom CodeSystem defining different forms in which medications come in"
* #powder "Powder"
* #tablets "Tablets"
* #capsule "Capsule"
* #solution "Solution"
* #lozenge "Lozenge"
* #suspension "Suspension"
* #syrup "Syrup"

CodeSystem: SGHIOrderFormsCodeSystem
Id: order-forms
Description: "A code system enumerating the different options used to specify order forms across SGHI's environment."
* ^status = #active
* #medication-order-form "Medication Order Form" "Medication order form."
* #review-of-system "Review of Systems" "Review of systems form."
* #vitals-form "Vitals Form" "Used to capture vitals information."
* #patient-history-form "Patient History Form" "Used to capture patient history information."

// ============================================================
// Special Clinic Code System
// Covers all local/custom codes used in ANC, PNC, CWC and
// related special-clinic workflows that do not have a suitable
// LOINC, SNOMED-CT or other standard code.
// ============================================================
CodeSystem: SGHISpecialClinicCodeSystem
Id: special-clinic-codesystem
Title: "SGHI Special Clinic Code System"
Description: "A code system enumerating local codes used across ANC, PNC, CWC and other special-clinic workflows within SGHI's environment. Codes are used wherever a suitable LOINC, SNOMED-CT or HL7 code does not exist."
* ^status = #active
* ^content = #complete
* ^version = "1.0"

// --- Shared / Reusable ---
* #not-applicable "Not Applicable" "Used when a concept does not apply in the current clinical context."

// --- MUAC Nutritional Status ---
* #muac-green "Green — Normal (≥23 cm)" "MUAC measurement indicating normal nutritional status (≥23 cm)."
* #muac-yellow "Yellow — Moderate Acute Malnutrition (20–22.9 cm)" "MUAC measurement indicating moderate acute malnutrition (20–22.9 cm)."
* #muac-red "Red — Severe Acute Malnutrition (<20 cm)" "MUAC measurement indicating severe acute malnutrition (<20 cm)."

// --- Breast Examination Result ---
* #breast-normal "Yes — Normal" "Breast examination result: normal findings."
* #breast-abnormal "Yes — Abnormal" "Breast examination result: abnormal findings."
* #not-done "Not Done" "The procedure or test was not performed."

// --- FGM-Associated Complications ---
* #fgm-scarring "Scarring" "FGM complication: scarring."
* #fgm-keloid "Keloid formation" "FGM complication: keloid formation."
* #fgm-dyspareunia "Dyspareunia" "FGM complication: dyspareunia (painful intercourse)."
* #fgm-uti "Urinary tract infection" "FGM complication: urinary tract infection."

// --- Blood Sugar Screening ---
* #rbs-normal "RBS < 11.1 mmol/L — No Diabetes" "Random blood sugar below 11.1 mmol/L; no diabetes indicated."
* #rbs-diabetes "RBS ≥ 11.1 mmol/L — Has Diabetes" "Random blood sugar at or above 11.1 mmol/L; diabetes indicated."
* #rbs-not-done "No RBS Done" "Random blood sugar test was not performed."

// --- Syphilis Test Type ---
* #rpr "RPR (Rapid Plasma Reagin)" "Syphilis test: Rapid Plasma Reagin."
* #vdrl "VDRL (Venereal Disease Research Laboratory)" "Syphilis test: Venereal Disease Research Laboratory."
* #dual-testing "Dual Testing (RPR + VDRL)" "Syphilis test: combined RPR and VDRL testing."

// --- TB Screening Result ---
* #presumed-tb "Presumed TB" "Clinically or radiologically suspected TB, not yet confirmed."
* #no-tb-signs "No Signs of TB" "No clinical signs of tuberculosis detected."
* #on-tb-treatment "Already on TB Treatment" "Patient is already receiving TB treatment."

// --- HIV Status ---
* #hiv-known-positive "Known Positive — Status before 1st ANC (KP)" "HIV-positive status known prior to the first ANC visit."

// --- HIV Testing Type at Visit ---
* #hiv-initial-test "Initial Test (I)" "First HIV test performed at this visit."
* #hiv-retest "Retest (R)" "HIV retest performed at this visit."

// --- Final HIV Result at Visit ---
* #hiv-previously-positive "Previously Positive (PrevP)" "Patient was previously known to be HIV-positive."
* #hiv-previously-negative "Previously Negative (PrevN)" "Patient was previously known to be HIV-negative."

// --- ARV / HAART Status ---
* #arv-yes "Yes — On ARV/HAART" "Patient is currently on antiretroviral or HAART therapy."
* #arv-no "No — Not on ARV/HAART" "Patient is not on antiretroviral or HAART therapy."
* #arv-revisit "Revisit (already on treatment)" "Patient is revisiting and is already on ARV/HAART treatment."

// --- Partner HIV Testing Status ---
* #partner-tested "Yes — Partner Tested" "The patient's partner has been tested for HIV."
* #partner-not-tested "No — Partner Not Tested" "The patient's partner has not been tested for HIV."
* #partner-not-present "Not Applicable (Partner Not Present)" "Partner was not present; HIV testing status not applicable."
* #partner-known-positive "Known Positive (KP)" "Partner is known to be HIV-positive."

// --- Family Planning Methods ---
* #fp-iud "IUD (Intrauterine Device)" "Family planning method: intrauterine device."
* #fp-implants "Implants (Subdermal)" "Family planning method: subdermal implants."
* #fp-btl "BTL (Bilateral Tubal Ligation)" "Family planning method: bilateral tubal ligation."
* #fp-counselled-no-method "Counselled — No Method Selected" "Patient was counselled on family planning but did not select a method."
* #fp-cocp "Combined oral contraceptive pills" "Family planning method: combined oral contraceptive pills."
* #fp-pop "Progestin only contraceptive pills" "Family planning method: progestin-only contraceptive pills."
* #fp-injectables "Injectables" "Family planning method: injectable contraceptives."
* #fp-male-condom "Male condom" "Family planning method: male condom."
* #fp-female-sterilization "Female sterilization" "Family planning method: female sterilization."
* #fp-vasectomy "Vasectomy" "Family planning method: vasectomy."
* #fp-fam "Fertility awareness-based methods" "Family planning method: fertility awareness-based methods."
* #fp-ec "Emergency contraception" "Family planning method: emergency contraception."

// --- ANC Comorbidities ---
* #anc-hypertension "Hypertension" "ANC comorbidity: hypertension."
* #anc-diabetes "Diabetes Mellitus" "ANC comorbidity: diabetes mellitus."
* #anc-epilepsy "Epilepsy" "ANC comorbidity: epilepsy."
* #anc-malaria "Malaria in Pregnancy" "ANC comorbidity: malaria in pregnancy."
* #anc-sti-rti "STIs / RTIs" "ANC comorbidity: sexually or reproductively transmitted infections."
* #anc-other "Other (Specify)" "ANC comorbidity: other, to be specified."

// --- IPT Dose ---
* #ipt-dose-1 "IPT Dose 1 (SP)" "Intermittent Preventive Treatment dose 1 (Sulfadoxine-Pyrimethamine)."
* #ipt-dose-2 "IPT Dose 2 (SP)" "Intermittent Preventive Treatment dose 2 (Sulfadoxine-Pyrimethamine)."
* #ipt-dose-3 "IPT Dose 3 (SP)" "Intermittent Preventive Treatment dose 3 (Sulfadoxine-Pyrimethamine)."

// --- Tetanus Toxoid Dose ---
* #tt-dose-1 "TT Dose 1" "Tetanus toxoid dose 1."
* #tt-dose-2 "TT Dose 2" "Tetanus toxoid dose 2."
* #tt-dose-3 "TT Dose 3" "Tetanus toxoid dose 3."
* #tt-dose-4 "TT Dose 4" "Tetanus toxoid dose 4."
* #tt-dose-5 "TT Dose 5" "Tetanus toxoid dose 5."
* #tt-none "None / Not Applicable" "No tetanus toxoid dose administered; not applicable."

// --- ANC Supplementation ---
* #supp-ifa "Combined Iron and Folic Acid (IFA)" "Supplementation: combined iron and folic acid."
* #supp-iron-only "Iron Supplement Only" "Supplementation: iron only."
* #supp-folate-only "Folate Supplement Only" "Supplementation: folate only."
* #supp-iron-folate-sep "Iron + Folate (Separately)" "Supplementation: iron and folate given as separate supplements."
* #supp-calcium "Calcium Supplement" "Supplementation: calcium."

// --- Referral Source / Destination ---
* #referral-community-unit "Community Unit" "Referral source or destination: community health unit."
* #referral-another-facility "Another Health Facility" "Referral source or destination: another health facility."

// --- Place of Delivery ---
* #delivery-facility "Facility" "Baby delivered in a health facility."
* #delivery-home "Home" "Baby delivered at home."
* #delivery-bba "BBA (Born Before Arrival)" "Baby born before arrival at a health facility."

// --- Mode of Delivery ---
* #delivery-svd "SVD (Spontaneous Vaginal Delivery)" "Spontaneous vaginal delivery."
* #delivery-cs "CS (Caesarean Section)" "Caesarean section delivery."
* #delivery-breech "Breech" "Breech delivery."
* #delivery-avd "AVD (Assisted Vaginal Delivery)" "Assisted vaginal delivery."

// --- PNC Visit Timing ---
* #pnc-0-48h "0–48 hours postpartum" "PNC visit occurring within 48 hours of delivery."
* #pnc-3d-6w "3 days to 6 weeks postpartum" "PNC visit occurring between 3 days and 6 weeks after delivery."
* #pnc-gt-6w "More than 6 weeks postpartum" "PNC visit occurring more than 6 weeks after delivery."

// --- Pallor Severity ---
* #pallor-mild "Mild" "Mild pallor."
* #pallor-moderate "Moderate" "Moderate pallor."
* #pallor-severe "Severe" "Severe pallor."
* #pallor-absent "Absent" "No pallor detected."

// --- Breast State (PNC) ---
* #breast-state-normal "Normal" "Breast state: normal."
* #breast-cracked-nipple "Cracked nipple" "Breast state: cracked nipple."
* #breast-engorged "Engorged" "Breast state: breast engorgement."
* #breast-mastitis "Mastitis" "Breast state: mastitis."

// --- Uterus State ---
* #uterus-contracted "Contracted" "Uterus is contracted."
* #uterus-not-contracted "Not contracted" "Uterus is not contracted."
* #uterus-other "Other (specify)" "Uterus state: other, to be specified."

// --- PPH Status ---
* #pph-present "Present" "Postpartum haemorrhage is present."
* #pph-absent "Absent" "Postpartum haemorrhage is absent."

// --- C-Section Site State ---
* #cs-site-bleeding "Bleeding" "C-section site state: bleeding."
* #cs-site-normal "Normal" "C-section site state: normal."
* #cs-site-infected "Infected" "C-section site state: infected."
* #cs-site-gaping "Gaping" "C-section site state: gaping."

// --- Lochia State ---
* #lochia-normal "Normal" "Lochia state: normal."
* #lochia-foul-smelling "Foul smelling" "Lochia state: foul smelling."
* #lochia-excessive "Excessive" "Lochia state: excessive."

// --- Episiotomy State ---
* #episiotomy-repaired "Repaired" "Episiotomy state: repaired."
* #episiotomy-gaping "Gaping" "Episiotomy state: gaping."
* #episiotomy-infected "Infected" "Episiotomy state: infected."
* #episiotomy-healed "Healed" "Episiotomy state: healed."

// --- Cervical Cancer Screening Result ---
* #cx-normal "Normal (1)" "Cervical cancer screening result: normal."
* #cx-suspected "Suspected (2)" "Cervical cancer screening result: suspected."
* #cx-confirmed "Confirmed (3)" "Cervical cancer screening result: confirmed."
* #cx-not-done "Not Done (4)" "Cervical cancer screening was not performed."

// --- Weight-for-Age Category ---
* #wfa-normal "Normal (1)" "Weight-for-age: normal."
* #wfa-underweight "Underweight (2)" "Weight-for-age: underweight."
* #wfa-severe-underweight "Severe Underweight (3)" "Weight-for-age: severe underweight."
* #wfa-overweight "Overweight (4)" "Weight-for-age: overweight."
* #wfa-obese "Obese (5)" "Weight-for-age: obese."

// --- Height/Length-for-Age Category ---
* #hfa-normal "Normal (1)" "Height/length-for-age: normal."
* #hfa-stunted "Stunted (2)" "Height/length-for-age: stunted."
* #hfa-severely-stunted "Severely Stunted (3)" "Height/length-for-age: severely stunted."

// --- Vitamin A Supplementation Status ---
* #vita-6-11m "Supplemented — 6 to 11 months (1)" "Vitamin A supplementation given to a child aged 6–11 months."
* #vita-12-59m "Supplemented — 12 to 59 months (2)" "Vitamin A supplementation given to a child aged 12–59 months."
* #vita-not-supplemented "Not supplemented (3)" "Vitamin A supplementation not given."

// --- Developmental Milestones ---
* #milestone-head-control "Head control (1)" "Developmental milestone: head control."
* #milestone-sitting "Sitting (2)" "Developmental milestone: sitting."
* #milestone-talking "Talking (3)" "Developmental milestone: talking."

// --- CWC Danger Signs ---
* #cwc-danger-no-breastfeed "Unable to breastfeed (1)" "CWC danger sign: child is unable to breastfeed."
* #cwc-danger-no-drink "Unable to drink (2)" "CWC danger sign: child is unable to drink."
* #cwc-danger-vomits-all "Vomits everything (3)" "CWC danger sign: child vomits everything."
* #cwc-danger-bloody-diarrhoea "Bloody diarrhoea (4)" "CWC danger sign: bloody diarrhoea."
* #cwc-danger-oedema "Oedema (5)" "CWC danger sign: oedema."
* #cwc-danger-convulsions "Convulsions (6)" "CWC danger sign: convulsions."

// --- Disability / Congenital Deformity ---
* #disability-present "Disability / Congenital deformity present (1)" "A disability or congenital deformity is present."

// --- CWC Follow-Up Service Type ---
* #cwc-followup-nutrition "Nutrition services (1)" "CWC follow-up: nutrition services."
* #cwc-followup-rehabilitation "Rehabilitation services (2)" "CWC follow-up: rehabilitation services."

// --- Cervical Cancer Visit Type ---
* #cx-visit-initial-screening "Initial screening" "Cervical cancer visit type: initial screening."
* #cx-visit-routine-screening "Routine screening" "Cervical cancer visit type: routine screening."
* #cx-visit-treatment "Treatment visit" "Cervical cancer visit type: treatment visit."
* #cx-visit-post-treatment "Post-treatment visit" "Cervical cancer visit type: post-treatment visit."
* #cx-visit-post-treatment-complications "Post-treatment complications" "Cervical cancer visit type: post-treatment complications."

// --- VIA / VILI / HPV Test Result ---
* #via-positive "Positive" "VIA/VILI/HPV test result: positive."
* #via-negative "Negative" "VIA/VILI/HPV test result: negative."
* #via-suspicious-cancer "Suspicious for cancer" "VIA/VILI/HPV test result: suspicious for cancer."

// --- Pap Smear Result ---
* #pap-normal "Normal" "Pap smear result: normal."
* #pap-ascus "ASCUS/ASC-H (Atypical squamous cells of undetermined significance, high grade lesion not excluded)" "Pap smear result: ASCUS/ASC-H."
* #pap-lsil "LSIL (Low grade squamous intraepithelial lesion)" "Pap smear result: LSIL."
* #pap-hsil "HSIL/CIS (High grade squamous intraepithelial lesion)" "Pap smear result: HSIL/CIS."
* #pap-agus "AGUS (Atypical glandular cells of undetermined significance)" "Pap smear result: AGUS."
* #pap-invasive-cancer "Invasive cancer" "Pap smear result: invasive cancer."
* #pap-other "Other, please specify" "Pap smear result: other, to be specified."

// --- Colposcopy / Cervicography Result ---
* #colpo-satisfactory "Satisfactory" "Colposcopy/cervicography result: satisfactory."
* #colpo-unsatisfactory "Unsatisfactory" "Colposcopy/cervicography result: unsatisfactory."
* #colpo-normal "Normal" "Colposcopy/cervicography result: normal."
* #colpo-acetowhite "Acetowhite" "Colposcopy/cervicography result: acetowhite."
* #colpo-leukoplakia "Leukoplakia" "Colposcopy/cervicography result: leukoplakia."
* #colpo-punctuation "Punctuation" "Colposcopy/cervicography result: punctuation."
* #colpo-abnormal-vessels "Abnormal vessels" "Colposcopy/cervicography result: abnormal vessels."
* #colpo-mosaicism "Mosaicism" "Colposcopy/cervicography result: mosaicism."

// --- Cervical Cancer Activity Performed Today ---
* #cx-activity-screening-cryo-done "Screening today, with cryotherapy done today" "Cervical cancer activity: screening and cryotherapy both performed today."
* #cx-activity-screening-cryo-postponed "Screening done today, with cryotherapy postponed" "Cervical cancer activity: screening done today, cryotherapy postponed."
* #cx-activity-treated-postponed-case "Treated a previously screened and postponed case" "Cervical cancer activity: treated a previously screened and postponed case."

// --- Chronic Care Follow-Up Condition ---
* #chronic-dm "Diabetes mellitus (DM)" "Chronic care follow-up condition: diabetes mellitus."
* #chronic-htn "Hypertension (HTN)" "Chronic care follow-up condition: hypertension."
* #chronic-dm-htn "Both DM and HTN" "Chronic care follow-up condition: both diabetes mellitus and hypertension."
* #chronic-asthma "Asthma" "Chronic care follow-up condition: asthma."
* #chronic-arthritis "Arthritis" "Chronic care follow-up condition: arthritis."
* #chronic-other "Other" "Chronic care follow-up condition: other."

// --- 0–10 Labelled Scale ---
* #scale-0-none "0 = None / Best possible" "0–10 labelled scale: 0 = none / best possible."
* #scale-1-3-mild "1–3 = Mild / Manageable" "0–10 labelled scale: 1–3 = mild / manageable."
* #scale-4-6-moderate "4–6 = Moderate (affects daily activities)" "0–10 labelled scale: 4–6 = moderate, affects daily activities."
* #scale-7-9-severe "7–9 = Severe" "0–10 labelled scale: 7–9 = severe."
* #scale-10-worst "10 = Worst / Completely limited" "0–10 labelled scale: 10 = worst / completely limited."

// --- Pain Scale 0–10 Labelled ---
* #pain-0-none "0 = No pain" "Pain scale: 0 = no pain."
* #pain-1-3-mild "1–3 = Mild pain (annoying but manageable)" "Pain scale: 1–3 = mild pain, annoying but manageable."
* #pain-4-6-moderate "4–6 = Moderate pain (affects daily activities)" "Pain scale: 4–6 = moderate pain, affects daily activities."
* #pain-10-worst "10 = Worst pain" "Pain scale: 10 = worst pain."

// --- Eye Complications ---
* #eye-swelling "Eye swelling" "Eye complication: eye swelling."
* #eye-impaired-vision "Impaired vision" "Eye complication: impaired vision."
* #eye-double-vision "Double vision" "Eye complication: double vision."

// --- Renal Complications ---
* #renal-urine-volume "Volume of urine" "Renal complication: abnormal volume of urine."
* #renal-facial-oedema "Facial oedema" "Renal complication: facial oedema."
* #renal-pedal-oedema "Pedal oedema" "Renal complication: pedal oedema."

// --- Cardiac Complications ---
* #cardiac-chest-pain "Chest pain" "Cardiac complication: chest pain."
* #cardiac-difficulty-breathing "Difficulty in breathing" "Cardiac complication: difficulty in breathing."
* #cardiac-orthopnea "Orthopnea" "Cardiac complication: orthopnea."
* #cardiac-pnd "Paroxysmal nocturnal dyspnea" "Cardiac complication: paroxysmal nocturnal dyspnea."

// --- Musculoskeletal Complications ---
* #msk-lower-limb-swelling "Lower limb swelling" "Musculoskeletal complication: lower limb swelling."
* #msk-numbness "Numbness" "Musculoskeletal complication: numbness."
* #msk-burning-sensation "Burning sensation in hands and feet" "Musculoskeletal complication: burning sensation in hands and feet."

// --- CNS Complications ---
* #cns-headaches "Headaches" "CNS complication: headaches."
* #cns-tia "Transient ischaemic attacks" "CNS complication: transient ischaemic attacks."

// --- Physical Health Symptoms ---
* #phys-sleepy "Sleepy" "Physical health symptom: sleepy."
* #phys-breathing-difficulties "Breathing difficulties" "Physical health symptom: breathing difficulties."
* #phys-low-energy "Low energy" "Physical health symptom: low energy."
* #phys-no-appetite "No appetite" "Physical health symptom: no appetite."
* #phys-pain "Pain" "Physical health symptom: pain."

// --- Emotional Health Symptoms ---
* #emot-sad "Sad" "Emotional health symptom: sad."
* #emot-stressed "Stressed" "Emotional health symptom: stressed."
* #emot-anxiety "Anxiety" "Emotional health symptom: anxiety."
* #emot-worry "Worry" "Emotional health symptom: worry."
* #emot-mood-swings "Mood swings" "Emotional health symptom: mood swings."

// --- Fistula Type ---
* #vvf "VVF (Vesicovaginal fistula)" "Fistula type: vesicovaginal fistula."
* #rvf "RVF (Rectovaginal fistula)" "Fistula type: rectovaginal fistula."
* #vvr "VVR (Vesicovaginal Reflux)" "Fistula type: vesicovaginal reflux."