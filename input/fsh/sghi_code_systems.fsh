CodeSystem: SGHIIdentifierCodeSystem
Id: sghi-identifier-codesystem
Title: "SGHI Identifier Code System"
Description: "A single code system enumerating the many local identifier types used across SGHI's environment."
* #ID "National ID" "A unique national identifier assigned by Client Registry"
* #PPN "Passport Number" "A unique identifer assigned by Client Registry"
* #MID "Military ID" "A unique identifier assigned by Client Registry"
* #AID "Alien ID" "A unique identifier assigned by Client Registry"
* #NHIFID "National Hospital Insurance Fund ID" "A unique identifier assigned by Client Registry"
* #PN "Patient Number" "A unique identifier assigned by Advantage"
* #PYMN "Payer Member Number" "A unique identifier for payers assigned by Slade360"
* #SMN "Smart Member Number" "A unique identifier assigned by Slade360"
* #DCCID "Dr Chrono Chart ID" "A unique identifier assigned by Dr. Chrono platform"
* #FPID "FHIR Patient ID" "A clinical identifier assigned by CDR(Clinical Data Repository)"
* #ERPID "ERP Customer ID" "A patient identifier assigned by ERP system"
* #CCC "Comprehensive Care Clinic Number" "A unique identifier assigned by Client Registry"
* #RFID "Refugee ID" "A unique identifier assigned by Client Registry"
* #DOBID "Birth Certificate Number" "A unique identifier assigned by Client Registry"
* #MN "Mandate Number" "A unique identifier assigned by Client Registry"
* #CRN "Client Registry Number" "A unique identifier used for internal patient tracking"
* #SC "Slade360 Code" "A unique identifier assigned by Slade360"
* #HID "Health ID" "Unique health identifier assigned by Health CRM"
* #MFLCODE "Master Facility List Code" "A unique identifier assigned by Slade360"
* #KMFR "Kenya Master Health Facility Registry" "A unique identifier for each facility assigned by Kenya health facility registry"
* #FRID "Facility Registry ID" "A unique identifer for each facility assigned by Kenya health facility registry"
* #JHN "Jurisdictional health number" "Jurisdictional health number"
* #STAT "STAT" "A unique identifier assigned for highest priority cases (e.g., emergency)"
* #ASAP	"ASAP"	"As soon as possible, next highest priority after STAT"
* #NORMAL "Routine" "Routine service, do at usual work hours"
* #PREOP "PREOP" "Used to indicate that a service is to be performed prior to a scheduled surgery"
* #EL "Elective" "Low priority. Beneficial to the patient but not essential for survival"
* #IP "In Patient" "A patient encounter where a patient is admitted by a hospital or equivalent facility, assigned to a location where patients generally stay at least overnight and provided with room, board, and continuous nursing service."
* #AMB "Ambulatory (Out Patient)" "A comprehensive term for health care provided in a healthcare facility (e.g. a practitioneraTMs office, clinic setting, or hospital) on a nonresident basis. The term ambulatory usually implies that the patient has come to the location and is not assigned to a bed. Sometimes referred to as an outpatient encounter."
* #EMR "Emergency" "A patient encounter that takes place at a dedicated healthcare service delivery location where the patient receives immediate evaluation and treatment, provided until the patient can be discharged or responsibility for the patient's care is transferred elsewhere (for example, the patient could be admitted as an inpatient or transferred to another facility.)"
* #CLOSED "Closed" "Closed"
* #HOUSEKEEPING "Housekeeping" "Housekeeping"
* #OCCUPIED "Occupied" "Occupied"
* #UNOCCUPIED "Unoccupied" "Unoccupied"
* #CONTAMINATED "Contaminated" "Contaminated"
* #ISOLATED "Isolated" "Isolated"
* #instance "Instance" "The Location resource represents a specific instance of a location (e.g. Operating Theatre 1A)."
* #kind "Kind" "The Location represents a class of locations (e.g. Any Operating Theatre) although this class of locations could be constrained within a specific boundary (such as organization, or parent location, address etc.)."
* #work "Work" "An office contact point. First choice for business related contacts during business hours."
* #mobile "Mobile" "A telecommunication device that moves and stays with its owner. May have characteristics of all other use codes, suitable for urgent matters, not the first choice for routine business."
* #phone "Phone" "The value is a telephone number used for voice calls. Use of full international numbers starting with + is recommended to enable automatic dialing support but not required."
* #email "Email" "The value is an email address."
* #bu "Building" "Any Building or structure. This may contain rooms, corridors, wings, etc. It might not have walls, or a roof, but is considered a defined/allocated space."
* #wi "Wing" "A Wing within a Building, this often contains levels, rooms and corridors."
* #wa "Ward" "A Ward is a section of a medical facility that may contain rooms and other types of location."
* #ro "Room" "A space that is allocated as a room, it may have walls/roof etc., but does not require these."
* #bd "Bed" "A space that is allocated for sleeping/laying on. This is not the physical bed/trolley that may be moved about, but the space it may occupy."
* #ve "Vehicle" "A means of transportation, eg. mobile clinics"
* #ho "House" "A residential dwelling. Usually used to reference a location that a person/patient may reside."
* #area "Area" "A defined physical boundary of something, such as a flood risk zone, region, postcode"
* #vi "Virtual" "A location that is virtual in nature, such as a conference call or virtual meeting space"

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
