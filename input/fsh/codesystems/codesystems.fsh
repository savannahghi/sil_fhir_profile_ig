CodeSystem: SGHIIdentifierCodeSystem
Id: sghi-identifier-codesystem
Title: "SGHI Identifier Code System"
Description: "A single code system enumerating the many local identifier types used across SGHI's environment."
* ^status = #active
* #national-id "National ID" "A unique national identifier assigned by the National Registration Bureau (NRB) under the Ministry of Interior and National Administration."
* #passport-number "Passport Number" "A unique identifier assigned by the Directorate of Immigration Services under the Ministry of Interior and National Administration."
* #military-id "Military ID" "A unique identifier assigned by the Kenya Defence Forces (KDF) for military personnel."
* #alien-id "Alien ID" "A unique identifier assigned by the Directorate of Immigration Services to foreign nationals residing in Kenya."
* #nhif-id "National Hospital Insurance Fund ID" "A unique health insurance identifier assigned by the National Hospital Insurance Fund (NHIF)."
* #patient-number "Patient Number" "A unique identifier assigned by Slade360 Advantage for internal patient tracking."
* #payer-member-number "Payer Member Number" "A unique identifier assigned by insurance providers, including private insurers and Slade360."
* #smart-member-number "Smart Member Number" "A unique health identifier assigned by Slade360."
* #drchrono-id "Dr Chrono Chart ID" "A unique identifier assigned by the Dr. Chrono healthcare platform for patient records."
* #fhir-patient-id "FHIR Patient ID" "A clinical identifier assigned by the Clinical Data Repository (CDR) for FHIR-based patient records."
* #fhir-id "FHIR Id" "Is a UUID that uniquely identifiers all FHIR resources in SGHI."
* #erp-customer-id "ERP Customer ID" "A unique patient identifier assigned by Slade360 ERP system."
* #ccc-number "Comprehensive Care Clinic Number" "A unique identifier assigned by HIV/AIDS treatment programs."
* #refugee-id "Refugee ID" "A unique identifier assigned by the Refugee Affairs Secretariat (RAS) under the Ministry of Interior, in collaboration with UNHCR."
* #birth-certificate "Birth Certificate Number" "A unique identifier assigned by the Civil Registration Department under the Ministry of Interior and National Administration."
* #mandate-number "Mandate Number" "A regulatory or legal identifier assigned by relevant government agencies."
* #client-registry-number "Client Registry Number" "A unique identifier used for internal patient tracking within a Client Registry system."
* #slade-code "Slade360 Code" "A unique identifier assigned by Slade360."
* #slade-health-id "Slade Health ID" "A unique health identifier assigned by Slade360 Health CRM for patient records."
* #mfl-code "Master Facility List Code" "A unique identifier for each facility assigned by the Kenya Master Health Facility Registry under the Ministry of Health."
* #facility-registry-id "Facility Registry ID" "A unique identifier for each facility assigned by the Kenya Master Facility List (MFL) registry."
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

//Standard identifer types
* #SLADEID "Universal System Identifier" "A unique identifier assigned by the system by default"


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

// Condition severities
* #mild "Mild" "Mild"
* #moderate "Moderate" "Moderate"
* #severe "Severe" "Severe"

// Encounter class
* #chemo "Chemotherapy"
* #surg "Surgery"
* #radio "Radiotherapy"

// Route of Administration
* #iv "Intravenous" "Intravenous" 
* #im "Intramuscular" "Intramuscular" 
* #it "Intrathecal" "Intrathecal"
* #ro "Oral" "Oral"

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

* #powder "Powder"
* #tablets "Tablets"
* #capsule "Capsule"
* #solution "Solution"
* #lozenge "Lozenge"
* #suspension "Suspension"
* #syrup "Syrup"

CodeSystem: SGHIServiceRequestCS
Id: sghi-service-request-cs
Title: "SGHI Service Request CodeSystem"
Description: "A custom CodeSystem defining different elements of service requests."
* ^status = #active
* ^version = "1.0"

* #laboratory-procedure "Laboratory procedure"
* #imaging "Imaging"
* #counselling "Counselling"
* #education "Education"
* #surgical-procedure "Surgical procedure"
* #referral "Referral"

CodeSystem: SGHILOINCCodeSystem
Id: sghi-loinc-codesystem
Title: "SGHI LOINC Code System"
Description: "A a subset of LOINC codes used across SGHI's environment."
* ^status = #active
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
Id: sghi-specialtycodesystem
Title: "SGHI Specialty Code System"
Description: "A Specialty Code System to be used in  SGHI's environment."
* ^status = #active
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
* #HEALTH_ID "Health ID"
* #NATIONAL_ID "National ID"

CodeSystem: RetiredCIELCodes
Id: retired-ciel-codes
Title: "Retired CIEL Codes"
Description: "A collection of CIEL codes formerly in use for clinical observations."

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
* #161939  "Whole blood"
* #160406 "Bilateral"
* #147661 "Benign Neoplasm of Skin of Breast"
* #161290 "Ultrasound of right breast"
* #154451 "abnormal Papanicolaou smear of vagina"
* #166674 "High Risk"
*   #1064  "Not At Risk"
* #166675  "Low Risk"

CodeSystem: RetiredFHIRR4Codes
Id: retired-fhrr4-codes
Title: "Retired FHIR R4 Codes"
Description: "A collection of FHIR R 4 codes formerly in used in R4"

* #161360 "Referral"
* #159623 "Specialist"
* #1283 "Laboratory orders"
