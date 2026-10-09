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
* include SGHIPersonIdentifierCodeSystem#slade-code "Slade Code"
* include SGHIPersonIdentifierCodeSystem#sha-slade-code "SHA Slade Code"
* include SGHIPersonIdentifierCodeSystem#kmpdc-registration-number "KMPDC Registration Number"
* include SGHIPersonIdentifierCodeSystem#kmpdc-license-number "KMPDC License Number"
* include SGHIPersonIdentifierCodeSystem#coc-registration-number "COC Registration Number"
* include SGHIPersonIdentifierCodeSystem#nck-registration-number "NCK Registration Number"
* include SGHIPersonIdentifierCodeSystem#ppb-registration-number "PPB Registration Number"
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
* include #N "Next-of-Kin" from system http://hl7.org/fhir/CodeSystem/v2-0131
* include #C "Emergency Contact" from system http://hl7.org/fhir/CodeSystem/v2-0131
* include #S "Spouse" from system http://hl7.org/fhir/CodeSystem/v2-0131
* include #E "Employer" from system http://hl7.org/fhir/CodeSystem/v2-0131
* include #CP "Contact Person" from system http://hl7.org/fhir/CodeSystem/v2-0131

ValueSet: SGHIActPriority
Id: encounter-act-priority
Title: "SGHI Encounter Priority"
Description: "Urgency of an encounter"
* include SGHIIdentifierCodeSystem#stat
* include SGHIIdentifierCodeSystem#asap
* include SGHIIdentifierCodeSystem#urgent
* include SGHIIdentifierCodeSystem#routine
* include SGHIIdentifierCodeSystem#preop
* include SGHIIdentifierCodeSystem#elective

// Admissions sorts its queue on three of the priorities above and has no ASAP
// band. Rather than a second, near-identical priority code system, this is the
// subset of SGHIActPriority that the admission screens offer.
ValueSet: SGHIAdmissionPriority
Id: admission-priority
Title: "SGHI Admission Priority"
Description: "Clinical priority of an admission request. Orders the admission queue and the bed board. A narrower set than SGHIActPriority: admissions has no ASAP band."
* ^status = #active
* ^experimental = false
* include SGHIIdentifierCodeSystem#stat "STAT"
* include SGHIIdentifierCodeSystem#urgent "Urgent"
* include SGHIIdentifierCodeSystem#routine "Routine"

ValueSet: SGHIDiagnosticConclusionICD11
Id: diagnostic-conclusion-icd11
Title: "SGHI Diagnostic Conclusion ICD-11"
Description: "ICD-11 codes used for diagnostic conclusions in SGHI"
* include codes from system http://id.who.int/icd/release/11/mms

// The first six mirror HL7 v2-0116. Bed management additionally needs to say a
// bed is held for someone (reserved) or out for repair rather than cleaning
// (maintenance), neither of which v2-0116 has. Note the two synonyms a bed board
// uses: 'available' is #unoccupied and 'cleaning' is #housekeeping — the same
// concepts under operational names, so they are not duplicated as codes.
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
* include #reserved "Reserved" from system SGHIIdentifierCodeSystem
* include #maintenance "Maintenance" from system SGHIIdentifierCodeSystem

// Only a free bed is offered when allocating. Every other state is excluded,
// which is why this is its own set rather than a filter applied at the screen.
ValueSet: SGHIAllocatableBedStatus
Id: allocatable-bed-status
Title: "SGHI Allocatable Bed Status"
Description: "The bed states offered when allocating a bed on admission. Only an unoccupied bed qualifies; occupied, reserved, housekeeping, maintenance, contaminated, isolated and closed beds are all withheld."
* ^status = #active
* ^experimental = false
* include SGHIIdentifierCodeSystem#unoccupied "Unoccupied"

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
* include http://hl7.org/fhir/CodeSystem/contact-point-use#work
* include http://hl7.org/fhir/CodeSystem/contact-point-use#mobile

ValueSet: SGHIContactSystem
Id: contact-system
Title: "SGHI Contact System"
Description: "Code used to indicate what communications system is required to make use of the contact."
* ^status = #active
* include http://hl7.org/fhir/CodeSystem/contact-point-system#phone
* include http://hl7.org/fhir/CodeSystem/contact-point-system#email

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

// SGHILocationForm says a location is a bed; this says which kind of bed, which
// is what allocation actually needs — a newborn takes an incubator, a child a
// cot, and a patient in open ward space a bay. 'Bay' is the existing #open-bay
// concept, a space belonging to no room, relabelled here for the bed axis in the
// same way #high-dependency reads as 'HDU' in SGHIRoomClass.
ValueSet: SGHIBedKind
Id: bed-kind
Title: "SGHI Bed Kind"
Description: "The kind of bed a location represents, as distinct from its form, its class of room and its operational status."
* ^status = #active
* ^experimental = false
* include SGHIIdentifierCodeSystem#cot "Cot"
* include SGHIIdentifierCodeSystem#incubator "Incubator"
* include SGHIAdmissionCodeSystem#open-bay "Bay"
* include SGHIIdentifierCodeSystem#bed "Bed"

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
* include #277132007 "Therapeutic procedure" from system SGHIIdentifierCodeSystem
* include #442460002 "Procedure on wound" from system SGHIIdentifierCodeSystem
* include #386637004 "Obstetric procedure" from system SGHIIdentifierCodeSystem
* include #52052004 "Rehabilitation therapy" from system SGHIIdentifierCodeSystem

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
* include codes from system http://hl7.org/fhir/CodeSystem/dose-form
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
* include SGHIMedicationForm#pill "Pill"
* include SGHIMedicationForm#suppository "Suppository"
* include SGHIMedicationForm#granules "Granules"
* include SGHIMedicationForm#pellets "Pellets"
* include SGHIMedicationForm#wafer "Wafer"
* include SGHIMedicationForm#sachet "Sachet"
* include SGHIMedicationForm#drops "Drops"
* include SGHIMedicationForm#elixir "Elixir"
* include SGHIMedicationForm#emulsion "Emulsion"
* include SGHIMedicationForm#mixture "Mixture"
* include SGHIMedicationForm#linctus "Linctus"
* include SGHIMedicationForm#mouthwash "Mouthwash"
* include SGHIMedicationForm#gargle "Gargle"
* include SGHIMedicationForm#cream "Cream"
* include SGHIMedicationForm#ointment "Ointment"
* include SGHIMedicationForm#gel "Gel"
* include SGHIMedicationForm#lotion "Lotion"
* include SGHIMedicationForm#patch "Patch"
* include SGHIMedicationForm#foam "Foam"
* include SGHIMedicationForm#spray "Spray"
* include SGHIMedicationForm#paste "Paste"
* include SGHIMedicationForm#plaster "Plaster"
* include SGHIMedicationForm#poultice "Poultice"
* include SGHIMedicationForm#dressing "Dressing"
* include SGHIMedicationForm#serum "Serum"
* include SGHIMedicationForm#balm "Balm"
* include SGHIMedicationForm#salve "Salve"
* include SGHIMedicationForm#mousse "Mousse"
* include SGHIMedicationForm#shampoo "Shampoo"
* include SGHIMedicationForm#soap "Soap"
* include SGHIMedicationForm#cleanser "Cleanser"
* include SGHIMedicationForm#infusion "Infusion"
* include SGHIMedicationForm#ampoule "Ampoule"
* include SGHIMedicationForm#vial "Vial"
* include SGHIMedicationForm#pre-filled-syringe "Pre-filled Syringe"
* include SGHIMedicationForm#cartridge "Cartridge"
* include SGHIMedicationForm#lyophilized-powder-for-injection "Lyophilized Powder for Injection"
* include SGHIMedicationForm#implant "Implant"
* include SGHIMedicationForm#depot-injection "Depot Injection"
* include SGHIMedicationForm#puff "Puff"
* include SGHIMedicationForm#inhaler-mdi "Inhaler (MDI)"
* include SGHIMedicationForm#dry-powder-inhaler-dpi "Dry Powder Inhaler (DPI)"
* include SGHIMedicationForm#nebulizer-dose "Nebulizer Dose"
* include SGHIMedicationForm#nasal-spray "Nasal Spray"
* include SGHIMedicationForm#nasal-drops "Nasal Drops"
* include SGHIMedicationForm#nasal-ointment "Nasal Ointment"
* include SGHIMedicationForm#nasal-powder "Nasal Powder"
* include SGHIMedicationForm#eye-drops "Eye Drops"
* include SGHIMedicationForm#eye-ointment "Eye Ointment"
* include SGHIMedicationForm#eye-gel "Eye Gel"
* include SGHIMedicationForm#eye-wash "Eye Wash"
* include SGHIMedicationForm#eye-insert "Eye Insert"
* include SGHIMedicationForm#ear-drops "Ear Drops"
* include SGHIMedicationForm#ear-spray "Ear Spray"
* include SGHIMedicationForm#ear-ointment "Ear Ointment"


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
Title: "SGHI Practitioner Specialty Value Set"
Description: "The clinical specialties a practitioner can hold across SGHI's environment."
* ^status = #active
* ^experimental = false
* include SGHIPractitionerSpecialtyCodeSystem#ophthalmology "Ophthalmology"
* include SGHIPractitionerSpecialtyCodeSystem#internal-medicine "Internal Medicine"
* include SGHIPractitionerSpecialtyCodeSystem#clinical-pathology "Clinical Pathology"
* include SGHIPractitionerSpecialtyCodeSystem#conservative-dentistry "Conservative Dentistry"
* include SGHIPractitionerSpecialtyCodeSystem#general-surgery-plastic-surgery "General Surgery Plastic Surgery"
* include SGHIPractitionerSpecialtyCodeSystem#microbiology "Microbiology"
* include SGHIPractitionerSpecialtyCodeSystem#oral-pathology "Oral Pathology"
* include SGHIPractitionerSpecialtyCodeSystem#general-surgery-paediatric-surgery "General Surgery Paediatric Surgery"
* include SGHIPractitionerSpecialtyCodeSystem#obstetrics-and-gynaecology-oncology-radiotherapy "Obstetrics and Gynaecology Oncology/Radiotherapy"
* include SGHIPractitionerSpecialtyCodeSystem#endodontics "Endodontics"
* include SGHIPractitionerSpecialtyCodeSystem#radiology "Radiology"
* include SGHIPractitionerSpecialtyCodeSystem#nephrology "Nephrology"
* include SGHIPractitionerSpecialtyCodeSystem#emergency-medicine "Emergency Medicine"
* include SGHIPractitionerSpecialtyCodeSystem#ear-nose-and-throat-ent-surgery "Ear Nose and Throat (ENT Surgery)"
* include SGHIPractitionerSpecialtyCodeSystem#paediatric-surgery "Paediatric Surgery"
* include SGHIPractitionerSpecialtyCodeSystem#oncology "Oncology"
* include SGHIPractitionerSpecialtyCodeSystem#prosthetic-dentistry "Prosthetic Dentistry"
* include SGHIPractitionerSpecialtyCodeSystem#obstetrics-and-gynaecology "Obstetrics and Gynaecology"
* include SGHIPractitionerSpecialtyCodeSystem#public-health "Public Health"
* include SGHIPractitionerSpecialtyCodeSystem#occupational-medicine "Occupational Medicine"
* include SGHIPractitionerSpecialtyCodeSystem#general-pathology "General Pathology"
* include SGHIPractitionerSpecialtyCodeSystem#neurosurgery "Neurosurgery"
* include SGHIPractitionerSpecialtyCodeSystem#diabetology "Diabetology"
* include SGHIPractitionerSpecialtyCodeSystem#clinical-medical-genetics "Clinical Medical Genetics"
* include SGHIPractitionerSpecialtyCodeSystem#general-practitioner "General Practitioner"
* include SGHIPractitionerSpecialtyCodeSystem#neurology "Neurology"
* include SGHIPractitionerSpecialtyCodeSystem#prosthodontics "Prosthodontics"
* include SGHIPractitionerSpecialtyCodeSystem#dermatology-internal-medicine "Dermatology Internal Medicine"
* include SGHIPractitionerSpecialtyCodeSystem#orthopaedics "Orthopaedics"
* include SGHIPractitionerSpecialtyCodeSystem#biomaterials-science "Biomaterials Science"
* include SGHIPractitionerSpecialtyCodeSystem#orthopaedics-and-trauma-surgery "Orthopaedics and Trauma Surgery"
* include SGHIPractitionerSpecialtyCodeSystem#radiotherapy "Radiotherapy"
* include SGHIPractitionerSpecialtyCodeSystem#paediatric-dentistry "Paediatric Dentistry"
* include SGHIPractitionerSpecialtyCodeSystem#internal-medicine-oncology-radiotherapy "Internal Medicine Oncology/Radiotherapy"
* include SGHIPractitionerSpecialtyCodeSystem#orthodontics "Orthodontics"
* include SGHIPractitionerSpecialtyCodeSystem#restorative-dentistry "Restorative Dentistry"
* include SGHIPractitionerSpecialtyCodeSystem#general-surgery "General Surgery"
* include SGHIPractitionerSpecialtyCodeSystem#oral-and-maxillofacial-surgery "Oral and Maxillofacial Surgery"
* include SGHIPractitionerSpecialtyCodeSystem#dermatology "Dermatology"
* include SGHIPractitionerSpecialtyCodeSystem#psychiatry "Psychiatry"
* include SGHIPractitionerSpecialtyCodeSystem#general-surgery-orthopaedics "General Surgery Orthopaedics"
* include SGHIPractitionerSpecialtyCodeSystem#dental "Dental"
* include SGHIPractitionerSpecialtyCodeSystem#orthopaedic-surgery "Orthopaedic Surgery"
* include SGHIPractitionerSpecialtyCodeSystem#dental-radiology "Dental Radiology"
* include SGHIPractitionerSpecialtyCodeSystem#periodontology "Periodontology"
* include SGHIPractitionerSpecialtyCodeSystem#family-medicine "Family Medicine"
* include SGHIPractitionerSpecialtyCodeSystem#palliative-medicine "Palliative Medicine"
* include SGHIPractitionerSpecialtyCodeSystem#plastic-surgery "Plastic Surgery"
* include SGHIPractitionerSpecialtyCodeSystem#paediatrics-and-child-health "Paediatrics and Child Health"
* include SGHIPractitionerSpecialtyCodeSystem#anaesthesia "Anaesthesia"
* include SGHIPractitionerSpecialtyCodeSystem#cardiologist "Cardiologist"
* include SGHIPractitionerSpecialtyCodeSystem#urologist "Urologist"
* include SGHIPractitionerSpecialtyCodeSystem#psychologist "Psychologist"
* include SGHIPractitionerSpecialtyCodeSystem#physiotherapist "Physiotherapist"
* include SGHIPractitionerSpecialtyCodeSystem#functional-medicine "Functional Medicine"
* include SGHIPractitionerSpecialtyCodeSystem#cardiothoracic-surgeon "Cardiothoracic Surgeon"
* include SGHIPractitionerSpecialtyCodeSystem#hiv-aids-specialist "HIV/AIDS Specialist"
* include SGHIPractitionerSpecialtyCodeSystem#family-therapist "Family Therapist"
* include SGHIPractitionerSpecialtyCodeSystem#pathology "Pathology"
* include SGHIPractitionerSpecialtyCodeSystem#nutritionist "Nutritionist"
* include SGHIPractitionerSpecialtyCodeSystem#physician "Physician"
* include SGHIPractitionerSpecialtyCodeSystem#mch "Mother and Child Health"
* include SGHIPractitionerSpecialtyCodeSystem#other "Other"

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
* include SGHIRouteOfAdministrationCodeSystem#tp "Topical"
* include SGHIRouteOfAdministrationCodeSystem#inh "Inhalation"

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


ValueSet: SGHICancerStages
Id: cancer-stages
Title: "Cancer Stages Value Sets"
Description: "Cancer Stages Value Sets"
* ^status = #active
* include SGHICancerStageCodeSystem#stage1 "Stage 1"
* include SGHICancerStageCodeSystem#stage2 "Stage 2"
* include SGHICancerStageCodeSystem#stage3 "Stage 3"
* include SGHICancerStageCodeSystem#stage4 "Stage 4"


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
* include codes from system http://unitsofmeasure.org

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
* include SGHIPersonIdentifierCodeSystem#birth-notification-number "Birth Notification"
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
* include SGHISpecialClinicCodeSystem#anc-sickle-cell "Sickle Cell Disease"
* include SGHISpecialClinicCodeSystem#anc-cml "Chronic Myelogenous Leukemia (CML)"
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
* include SGHISpecialClinicCodeSystem#supp-ferrous-sulphate-folic-acid "Ferrous sulphate + Folic Acid"
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
* include SGHISpecialClinicCodeSystem#delivery-other "Other (specify)"

ValueSet: SGHIDeliveryInstrument
Id: delivery-instrument
Title: "SGHI Delivery Instrument"
Description: "Which instrument was applied for an assisted vaginal delivery. Offered only where the mode of delivery is #delivery-avd, and required there: 'assisted' on its own does not say what was used, and a vacuum and a forceps birth carry different neonatal injury profiles that no later reading of the record can separate."
* ^status = #active
* ^experimental = false
* include SGHISpecialClinicCodeSystem#delivery-instr-vacuum "Vacuum"
* include SGHISpecialClinicCodeSystem#delivery-instr-forceps "Forceps"

ValueSet: SGHICaesareanKind
Id: caesarean-kind
Title: "SGHI Caesarean Kind"
Description: "Whether a caesarean section was booked in advance or decided once labour or an urgent indication had begun. Offered only where the mode of delivery is #delivery-cs. It is asked rather than inferred because nothing else on the record carries the distinction: the time of operation does not give it, and it is the split maternity audit reports on."
* ^status = #active
* ^experimental = false
* include SGHISpecialClinicCodeSystem#cs-kind-elective "Elective"
* include SGHISpecialClinicCodeSystem#cs-kind-emergency "Emergency"

ValueSet: SGHIDeliveryOtherReason
Id: delivery-other-reason
Title: "SGHI Other Delivery Reason"
Description: "The modes of delivery that 'Other (specify)' stands for, offered only where the mode of delivery is #delivery-other. Closed and coded rather than free text so that a delivery recorded here can still be counted later; a free-text box returns several spellings of the same operation and no denominator. Every entry is a mode in its own right, not a reason for one."
* ^status = #active
* ^experimental = false
* include SGHISpecialClinicCodeSystem#delivery-other-assisted-breech-extraction "Assisted breech extraction"
* include SGHISpecialClinicCodeSystem#delivery-other-internal-podalic-version "Internal podalic version and breech extraction"
* include SGHISpecialClinicCodeSystem#delivery-other-vbac "Vaginal birth after caesarean"
* include SGHISpecialClinicCodeSystem#delivery-other-twin-second-cs "Twin, second delivered by caesarean"
* include SGHISpecialClinicCodeSystem#delivery-other-delivered-before-arrival "Delivered before arrival"
* include SGHISpecialClinicCodeSystem#delivery-other-symphysiotomy "Symphysiotomy"
* include SGHISpecialClinicCodeSystem#delivery-other-destructive-operation "Destructive operation"

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
* include SGHISpecialClinicCodeSystem#cwc-danger-none "None"

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
* include SGHISpecialClinicCodeSystem#phys-normal "Normal"

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
* include SGHIVisitTypeCodeSystem#general_outpatient "General Outpatient"
* include SGHIVisitTypeCodeSystem#cwc "CWC (Child Welfare Clinic)"
* include SGHIVisitTypeCodeSystem#anc "ANC (Antenatal Care)"
* include SGHIVisitTypeCodeSystem#pnc "PNC (Postnatal Care)"
* include SGHIVisitTypeCodeSystem#fp "FP (Family Planning)"
* include SGHIVisitTypeCodeSystem#ccc "CCC (Comprehensive Care Centre)"
* include SGHIVisitTypeCodeSystem#chronic-care-dm-htn "Chronic Care (DM/HTN)"
* include SGHIVisitTypeCodeSystem#nutrition "Nutrition"
* include SGHIVisitTypeCodeSystem#otc-prescription "OTC/Prescription"
* include SGHIVisitTypeCodeSystem#first-aid-emergency "First Aid and Emergency"
* include SGHIVisitTypeCodeSystem#healthy-schools "Healthy Schools"
* include SGHIVisitTypeCodeSystem#healthy-factories "Healthy Factories"
* include SGHIVisitTypeCodeSystem#ent-clinic "E.N.T. Clinic"
* include SGHIVisitTypeCodeSystem#eye-clinic "Eye Clinic"
* include SGHIVisitTypeCodeSystem#tb-leprosy "TB and Leprosy"
* include SGHIVisitTypeCodeSystem#psychiatry "Psychiatry"
* include SGHIVisitTypeCodeSystem#mental-health "MENTAL_HEALTH"
* include SGHIVisitTypeCodeSystem#orthopaedic-clinic "Orthopaedic Clinic"
* include SGHIVisitTypeCodeSystem#occupational-therapy-clinic "Occupational Therapy Clinic"
* include SGHIVisitTypeCodeSystem#physiotherapy-clinic "Physiotherapy Clinic"
* include SGHIVisitTypeCodeSystem#medical-clinics "Medical Clinics"
* include SGHIVisitTypeCodeSystem#surgical-clinics "Surgical Clinics"
* include SGHIVisitTypeCodeSystem#paediatrics "Paediatrics"
* include SGHIVisitTypeCodeSystem#community-health-services "Community Health Services"
* include SGHIVisitTypeCodeSystem#palliative-care-hospice "Palliative Care and Hospice Services"
* include SGHIVisitTypeCodeSystem#dental-oral-health "Dental and Oral Health Services"

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

ValueSet: SGHIReviewOfBodySystems
Id: review-of-body-systems
Title: "SGHI Review of Body Systems"
Description: "A ValueSet for body systems covered in the Review of Systems (ROS) assessment."
* ^status = #active
* include SGHISpecialClinicCodeSystem#ros-respiratory "Respiratory"
* include SGHISpecialClinicCodeSystem#ros-cardiovascular "Cardiovascular"
* include SGHISpecialClinicCodeSystem#ros-nervous "Nervous"
* include SGHISpecialClinicCodeSystem#ros-abdominal "Abdominal"
* include SGHISpecialClinicCodeSystem#ros-endocrine "Endocrine"
* include SGHISpecialClinicCodeSystem#ros-ent "ENT"
* include SGHISpecialClinicCodeSystem#ros-ophthalmic "Ophthalmic"
* include SGHISpecialClinicCodeSystem#ros-genitourinary "Genitourinary"
* include SGHISpecialClinicCodeSystem#ros-musculoskeletal "Musculoskeletal"
* include SGHISpecialClinicCodeSystem#ros-skin "Skin"
* include SGHISpecialClinicCodeSystem#ros-reproductive "Reproductive"

ValueSet: SGHIVisitCategory
Id: visit-category
Title: "SGHI Visit Category"
Description: "A ValueSet defining the possible visit categories in SGHI's systems."
* ^status = #active
* include SGHIVisitCategoryCodeSystem#New "New"
* include SGHIVisitCategoryCodeSystem#Review "Review"
* include SGHIVisitCategoryCodeSystem#Returning "Returning"



ValueSet: SGHIObservationInterpretation
Id: observation-interpretation
Title: "SGHI Observation Interpretation"
Description: "Interpretation codes used to flag an observation's value against its reference range. Screening and triage flagging only, not diagnostic criteria."
* ^status = #active
* include $v3-ObservationInterpretation#LL "Critical low"
* include $v3-ObservationInterpretation#L "Low"
* include $v3-ObservationInterpretation#N "Normal"
* include $v3-ObservationInterpretation#H "High"
* include $v3-ObservationInterpretation#HH "Critical high"
* include $v3-ObservationInterpretation#A "Abnormal"
// A positive or negative screening result, such as a favourable Bishop score.
* include $v3-ObservationInterpretation#POS "Positive"
* include $v3-ObservationInterpretation#NEG "Negative"

// referencerange-meaning has no concept for the critical-low and
// critical-high bands, so this set combines the HL7 codes that do exist with
// two SGHI-defined ones. Consumers need a code to escalate on, not a label to
// parse, and the binding is extensible precisely for gaps like this.
ValueSet: SGHIReferenceRangeMeaning
Id: referencerange-meaning
Title: "SGHI Reference Range Meaning"
Description: "Qualifies what a reference range on an observation represents."
* ^status = #active
* include $referencerange-meaning#normal "Normal Range"
* include $referencerange-meaning#recommended "Recommended Range"
* include $referencerange-meaning#treatment "Treatment Range"
* include $referencerange-meaning#therapeutic "Therapeutic Desired Level"
* include SGHIReferenceRangeBandCodeSystem#critical-low "Critical low"
* include SGHIReferenceRangeBandCodeSystem#critical-high "Critical high"

// ═════════════════════════════════════════════════════════════════════════════
// Inpatient admission
//
// Where a concept already had a home it is bound there rather than recoded:
//   clinical priority   -> SGHIActPriority / SGHIAdmissionPriority
//   bed state           -> SGHIBedStatus / SGHIAllocatableBedStatus
//   admitting service   -> SGHIPractitionerSpecialtyCodeSystem
//   apparent sex        -> HL7 administrative-gender
//   ward / room / bed   -> SGHILocationForm
//   kind of bed         -> SGHIBedKind
//   ward closed         -> SGHIBedStatus #closed, not SGHIWardRemovalReason
// Only the concepts with no existing home live in SGHIAdmissionCodeSystem.
// ═════════════════════════════════════════════════════════════════════════════

ValueSet: SGHIAdmissionType
Id: admission-type
Title: "SGHI Admission Type"
Description: "The kind of admission being requested. Changing it on an in-flight request requires a stated reason."
* ^status = #active
* ^experimental = false
* include SGHIAdmissionCodeSystem#emergency "Emergency"
* include SGHIAdmissionCodeSystem#elective "Elective"
* include SGHIAdmissionCodeSystem#transfer-in "Transfer in"
* include SGHIAdmissionCodeSystem#maternity "Maternity"
* include SGHIAdmissionCodeSystem#newborn "Newborn"
* include SGHIAdmissionCodeSystem#day-case "Day case"
* include SGHIAdmissionCodeSystem#mental-health "MENTAL_HEALTH"

// The subset a consultation can raise. A consultation cannot originate a
// transfer in, a newborn or a day case, so those three are withheld here.
ValueSet: SGHIConsultationAdmissionType
Id: consultation-admission-type
Title: "SGHI Consultation Admission Type"
Description: "The admission types that can be requested from a consultation."
* ^status = #active
* ^experimental = false
* include SGHIAdmissionCodeSystem#emergency "Emergency"
* include SGHIAdmissionCodeSystem#elective "Elective"
* include SGHIAdmissionCodeSystem#maternity "Maternity"
* include SGHIAdmissionCodeSystem#mental-health "MENTAL_HEALTH"

// HL7 covers three of the five. Inter-ward transfer and direct admission have no
// admit-source concept, so they come from the SGHI system alongside them.
ValueSet: SGHIAdmissionSource
Id: admission-source
Title: "SGHI Admission Source"
Description: "Where the patient was immediately before this admission."
* ^status = #active
* ^experimental = false
* include $admit-source#emd "From accident/emergency department"
* include $admit-source#outp "From outpatient department"
* include $admit-source#hosp-trans "Transferred from other hospital"
* include SGHIAdmissionCodeSystem#inter-ward-transfer "Inter-ward transfer"
* include SGHIAdmissionCodeSystem#direct-admission "Direct admission"

ValueSet: SGHILevelOfCare
Id: level-of-care
Title: "SGHI Level of Care"
Description: "The intensity of nursing and monitoring an admission needs. Ranked by the care-rank property: a request outranking what a ward can nurse warns rather than blocks."
* ^status = #active
* ^experimental = false
* include SGHIAdmissionCodeSystem#general "General"
* include SGHIAdmissionCodeSystem#high-dependency "High dependency"
* include SGHIAdmissionCodeSystem#intensive-care "Intensive care"

// The four services an admission can be sent to. These are existing practitioner
// specialties, not new concepts, so this is a subset of a system already in the IG.
ValueSet: SGHIAdmittingService
Id: admitting-service
Title: "SGHI Admitting Service"
Description: "The clinical service taking responsibility for an admitted patient. A subset of the SGHI practitioner specialties, each mapped to a ward."
* ^status = #active
* ^experimental = false
* include SGHIPractitionerSpecialtyCodeSystem#internal-medicine "Internal medicine"
* include SGHIPractitionerSpecialtyCodeSystem#general-surgery "General surgery"
* include SGHIPractitionerSpecialtyCodeSystem#obstetrics-and-gynaecology "Obstetrics and gynaecology"
* include SGHIPractitionerSpecialtyCodeSystem#paediatrics-and-child-health "Paediatrics"

// What a ward is for, as distinct from the class of a room inside it and from
// the level of care a patient needs. Seven of the nine are concepts already
// defined for those other axes and are bound here rather than recoded; only
// #paediatric and #theatre-recovery are specific to wards.
ValueSet: SGHIWardType
Id: ward-type
Title: "SGHI Ward Type"
Description: "The kind of ward a bed sits in. Used to route an admission to a ward that can nurse the level of care asked for."
* ^status = #active
* ^experimental = false
* include SGHIAdmissionCodeSystem#general "General"
* include SGHIAdmissionCodeSystem#maternity "Maternity"
* include SGHIAdmissionCodeSystem#paediatric "Paediatric"
* include SGHIAdmissionCodeSystem#newborn "Newborn unit"
* include SGHIAdmissionCodeSystem#intensive-care "Intensive care"
* include SGHIAdmissionCodeSystem#high-dependency "High dependency"
* include SGHIAdmissionCodeSystem#isolation "Isolation"
* include SGHIAdmissionCodeSystem#amenity "Amenity"
* include SGHIAdmissionCodeSystem#theatre-recovery "Theatre recovery"

// Why a ward record was removed from the facility setup. Every reason here is an
// administrative correction — the record should never have stood — which is why
// a ward that ran and has since shut is not in this set: that ward closed, and
// closing keeps the history that removal discards.
ValueSet: SGHIWardRemovalReason
Id: ward-removal-reason
Title: "SGHI Ward Removal Reason"
Description: "Why a ward was removed from the facility setup. Recorded for audit. Removal is for a record that should never have existed; a ward that has stopped taking patients is closed rather than removed."
* ^status = #active
* ^experimental = false
* include SGHIAdmissionCodeSystem#removed-in-error "Created by mistake"
* include SGHIAdmissionCodeSystem#removed-duplicate "Duplicate of an existing ward"
* include SGHIAdmissionCodeSystem#removed-wrong-facility "Wrong facility"
* include SGHIAdmissionCodeSystem#removed-test-data "Test or training data"
* include SGHIAdmissionCodeSystem#removed-ward-cancelled "Set up before the ward was cancelled"
* include SGHIAdmissionCodeSystem#removed-other "Other"

ValueSet: SGHIRoomClass
Id: room-class
Title: "SGHI Room Class"
Description: "The class of a room, used to filter free beds when allocating. A bed belonging to no room is an open bay."
* ^status = #active
* ^experimental = false
* include SGHIAdmissionCodeSystem#general "General"
* include SGHIAdmissionCodeSystem#semi-private "Semi private"
* include SGHIAdmissionCodeSystem#private "Private"
* include SGHIAdmissionCodeSystem#isolation "Isolation"
* include SGHIAdmissionCodeSystem#delivery "Delivery"
* include SGHIAdmissionCodeSystem#procedure "Procedure"
* include SGHIAdmissionCodeSystem#amenity "Amenity"
* include SGHIAdmissionCodeSystem#high-dependency "HDU"
* include SGHIAdmissionCodeSystem#resuscitation "Resuscitation"
* include SGHIAdmissionCodeSystem#intensive-care "Intensive care"
* include SGHIAdmissionCodeSystem#open-bay "Open bay"

ValueSet: SGHIBedPreference
Id: bed-preference
Title: "SGHI Bed Preference"
Description: "A preference carried from the admission request. Absent means no preference; it is not a code."
* ^status = #active
* ^experimental = false
* include SGHIAdmissionCodeSystem#isolation "Isolation room"
* include SGHIAdmissionCodeSystem#near-nurses-station "Near the nurses' station"
* include SGHIAdmissionCodeSystem#high-dependency "High-dependency bed"
* include SGHIAdmissionCodeSystem#side-room "Side room / privacy"
* include SGHIAdmissionCodeSystem#step-free "Ground floor / step-free"

ValueSet: SGHIPayerType
Id: payer-type
Title: "SGHI Payer Type"
Description: "Who settles the admission. An unresolved payer holds the bill, never the bed: payment does not block admitting."
* ^status = #active
* ^experimental = false
* include SGHIAdmissionCodeSystem#self-pay "Cash"
* include SGHIAdmissionCodeSystem#insurance "Insurance"

ValueSet: SGHIPaymentChannel
Id: payment-channel
Title: "SGHI Payment Channel"
Description: "How a cash deposit was taken."
* ^status = #active
* ^experimental = false
* include SGHIAdmissionCodeSystem#mpesa "M-PESA"
* include SGHIAdmissionCodeSystem#cash "Cash"
* include SGHIAdmissionCodeSystem#card "Card"
* include SGHIAdmissionCodeSystem#bank-transfer "Bank transfer"
* include SGHIAdmissionCodeSystem#wallet "Wallet"

ValueSet: SGHINoDepositReason
Id: no-deposit-reason
Title: "SGHI No Deposit Reason"
Description: "Why a patient was admitted without taking a deposit."
* ^status = #active
* ^experimental = false
* include SGHIAdmissionCodeSystem#no-deposit-emergency "Emergency admission, collect after stabilisation"
* include SGHIAdmissionCodeSystem#no-deposit-charity "Charity or sponsored patient"
* include SGHIAdmissionCodeSystem#no-deposit-waived "Deposit waived by an administrator"
* include SGHIAdmissionCodeSystem#no-deposit-corporate "Corporate account on file"

ValueSet: SGHIPreauthorisationStatus
Id: preauthorisation-status
Title: "SGHI Preauthorisation Status"
Description: "State of a pre-authorisation request to a payer. An admission may proceed with one still pending."
* ^status = #active
* ^experimental = false
* include SGHIAdmissionCodeSystem#preauth-draft "Draft"
* include SGHIAdmissionCodeSystem#preauth-pending "Pending"
* include SGHIAdmissionCodeSystem#preauth-approved "Approved"
* include SGHIAdmissionCodeSystem#preauth-declined "Declined"

ValueSet: SGHIPayerScheme
Id: payer-scheme
Title: "SGHI Payer Scheme"
Description: "The kind of scheme behind a cover, which decides what the cover is capped in."
* ^status = #active
* ^experimental = false
* include SGHIPayerBenefitCodeSystem#sha "Social Health Authority"
* include SGHIPayerBenefitCodeSystem#private "Private insurance"

ValueSet: SGHIBenefitPackage
Id: benefit-package
Title: "SGHI Benefit Package"
Description: "The benefit package an admission is claimed against. Not asked for an emergency SHA episode, which routes to the emergency fund instead."
* ^status = #active
* ^experimental = false
* include SGHIPayerBenefitCodeSystem#benefit-inpatient "Inpatient management"
* include SGHIPayerBenefitCodeSystem#benefit-corporate-inpatient "Corporate inpatient"

ValueSet: SGHITariffRule
Id: tariff-rule
Title: "SGHI Tariff Rule"
Description: "Whether an intervention is claimed for each night or once for the episode."
* ^status = #active
* ^experimental = false
* include SGHIPayerBenefitCodeSystem#per-night "Per night"
* include SGHIPayerBenefitCodeSystem#per-episode "Per episode"

ValueSet: SGHISHAIntervention
Id: sha-intervention
Title: "SGHI SHA Intervention"
Description: "Social Health Authority intervention codes claimable on an inpatient admission. Each carries whether it needs pre-authorisation and whether it draws on the emergency fund."
* ^status = #active
* ^experimental = false
* include SGHIPayerBenefitCodeSystem#SHA-IP-MED-01 "Medical inpatient management"
* include SGHIPayerBenefitCodeSystem#SHA-IP-HDU-02 "High dependency care"
* include SGHIPayerBenefitCodeSystem#SHA-MAT-ND-01 "Normal delivery"
* include SGHIPayerBenefitCodeSystem#SHA-MAT-CS-02 "Caesarean section"
* include SGHIPayerBenefitCodeSystem#SHA-EMC-STB-01 "Emergency stabilisation and treatment"
* include SGHIPayerBenefitCodeSystem#SHA-EMC-CRIT-02 "Emergency critical care, first 24 hours"

ValueSet: SGHIAdmissionConsentBasis
Id: admission-consent-basis
Title: "SGHI Admission Consent Basis"
Description: "On whose authority treatment proceeds. Absent means not recorded yet, which is a real and expected state on admission."
* ^status = #active
* ^experimental = false
* include SGHIAdmissionCodeSystem#consent-by-patient "Given by the patient"
* include SGHIAdmissionCodeSystem#consent-by-guardian "Given by a guardian or next of kin"
* include SGHIAdmissionCodeSystem#consent-emergency "Treated under emergency provisions"

// Apparent sex on an unidentified patient is administrative gender observed
// rather than asserted. HL7's #unknown is where 'unclear' lands; a separate
// local code would say the same thing in a system nothing else understands.
ValueSet: SGHIApparentSex
Id: apparent-sex
Title: "SGHI Apparent Sex"
Description: "Apparent sex of a patient who cannot identify themselves. Recorded as an observation of appearance, not an assertion about the person."
* ^status = #active
* ^experimental = false
* include $administrative-gender#female "Female"
* include $administrative-gender#male "Male"
* include $administrative-gender#unknown "Unclear"

ValueSet: SGHIApparentAgeBand
Id: apparent-age-band
Title: "SGHI Apparent Age Band"
Description: "Estimated age band of a patient who cannot identify themselves."
* ^status = #active
* ^experimental = false
* include SGHIAdmissionCodeSystem#age-infant "Infant"
* include SGHIAdmissionCodeSystem#age-child "Child"
* include SGHIAdmissionCodeSystem#age-teenager "Teenager"
* include SGHIAdmissionCodeSystem#age-young-adult "Young adult"
* include SGHIAdmissionCodeSystem#age-middle-aged "Middle aged"
* include SGHIAdmissionCodeSystem#age-elderly "Elderly"

ValueSet: SGHIArrivalMode
Id: arrival-mode
Title: "SGHI Arrival Mode"
Description: "How the patient physically arrived, as recorded on the emergency admission screen."
* ^status = #active
* ^experimental = false
* include SGHIAdmissionCodeSystem#arrived-ambulance "By ambulance"
* include SGHIAdmissionCodeSystem#arrived-carried "Carried in"
* include SGHIAdmissionCodeSystem#arrived-walked-collapsed "Walked in collapsed"

ValueSet: SGHIArrivalSource
Id: arrival-source
Title: "SGHI Arrival Source"
Description: "Who brought an unidentified patient in. Wider than SGHIArrivalMode, which records the manner of arrival rather than the party responsible for it."
* ^status = #active
* ^experimental = false
* include SGHIAdmissionCodeSystem#arrived-ambulance "Ambulance"
* include SGHIAdmissionCodeSystem#arrived-police "Police"
* include SGHIAdmissionCodeSystem#arrived-bystanders "Brought by bystanders"
* include SGHIAdmissionCodeSystem#arrived-walked-collapsed "Walked in and collapsed"

ValueSet: SGHIEmergencyAdmissionDeferredItem
Id: emergency-admission-deferred-item
Title: "SGHI Emergency Admission Deferred Item"
Description: "What an emergency admission leaves outstanding. The stay carries these until someone closes them."
* ^status = #active
* ^experimental = false
* include SGHIAdmissionCodeSystem#deferred-identity "Identity and health ID"
* include SGHIAdmissionCodeSystem#deferred-next-of-kin "Next of kin and contact details"
* include SGHIAdmissionCodeSystem#deferred-billing "Billing type, payer and eligibility"
* include SGHIAdmissionCodeSystem#deferred-diagnosis "Full admitting diagnosis and care plan"

ValueSet: SGHIBreakGlassReason
Id: break-glass-reason
Title: "SGHI Break-Glass Reason"
Description: "Why a clinician opened a record they are not assigned to. Recorded, not prevented."
* ^status = #active
* ^experimental = false
* include SGHIAdmissionCodeSystem#break-glass-unconscious "Patient cannot consent"
* include SGHIAdmissionCodeSystem#break-glass-life-threat "Immediate threat to life"
* include SGHIAdmissionCodeSystem#break-glass-covering "Covering another clinician"
* include SGHIAdmissionCodeSystem#break-glass-identity "Confirming identity"

ValueSet: SGHIConsultationDisposition
Id: consultation-disposition
Title: "SGHI Consultation Disposition"
Description: "What a consultation decided to do with the patient."
* ^status = #active
* ^experimental = false
* include SGHIAdmissionCodeSystem#refer "Refer"
* include SGHIAdmissionCodeSystem#admit "Admit"

ValueSet: SGHIAdmissionTiming
Id: admission-timing
Title: "SGHI Admission Timing"
Description: "Whether an admission raised from a consultation happens now or is booked for a date."
* ^status = #active
* ^experimental = false
* include SGHIAdmissionCodeSystem#admit-now "Admit now"
* include SGHIAdmissionCodeSystem#book-for-date "Book for a date"

ValueSet: SGHICancelAdmissionReason
Id: cancel-admission-reason
Title: "SGHI Cancel Admission Reason"
Description: "Why an admission request was cancelled."
* ^status = #active
* ^experimental = false
* include SGHIAdmissionCodeSystem#admitted-in-error "Admitted in error"
* include SGHIAdmissionCodeSystem#duplicate-admission "Duplicate admission"
* include SGHIAdmissionCodeSystem#patient-declined "Patient declined admission"
* include SGHIAdmissionCodeSystem#treated-and-sent-home "Treated and sent home instead"
* include SGHIAdmissionCodeSystem#moved-to-another-facility "Moved to another facility"
* include SGHIAdmissionCodeSystem#ward-cannot-receive "Ward cannot receive the patient"

// The ours-to-fix property on each code marks the outcomes that were within the
// hospital's control, which are the ones worth counting.
ValueSet: SGHIAdmissionNoLongerNeededReason
Id: admission-no-longer-needed-reason
Title: "SGHI Admission No Longer Needed Reason"
Description: "Why a queued admission is no longer needed. Reasons carrying ours-to-fix = true are the ones the hospital could have prevented."
* ^status = #active
* ^experimental = false
* include SGHIAdmissionCodeSystem#improved "Treated and improved"
* include SGHIAdmissionCodeSystem#referred-out "Referred out instead"
* include SGHIAdmissionCodeSystem#went-elsewhere "Went to another hospital"
* include SGHIAdmissionCodeSystem#refused "Patient refused admission"
* include SGHIAdmissionCodeSystem#died-waiting "Died while waiting"
* include SGHIAdmissionCodeSystem#duplicate-admission "Duplicate or raised in error"

ValueSet: SGHIElectiveDeferralReason
Id: elective-deferral-reason
Title: "SGHI Elective Deferral Reason"
Description: "Why a booked elective admission was deferred."
* ^status = #active
* ^experimental = false
* include SGHIAdmissionCodeSystem#defer-no-bed "No bed available"
* include SGHIAdmissionCodeSystem#defer-patient-not-ready "Patient not ready"
* include SGHIAdmissionCodeSystem#defer-theatre "Surgeon or theatre unavailable"
* include SGHIAdmissionCodeSystem#defer-payer "Payer approval outstanding"
* include SGHIAdmissionCodeSystem#defer-patient-requested "Patient requested"

ValueSet: SGHIWaitingPatientLocation
Id: waiting-patient-location
Title: "SGHI Waiting Patient Location"
Description: "Where a patient waiting for a bed physically is, so the ward knows where to fetch them from."
* ^status = #active
* ^experimental = false
* include SGHIAdmissionCodeSystem#at-emergency-department "Emergency department"
* include SGHIAdmissionCodeSystem#at-outpatient "Outpatient area"
* include SGHIAdmissionCodeSystem#at-corridor-trolley "Corridor trolley"
* include SGHIAdmissionCodeSystem#at-another-ward "Another ward"
* include SGHIAdmissionCodeSystem#at-home "At home"
* include SGHIAdmissionCodeSystem#at-theatre "In theatre"
* include SGHIAdmissionCodeSystem#at-another-facility "Another facility"

ValueSet: SGHIAdmissionReadiness
Id: admission-readiness
Title: "SGHI Admission Readiness"
Description: "Whether a queued admission request is ready to proceed."
* ^status = #active
* ^experimental = false
* include SGHIAdmissionCodeSystem#ready "Ready"
* include SGHIAdmissionCodeSystem#needs-attention "Needs attention"
* include SGHIAdmissionCodeSystem#not-ready "Not ready"

// The six declared states. The lists add tabs for 'needs bed' and 'waiting
// admission', which are views over #admitted with no bed and over #requested
// respectively, not states in their own right.
ValueSet: SGHIAdmissionState
Id: admission-state
Title: "SGHI Admission State"
Description: "Lifecycle of an admission, from the request through to discharge or cancellation."
* ^status = #active
* ^experimental = false
* include SGHIAdmissionCodeSystem#requested "Waiting admission"
* include SGHIAdmissionCodeSystem#scheduled "Scheduled"
* include SGHIAdmissionCodeSystem#admitted "Admitted"
* include SGHIAdmissionCodeSystem#discharge-pending "Discharge pending"
* include SGHIAdmissionCodeSystem#discharged "Discharged"
* include SGHIAdmissionCodeSystem#cancelled "Cancelled"

// ---------------------------------------------------------------------------
// Discharge clearances
//
// A discharge collects three sign-offs, each from a different person: the
// clinician says the patient is well enough to leave, the nurse says the patient
// and their family were told what to watch for, and the cashier says the account
// was dealt with. Seven value sets, one per coded answer, because each answers a
// question of its own and a single list would let one answer stand for another.
//
// None of these gates a discharge. A clearance can be signed off without its
// check against a stated reason, because a hard gate fails at two in the morning
// when the cashier has gone home and gets worked around, which leaves no trace.
// ---------------------------------------------------------------------------

ValueSet: SGHIDischargeOralIntake
Id: discharge-oral-intake
Title: "SGHI Discharge Oral Intake"
Description: "Whether the patient is managing food and drink well enough to leave. Recorded on the clinical readiness clearance."
* ^status = #active
* ^experimental = false
* include SGHIAdmissionCodeSystem#eating-drinking-normally "Eating and drinking normally"
* include SGHIAdmissionCodeSystem#fluids-only "Taking fluids only"
* include SGHIAdmissionCodeSystem#small-amounts "Taking small amounts"
* include SGHIAdmissionCodeSystem#not-tolerating-oral-intake "Not tolerating oral intake"

ValueSet: SGHIDischargeMobility
Id: discharge-mobility
Title: "SGHI Discharge Mobility"
Description: "How much help the patient needs to move at discharge, which decides what has to be waiting for them at home. Recorded on the clinical readiness clearance."
* ^status = #active
* ^experimental = false
* include SGHIAdmissionCodeSystem#independent "Independent"
* include SGHIAdmissionCodeSystem#walking-aid "Walking with a stick or frame"
* include SGHIAdmissionCodeSystem#needs-one-assist "Needs one person to assist"
* include SGHIAdmissionCodeSystem#needs-two-assist "Needs two people to assist"
* include SGHIAdmissionCodeSystem#bed-bound "Bed bound"

ValueSet: SGHIDischargePainControl
Id: discharge-pain-control
Title: "SGHI Discharge Pain Control"
Description: "Whether pain is held well enough on what the patient can take at home. Recorded on the clinical readiness clearance."
* ^status = #active
* ^experimental = false
* include SGHIAdmissionCodeSystem#pain-free "Pain free"
* include SGHIAdmissionCodeSystem#controlled-on-oral-analgesia "Controlled on oral analgesia"
* include SGHIAdmissionCodeSystem#controlled-needs-review "Controlled but needs review"
* include SGHIAdmissionCodeSystem#not-controlled "Not controlled"

ValueSet: SGHIConditionAtDischarge
Id: condition-at-discharge
Title: "SGHI Condition At Discharge"
Description: "The state the patient is leaving in, against the state they arrived in. Recorded on the clinical readiness clearance. The codes carry a condition- prefix because #improved already names a reason an admission was no longer needed, and the two are different axes."
* ^status = #active
* ^experimental = false
* include SGHIAdmissionCodeSystem#condition-recovered "Recovered"
* include SGHIAdmissionCodeSystem#condition-improved "Improved"
* include SGHIAdmissionCodeSystem#condition-unchanged "Unchanged"
* include SGHIAdmissionCodeSystem#condition-worse "Worse"
* include SGHIAdmissionCodeSystem#condition-palliative "Palliative"

// Wider than SGHIContactRelationship, which is built on HL7 v2-0131 and names
// only five relationships. The discharge briefing routinely goes to a parent, a
// child, a sibling or a neighbour, and v2-0131 has no concept for the last of
// those at all.
ValueSet: SGHINextOfKinRelationship
Id: next-of-kin-relationship
Title: "SGHI Next Of Kin Relationship"
Description: "What the person briefed alongside the patient is to them. Recorded on the patient education clearance."
* ^status = #active
* ^experimental = false
* include SGHIAdmissionCodeSystem#spouse "Spouse"
* include SGHIAdmissionCodeSystem#parent "Parent"
* include SGHIAdmissionCodeSystem#child "Child"
* include SGHIAdmissionCodeSystem#sibling "Sibling"
* include SGHIAdmissionCodeSystem#guardian "Guardian"
* include SGHIAdmissionCodeSystem#other-relative "Other relative"
* include SGHIAdmissionCodeSystem#neighbour-or-friend "Neighbour or friend"

ValueSet: SGHIDischargeEducationRecipient
Id: discharge-education-recipient
Title: "SGHI Discharge Education Recipient"
Description: "Who had the take-home medicines explained to them. Recorded on the patient education clearance. Includes a code for nobody having been told, because that is a fact worth stating rather than a blank to be read as an oversight."
* ^status = #active
* ^experimental = false
* include SGHIAdmissionCodeSystem#explained-to-patient "Explained to the patient"
* include SGHIAdmissionCodeSystem#explained-to-next-of-kin "Explained to the next of kin"
* include SGHIAdmissionCodeSystem#explained-to-both "Explained to both"
* include SGHIAdmissionCodeSystem#not-explained "Not explained"

ValueSet: SGHIAccountSettlement
Id: discharge-account-settlement
Title: "SGHI Discharge Account Settlement"
Description: "How the account was dealt with before the patient left. Recorded on the financial clearance. Carries no balance: the figure belongs to billing, and one restated here would be signed against as though this were the authority for it."
* ^status = #active
* ^experimental = false
* include SGHIAdmissionCodeSystem#settled-in-full "Settled in full"
* include SGHIAdmissionCodeSystem#scheme-covered "Covered by insurance or scheme"
* include SGHIAdmissionCodeSystem#part-payment-balance-on-account "Part payment taken, balance on account"
* include SGHIAdmissionCodeSystem#waiver-approved "Waiver approved"
* include SGHIAdmissionCodeSystem#referred-to-credit-control "Referred to credit control"

// How the stay ended, and where the patient went. Two questions, so two value
// sets: a transfer out and a death are both exits, and neither says anything
// about a destination the patient walked to.
ValueSet: SGHIDischargeType
Id: discharge-type
Title: "SGHI Discharge Type"
Description: "How an admission ended. Decides what the exit requires: a transfer out names the receiving facility, leaving against advice takes a signed form, an absconsion records the last sighting instead of a signature, and a death defers to the record of death."
* ^status = #active
* ^experimental = false
* include SGHIAdmissionCodeSystem#normal "Normal"
* include SGHIAdmissionCodeSystem#transfer-out "Transfer out"
* include SGHIAdmissionCodeSystem#left-against-medical-advice "Left against medical advice"
* include SGHIAdmissionCodeSystem#absconded "Absconded"
* include SGHIAdmissionCodeSystem#deceased "Deceased"

// HL7 covers three of the five. Home with community follow-up and outpatient
// clinic follow-up have no discharge-disposition concept, so they come from the
// SGHI system alongside them.
ValueSet: SGHIDischargeDisposition
Id: discharge-disposition
Title: "SGHI Discharge Disposition"
Description: "Where the patient is going. Asked only of a living patient leaving with an agreed plan: a death has no disposition, and a transfer out names the receiving facility instead."
* ^status = #active
* ^experimental = false
* include $discharge-disposition#home "Home"
* include SGHIAdmissionCodeSystem#home-with-community-follow-up "Home with community follow-up"
* include SGHIAdmissionCodeSystem#outpatient-clinic-follow-up "Outpatient clinic follow-up"
* include $discharge-disposition#rehab "Rehabilitation"
* include $discharge-disposition#snf "Nursing home or care facility"

// One list for all three clearances, because the reasons a check cannot be
// signed are the same whichever check it is: the cashier being off duty stops a
// financial clearance, and a patient who will not wait stops all three.
ValueSet: SGHIClearanceOverrideReason
Id: clearance-override-reason
Title: "SGHI Clearance Override Reason"
Description: "Why a discharge clearance was signed off without its check. A hard gate fails at two in the morning when the cashier has gone home, and somebody who cannot proceed goes round the system instead, which leaves no trace. This is what makes the gap reviewable: the reason is recorded against a named person, and a later signature does not remove it."
* ^status = #active
* ^experimental = false
* include SGHIAdmissionCodeSystem#override-cashier-off-duty "Cashier off duty, out of hours"
* include SGHIAdmissionCodeSystem#override-leaving-against-advice "Patient leaving against advice and will not wait"
* include SGHIAdmissionCodeSystem#override-transfer-time-critical "Transfer is time-critical"
* include SGHIAdmissionCodeSystem#override-signer-unavailable "Signing person unavailable and patient must not be held"
* include SGHIAdmissionCodeSystem#override-system-unavailable "System or record unavailable at the time"
* include SGHIAdmissionCodeSystem#override-other "Other"

// ---------------------------------------------------------------------------
// Kenya Expanded Programme on Immunisation (KEPI)
// ---------------------------------------------------------------------------

ValueSet: SGHIKEPIAntigen
Id: kepi-antigen
Title: "SGHI KEPI Antigen"
Description: "Antigens recorded on the MOH 510 Immunisation Permanent Register. Bound by Immunization.vaccineCode on resources extracted from the register."
* ^status = #active
* include SGHIKEPIAntigenCodeSystem#bcg "BCG"
* include SGHIKEPIAntigenCodeSystem#bopv "Bivalent oral poliovirus vaccine"
* include SGHIKEPIAntigenCodeSystem#ipv "Inactivated poliovirus vaccine"
* include SGHIKEPIAntigenCodeSystem#penta "DTP-HepB-Hib (pentavalent) vaccine"
* include SGHIKEPIAntigenCodeSystem#pcv10 "Pneumococcal conjugate vaccine (PCV10)"
* include SGHIKEPIAntigenCodeSystem#rota "Rotavirus vaccine"
* include SGHIKEPIAntigenCodeSystem#mr "Measles-rubella vaccine"
* include SGHIKEPIAntigenCodeSystem#yf "Yellow fever vaccine"

ValueSet: SGHIKEPISupplement
Id: kepi-supplement
Title: "SGHI KEPI Supplement"
Description: "Micronutrient supplements recorded alongside immunisation on the MOH 510 register. Bound by MedicationAdministration.medication.concept on resources extracted from section Z."
* ^status = #active
* include SGHIKEPISupplementCodeSystem#vitamin-a-100000 "Vitamin A 100,000 IU"
* include SGHIKEPISupplementCodeSystem#vitamin-a-200000 "Vitamin A 200,000 IU"

// ─────────────────────────────────────────────────────────────────────────────
// Medication administration
//
// What happened to a dose at the drug round, and if it was not given, why.
// Where a concept already had a home it is bound there rather than recoded:
//   dose status          -> HL7 medication-admin-status, a required binding
//   asleep / away / none -> HL7 reason-medication-not-given
//   everything else      -> SGHIMedicationAdministrationCodeSystem
//
// SGHIMedicationAdministrationOutcome is a screen concept, not a status. It
// cannot bind MedicationAdministration.status, whose binding is required, and it
// would not fit if it could: Refused and Omitted are both #not-done there. The
// reason sets below are disjoint precisely so that the statusReason code tells
// those two apart. Bind them at MedicationAdministration.statusReason, whose
// binding is example strength and so free to be replaced.
// ─────────────────────────────────────────────────────────────────────────────

ValueSet: SGHIMedicationAdministrationOutcome
Id: medication-administration-outcome
Title: "SGHI Medication Administration Outcome"
Description: "What happened to a medication dose at the drug round. Recorded alongside MedicationAdministration.status rather than in it: status is a required binding on which Refused and Omitted are both #not-done."
* ^status = #active
* ^experimental = false
* include SGHIMedicationAdministrationCodeSystem#given "Given"
* include SGHIMedicationAdministrationCodeSystem#held "Held"
* include SGHIMedicationAdministrationCodeSystem#refused "Refused"
* include SGHIMedicationAdministrationCodeSystem#omitted "Omitted"

ValueSet: SGHIMedicationHeldReason
Id: medication-held-reason
Title: "SGHI Medication Held Reason"
Description: "Why a dose was held. A held dose is withheld on clinical grounds and expected to be given later, which is what separates it from an omitted one."
* ^status = #active
* ^experimental = false
* include SGHIMedicationAdministrationCodeSystem#nil-by-mouth "Nil by mouth"
* include SGHIMedicationAdministrationCodeSystem#vomiting "Vomiting"
* include SGHIMedicationAdministrationCodeSystem#observations-out-of-range "Observations out of range"
* include SGHIMedicationAdministrationCodeSystem#awaiting-result "Awaiting a result"
* include SGHIMedicationAdministrationCodeSystem#prescriber-asked-to-hold "Prescriber asked to hold"

ValueSet: SGHIMedicationRefusedReason
Id: medication-refused-reason
Title: "SGHI Medication Refused Reason"
Description: "Why a patient did not take a dose. The patient's own decision, as distinct from a clinical decision to hold and from a dose that simply passed."
* ^status = #active
* ^experimental = false
* include SGHIMedicationAdministrationCodeSystem#patient-refused "Patient refused"
* include SGHIMedicationAdministrationCodeSystem#unable-to-swallow "Unable to swallow"
* include SGHIMedicationAdministrationCodeSystem#adverse-effect-reported "Adverse effect reported by patient"

// Three of the four are HL7's own. #a is 'No reason known', which is exactly a
// dose missed with nothing recorded at the time — an absence worth recording as
// itself rather than left blank.
ValueSet: SGHIMedicationOmittedReason
Id: medication-omitted-reason
Title: "SGHI Medication Omitted Reason"
Description: "Why a dose passed without being given. A reason carrying supply-failure = true is a stock-out rather than a clinical decision, and is escalated to pharmacy."
* ^status = #active
* ^experimental = false
* include $reason-medication-not-given#c "Asleep"
* include $reason-medication-not-given#b "Patient off the ward"
* include SGHIMedicationAdministrationCodeSystem#drug-not-available "Drug not available"
* include $reason-medication-not-given#a "Dose missed, no reason recorded at the time"

// The union of the three reason sets, for binding statusReason in one place. The
// three narrower sets stay authoritative for which outcome a reason belongs to;
// this set deliberately says nothing about that.
ValueSet: SGHIMedicationNotGivenReason
Id: medication-not-given-reason
Title: "SGHI Medication Not Given Reason"
Description: "Every reason a dose was not given, across held, refused and omitted. Bound at MedicationAdministration.statusReason, where the HL7 binding is example strength. Which outcome a reason implies comes from the narrower set it belongs to."
* ^status = #active
* ^experimental = false
* include codes from valueset SGHIMedicationHeldReason
* include codes from valueset SGHIMedicationRefusedReason
* include codes from valueset SGHIMedicationOmittedReason

// ─────────────────────────────────────────────────────────────────────────────
// Specimen collection
//
// The three things recorded when a sample is taken: what was drawn, what it went
// into, and how the draw went. Where a concept already had a home it is bound
// there rather than recoded:
//   sample type          -> HL7 v2-0487, except #swab
//   haemolysed sample    -> HL7 v2-0493 #HEM, what Specimen.condition binds to
//   container, draw      -> SGHISpecimenCollectionCodeSystem
//
// Note this is a different axis from the existing SGHISpecimenTypeVs, which
// enumerates how a tissue sample was obtained — core needle biopsy, excision,
// fine needle aspiration — and is bound at Specimen.processing.method. That set
// names the procedure; this one names the material it yielded.
// ─────────────────────────────────────────────────────────────────────────────

ValueSet: SGHISampleType
Id: sample-type
Title: "SGHI Sample Type"
Description: "The material a sample consists of, as chosen when collecting it. Distinct from SGHISpecimenTypeVs, which names the procedure that obtained the sample rather than the material."
* ^status = #active
* ^experimental = false
* include $v2-0487#BLD "Whole blood"
* include $v2-0487#SER "Serum"
* include $v2-0487#PLAS "Plasma"
* include $v2-0487#URINM "Urine (mid-stream)"
* include $v2-0487#CSF "Cerebrospinal fluid"
* include $v2-0487#TISS "Tissue"
* include SGHISpecimenCollectionCodeSystem#swab "Swab"
* include $v2-0487#SPT "Sputum"
* include $v2-0487#STL "Stool"

// The order below is the order the codes are declared in, not the order a screen
// shows them in: the collection screen lifts the container the ordered test
// requires to the top of the list and shows the rest under it. That ordering
// comes from the test, so it is a property of the test rather than of this set.
ValueSet: SGHISpecimenContainer
Id: specimen-container
Title: "SGHI Specimen Container"
Description: "The container a sample is collected into. The collection screen offers the container the ordered test requires first, then the rest of this set."
* ^status = #active
* ^experimental = false
* include SGHISpecimenCollectionCodeSystem#edta-tube "EDTA tube (purple top)"
* include SGHISpecimenCollectionCodeSystem#sst-gel-tube "SST gel tube (gold top)"
* include SGHISpecimenCollectionCodeSystem#plain-tube "Plain tube (red top)"
* include SGHISpecimenCollectionCodeSystem#citrate-tube "Sodium citrate tube (blue top)"
* include SGHISpecimenCollectionCodeSystem#fluoride-oxalate-tube "Fluoride oxalate tube (grey top)"
* include SGHISpecimenCollectionCodeSystem#lithium-heparin-tube "Lithium heparin tube (green top)"
* include SGHISpecimenCollectionCodeSystem#blood-culture-aerobic "Blood culture bottle (aerobic)"
* include SGHISpecimenCollectionCodeSystem#blood-culture-anaerobic "Blood culture bottle (anaerobic)"
* include SGHISpecimenCollectionCodeSystem#sterile-universal-container "Sterile universal container"
* include SGHISpecimenCollectionCodeSystem#formalin-pot "Formalin pot (10% neutral buffered)"
* include SGHISpecimenCollectionCodeSystem#cytology-fixative-pot "Cytology fixative pot"
* include SGHISpecimenCollectionCodeSystem#amies-swab "Transport swab (Amies medium)"

// Haemolysis is the one of the four HL7 already has a concept for, and it is the
// concept Specimen.condition is bound to, so it is bound here rather than
// recoded. The other three describe the draw, not the state of the sample, and
// v2-0493 has nothing for them.
ValueSet: SGHISpecimenConditionAtCollection
Id: specimen-condition-at-collection
Title: "SGHI Specimen Condition At Collection"
Description: "How the draw went, recorded by whoever took the sample. A difficult or short draw does not reject the sample; it travels with it so the laboratory can read the result in light of it."
* ^status = #active
* ^experimental = false
* include SGHISpecimenCollectionCodeSystem#clean-draw "Clean draw"
* include SGHISpecimenCollectionCodeSystem#difficult-draw "Difficult draw"
* include SGHISpecimenCollectionCodeSystem#short-draw "Short draw, under volume"
* include $v2-0493#HEM "Visibly haemolysed"

// ═════════════════════════════════════════════════════════════════════════════
// Inpatient clinical documentation
//
// Sliced by the thing a consumer actually binds to. The two whole-system sets
// classify documents and name the locally-minted concepts; the four instrument
// sets say which answers belong to which scored instrument, which is what
// validates an extracted Observation.component; the five pick-list sets are
// directly usable as `answerValueSet` on their questionnaire items, because
// unlike the scored answers they carry no ordinal weight to lose.
// ═════════════════════════════════════════════════════════════════════════════

ValueSet: SGHIInpatientDocumentType
Id: inpatient-document-type
Title: "SGHI Inpatient Document Type"
Description: "The kind of note or assessment written against an inpatient stay. Binds Composition.type and DocumentReference.type for a filed inpatient note."
* ^status = #active
* ^experimental = false
* include codes from system SGHIInpatientDocumentTypeCodeSystem

ValueSet: SGHIInpatientClinicalConcept
Id: inpatient-clinical-concept
Title: "SGHI Inpatient Clinical Concept"
Description: "The concepts the inpatient forms record that LOINC has no code for. Used as Observation.code, RiskAssessment.code, Task.code, ServiceRequest.code and CarePlan.category on resources extracted from those forms."
* ^status = #active
* ^experimental = false
* include codes from system SGHIInpatientClinicalConceptCodeSystem

ValueSet: SGHIBradenScaleAnswer
Id: braden-scale-answer
Title: "SGHI Braden Scale Answer"
Description: "The answers to the six Braden pressure ulcer scale items. The extracted Observation carries the total as its value and these as component values, coded against the LOINC Braden panel."
* ^status = #active
* ^experimental = false
* include SGHIClinicalScoreCodeSystem#braden-sensory-1 "Completely limited"
* include SGHIClinicalScoreCodeSystem#braden-sensory-2 "Very limited"
* include SGHIClinicalScoreCodeSystem#braden-sensory-3 "Slightly limited"
* include SGHIClinicalScoreCodeSystem#braden-sensory-4 "No impairment"
* include SGHIClinicalScoreCodeSystem#braden-moisture-1 "Constantly moist"
* include SGHIClinicalScoreCodeSystem#braden-moisture-2 "Often moist"
* include SGHIClinicalScoreCodeSystem#braden-moisture-3 "Occasionally moist"
* include SGHIClinicalScoreCodeSystem#braden-moisture-4 "Rarely moist"
* include SGHIClinicalScoreCodeSystem#braden-activity-1 "Bedfast"
* include SGHIClinicalScoreCodeSystem#braden-activity-2 "Chairfast"
* include SGHIClinicalScoreCodeSystem#braden-activity-3 "Walks occasionally"
* include SGHIClinicalScoreCodeSystem#braden-activity-4 "Walks frequently"
* include SGHIClinicalScoreCodeSystem#braden-mobility-1 "Completely immobile"
* include SGHIClinicalScoreCodeSystem#braden-mobility-2 "Very limited"
* include SGHIClinicalScoreCodeSystem#braden-mobility-3 "Slightly limited"
* include SGHIClinicalScoreCodeSystem#braden-mobility-4 "No limitation"
* include SGHIClinicalScoreCodeSystem#braden-nutrition-1 "Very poor"
* include SGHIClinicalScoreCodeSystem#braden-nutrition-2 "Probably inadequate"
* include SGHIClinicalScoreCodeSystem#braden-nutrition-3 "Adequate"
* include SGHIClinicalScoreCodeSystem#braden-nutrition-4 "Excellent"
* include SGHIClinicalScoreCodeSystem#braden-friction-1 "Problem"
* include SGHIClinicalScoreCodeSystem#braden-friction-2 "Potential problem"
* include SGHIClinicalScoreCodeSystem#braden-friction-3 "No apparent problem"

ValueSet: SGHIMorseFallScaleAnswer
Id: morse-fall-scale-answer
Title: "SGHI Morse Fall Scale Answer"
Description: "The answers to the six falls risk items. The items are the Morse Fall Scale verbatim, so the extracted Observation is coded against the LOINC Morse panel and these are its component values."
* ^status = #active
* ^experimental = false
* include SGHIClinicalScoreCodeSystem#falls-history-0 "No fall in the last 12 months"
* include SGHIClinicalScoreCodeSystem#falls-history-25 "Fall in the last 12 months"
* include SGHIClinicalScoreCodeSystem#falls-diagnoses-0 "One active diagnosis or none"
* include SGHIClinicalScoreCodeSystem#falls-diagnoses-15 "More than one active diagnosis"
* include SGHIClinicalScoreCodeSystem#falls-aid-0 "No walking aid, or bedrest"
* include SGHIClinicalScoreCodeSystem#falls-aid-15 "Crutch, stick or walker"
* include SGHIClinicalScoreCodeSystem#falls-aid-30 "Holds onto furniture"
* include SGHIClinicalScoreCodeSystem#falls-iv-0 "No intravenous access"
* include SGHIClinicalScoreCodeSystem#falls-iv-20 "Intravenous access in place"
* include SGHIClinicalScoreCodeSystem#falls-gait-0 "Normal gait, or bedrest"
* include SGHIClinicalScoreCodeSystem#falls-gait-10 "Weak gait"
* include SGHIClinicalScoreCodeSystem#falls-gait-20 "Impaired gait"
* include SGHIClinicalScoreCodeSystem#falls-mental-0 "Oriented to own ability"
* include SGHIClinicalScoreCodeSystem#falls-mental-15 "Overestimates or forgets limits"

ValueSet: SGHIMalnutritionScreeningAnswer
Id: malnutrition-screening-answer
Title: "SGHI Malnutrition Screening (MUST) Answer"
Description: "The answers to the three MUST steps: body mass index, unplanned weight loss and acute disease effect. The extracted Observation carries the total, banded low, medium or high per BAPEN."
* ^status = #active
* ^experimental = false
* include SGHIClinicalScoreCodeSystem#must-bmi-0 "BMI 20 or over"
* include SGHIClinicalScoreCodeSystem#must-bmi-1 "BMI 18.5 to 20"
* include SGHIClinicalScoreCodeSystem#must-bmi-2 "BMI under 18.5"
* include SGHIClinicalScoreCodeSystem#must-loss-0 "Weight loss under 5%"
* include SGHIClinicalScoreCodeSystem#must-loss-1 "Weight loss 5 to 10%"
* include SGHIClinicalScoreCodeSystem#must-loss-2 "Weight loss over 10%"
* include SGHIClinicalScoreCodeSystem#must-acute-0 "Eating normally"
* include SGHIClinicalScoreCodeSystem#must-acute-2 "No nutritional intake for 5 days or more"

ValueSet: SGHIGlasgowComaScaleAnswer
Id: glasgow-coma-scale-answer
Title: "SGHI Glasgow Coma Scale Answer"
Description: "The answers to the three Glasgow Coma Scale components. The extracted Observation carries the total against LOINC 9269-2 and these as component values against the eye, verbal and motor codes."
* ^status = #active
* ^experimental = false
* include SGHIClinicalScoreCodeSystem#gcs-eye-1 "No eye opening"
* include SGHIClinicalScoreCodeSystem#gcs-eye-2 "Eye opening to pressure"
* include SGHIClinicalScoreCodeSystem#gcs-eye-3 "Eye opening to sound"
* include SGHIClinicalScoreCodeSystem#gcs-eye-4 "Spontaneous eye opening"
* include SGHIClinicalScoreCodeSystem#gcs-verbal-1 "No verbal response"
* include SGHIClinicalScoreCodeSystem#gcs-verbal-2 "Sounds"
* include SGHIClinicalScoreCodeSystem#gcs-verbal-3 "Words"
* include SGHIClinicalScoreCodeSystem#gcs-verbal-4 "Confused"
* include SGHIClinicalScoreCodeSystem#gcs-verbal-5 "Oriented"
* include SGHIClinicalScoreCodeSystem#gcs-motor-1 "No motor response"
* include SGHIClinicalScoreCodeSystem#gcs-motor-2 "Extension"
* include SGHIClinicalScoreCodeSystem#gcs-motor-3 "Abnormal flexion"
* include SGHIClinicalScoreCodeSystem#gcs-motor-4 "Normal flexion"
* include SGHIClinicalScoreCodeSystem#gcs-motor-5 "Localising"
* include SGHIClinicalScoreCodeSystem#gcs-motor-6 "Obeys commands"

ValueSet: SGHIASAPhysicalStatus
Id: asa-physical-status
Title: "SGHI ASA Physical Status"
Description: "The American Society of Anesthesiologists physical status grade recorded on a pre-operative assessment. Extracted as an Observation against LOINC 97816-3."
* ^status = #active
* ^experimental = false
* include SGHIInpatientAssessmentAnswerCodeSystem#asa-i "I — healthy"
* include SGHIInpatientAssessmentAnswerCodeSystem#asa-ii "II — mild systemic disease"
* include SGHIInpatientAssessmentAnswerCodeSystem#asa-iii "III — severe systemic disease"
* include SGHIInpatientAssessmentAnswerCodeSystem#asa-iv "IV — life-threatening disease"
* include SGHIInpatientAssessmentAnswerCodeSystem#asa-v "V — moribund"

ValueSet: SGHIOxygenSupport
Id: oxygen-support
Title: "SGHI Oxygen Support"
Description: "How supplemental oxygen or ventilatory support is being delivered, from room air through to invasive ventilation. Extracted as an Observation against LOINC 107117-4."
* ^status = #active
* ^experimental = false
* include SGHIInpatientAssessmentAnswerCodeSystem#oxygen-room-air "Room air"
* include SGHIInpatientAssessmentAnswerCodeSystem#oxygen-nasal-cannula "Nasal cannula"
* include SGHIInpatientAssessmentAnswerCodeSystem#oxygen-face-mask "Face mask"
* include SGHIInpatientAssessmentAnswerCodeSystem#oxygen-high-flow-nasal "High-flow nasal oxygen"
* include SGHIInpatientAssessmentAnswerCodeSystem#oxygen-non-invasive-ventilation "Non-invasive ventilation"
* include SGHIInpatientAssessmentAnswerCodeSystem#oxygen-invasive-ventilation "Invasive ventilation"

ValueSet: SGHIImmunisationStatus
Id: immunisation-status
Title: "SGHI Immunisation Status"
Description: "Immunisation status as reported by the carer on a paediatric admission. Extracted as an Observation against LOINC 11370-4, which is explicitly the reported status rather than a dose given."
* ^status = #active
* ^experimental = false
* include SGHIInpatientAssessmentAnswerCodeSystem#immunisation-up-to-date "Up to date"
* include SGHIInpatientAssessmentAnswerCodeSystem#immunisation-partial "Partially immunised"
* include SGHIInpatientAssessmentAnswerCodeSystem#immunisation-none "Not immunised"
* include SGHIInpatientAssessmentAnswerCodeSystem#immunisation-unknown "Not known"

ValueSet: SGHISelfHarmRisk
Id: self-harm-risk
Title: "SGHI Self-Harm Risk"
Description: "The risk of self-harm identified on a mental health assessment. Extracted as a RiskAssessment whose qualitativeRisk carries both an HL7 risk-probability code and the answer itself, because four answers map onto five probability concepts and two of them share one."
* ^status = #active
* ^experimental = false
* include SGHIInpatientAssessmentAnswerCodeSystem#self-harm-none "No current risk identified"
* include SGHIInpatientAssessmentAnswerCodeSystem#self-harm-passive "Passive thoughts, no plan"
* include SGHIInpatientAssessmentAnswerCodeSystem#self-harm-active-plan "Active thoughts with a plan"
* include SGHIInpatientAssessmentAnswerCodeSystem#self-harm-recent-act "Recent act of self-harm"

ValueSet: SGHICapacityToConsent
Id: capacity-to-consent
Title: "SGHI Capacity to Consent"
Description: "Whether the patient has capacity for the decision in front of them. Fluctuating is a distinct answer, not a hedge: it says the assessment holds only for the moment it was made."
* ^status = #active
* ^experimental = false
* include SGHIInpatientAssessmentAnswerCodeSystem#capacity-has "Has capacity for this decision"
* include SGHIInpatientAssessmentAnswerCodeSystem#capacity-fluctuating "Capacity fluctuating"
* include SGHIInpatientAssessmentAnswerCodeSystem#capacity-lacks "Lacks capacity for this decision"

ValueSet: SGHIDeviceSupplyMethod
Id: device-supply-method
Title: "SGHI Device Supply Method"
Description: "How the patient receives an ordered device. Bound to the device order form's 'How it is supplied' question, and carried through to DeviceRequest.parameter.valueCodeableConcept. The parameter identifier itself, #supply-method, is deliberately not in this value set: it names the question, not an answer to it."
* ^status = #active
* ^experimental = false
* include SGHIDeviceOrderCodeSystem#dispensed-on-site "Dispensed on site"
* include SGHIDeviceOrderCodeSystem#fitted-in-clinic "Fitted in clinic"
* include SGHIDeviceOrderCodeSystem#patient-to-purchase "Patient to purchase"
* include SGHIDeviceOrderCodeSystem#loan-from-equipment-library "Loan from equipment library"

// One list for all four order categories. Bound at
// MedicationRequest.statusReason for a pharmacy item, where the HL7 binding is
// example strength and so free to be replaced. A laboratory, imaging or
// procedure item has nowhere to carry it — ServiceRequest has no statusReason,
// and ServiceRequest.reason is bound required to LOINC by SGHIServiceRequest —
// so for those the code stays in Advantage and the display travels as a note.
ValueSet: SGHIOrderCancellationReason
Id: order-cancellation-reason
Title: "SGHI Order Cancellation Reason"
Description: "Why an ordered item was stopped before it was done, as offered to the person cancelling it. #ordered-in-error is the odd one out and is deliberately included: the other four stop a request that was validly placed, while that one says it never should have been, and an audit that cannot tell those apart cannot tell a change of plan from a mistake. #parent-order-cancelled is deliberately excluded: the server sets it when a whole order is cancelled, and it is not a choice anyone makes."
* ^status = #active
* ^experimental = false
* include SGHIOrderCancellationCodeSystem#no-longer-clinically-needed "No longer clinically needed"
* include SGHIOrderCancellationCodeSystem#patient-being-discharged "Patient is being discharged"
* include SGHIOrderCancellationCodeSystem#done-elsewhere-already "Done elsewhere already"
* include SGHIOrderCancellationCodeSystem#patient-declined "Patient declined"
* include SGHIOrderCancellationCodeSystem#ordered-in-error "Ordered in error"


ValueSet: SGHITransferType
Id: transfer-type
Title: "SGHI Transfer Type"
Description: "The kind of move a patient is being made within the facility. Bound to the transfer form's 'Transfer type' question. A ward transfer gives up the sending bed, an escalation or de-escalation changes the level of care as well, and theatre and procedure are temporary moves the patient returns from with the bed held."
* ^status = #active
* ^experimental = false
* include SGHITransferCodeSystem#ward-transfer "Ward transfer"
* include SGHITransferCodeSystem#escalation "Escalation"
* include SGHITransferCodeSystem#de-escalation "De-escalation"
* include SGHITransferCodeSystem#theatre "Theatre"
* include SGHITransferCodeSystem#procedure "Procedure"

// ── Mental wellness template value sets ──────────────────────────────────────
// Drawn from MentalWellnessCodeSystem (input/fsh/codesystems/mental-wellness.fsh),
// generated from the mental-health templates; regenerate rather than hand-edit.

ValueSet: MentalWellnessInstruments
Id: mental-wellness-instruments
Title: "Mental Wellness Instruments"
Description: "The assessment instruments and clinical record types the mental wellness templates extract to."
* ^status = #active
* ^experimental = false
* include MentalWellnessCodeSystem#stage-of-change "Stage of change"
* include MentalWellnessCodeSystem#general-physical-examination "General physical examination"
* include MentalWellnessCodeSystem#clinical-history "Clinical history"
* include MentalWellnessCodeSystem#mental-state-examination "Mental state examination"
* include MentalWellnessCodeSystem#clinical-formulation "Clinical formulation"
* include MentalWellnessCodeSystem#bdi "Beck's Depression Inventory"
* include MentalWellnessCodeSystem#chemical-use-history "Chemical use history"

ValueSet: MentalWellnessAsiDomains
Id: mental-wellness-asi-domains
Title: "Mental Wellness Assessment Domains"
Description: "The seven ASI assessment domains, also used as the admission SOAP note problem areas."
* ^status = #active
* ^experimental = false
* include MentalWellnessCodeSystem#general-information "General information"
* include MentalWellnessCodeSystem#medical "Medical status"
* include MentalWellnessCodeSystem#employment "Employment and support status"
* include MentalWellnessCodeSystem#alcohol-drug "Alcohol and drug use"
* include MentalWellnessCodeSystem#legal "Legal status"
* include MentalWellnessCodeSystem#family-social "Family and social relationships"
* include MentalWellnessCodeSystem#psychiatric "Psychiatric status"

ValueSet: MentalWellnessRiskFlags
Id: mental-wellness-risk-flags
Title: "Mental Wellness Risk Flags"
Description: "Risk findings the scored instruments surface as standalone Observations, so suicidality is findable without unpacking a score."
* ^status = #active
* ^experimental = false
* include MentalWellnessCodeSystem#suicidal-thoughts-reported "Serious thoughts of suicide reported"
* include MentalWellnessCodeSystem#suicide-attempt-reported "Suicide attempt reported"
* include MentalWellnessCodeSystem#suicidal-thoughts-observed "Suicidal thoughts observed at interview"
* include MentalWellnessCodeSystem#suicidal-ideation-reported "Suicidal ideation reported"

ValueSet: MentalWellnessDocumentTypes
Id: mental-wellness-document-types
Title: "Mental Wellness Document Types"
Description: "The document and agreement types the templates produce as DocumentReferences and Compositions."
* ^status = #active
* ^experimental = false
* include MentalWellnessCodeSystem#follow-up-agreement "Follow-up agreement"
* include MentalWellnessCodeSystem#discharge-against-advice "Discharge against medical advice"
* include MentalWellnessCodeSystem#case-conference "Case conference note"
* include MentalWellnessCodeSystem#possessions-receipt "Client possessions receipt"
* include MentalWellnessCodeSystem#discharge-clearance-summary "Discharge clearance summary"
* include MentalWellnessCodeSystem#continuation-sheet "Continuation sheet"
* include MentalWellnessCodeSystem#financial-agreement "Financial agreement"
* include MentalWellnessCodeSystem#family-session "Family session note"
* include MentalWellnessCodeSystem#admission-soap-note "Admission SOAP note"
* include MentalWellnessCodeSystem#code-of-ethics "Code of ethics agreement"

ValueSet: MentalWellnessConsentCategories
Id: mental-wellness-consent-categories
Title: "Mental Wellness Consent Categories"
Description: "The categories of Consent the consent-style templates produce."
* ^status = #active
* ^experimental = false
* include MentalWellnessCodeSystem#confidentiality-exceptions "Exceptions to confidentiality"
* include MentalWellnessCodeSystem#client-rights-responsibilities "Client rights and responsibilities"
* include MentalWellnessCodeSystem#evaluation-and-treatment "Consent for evaluation and treatment"
* include MentalWellnessCodeSystem#house-rules "House rules acknowledgement"

ValueSet: MentalWellnessAdmissionConsentRules
Id: mental-wellness-admission-consent-rules
Title: "Admission Consent Rules"
Description: "The clauses of the admission consent form; a Consent provision carries one code per clause the client agreed to."
* ^status = #active
* ^experimental = false
* include MentalWellnessCodeSystem#consent.treatment "I wish to undertake the rehabilitation programme, which has been explained to me, and I ..."
* include MentalWellnessCodeSystem#consent.duration "I understand that the programme takes a minimum of ninety (90) days, and I agree to the ..."
* include MentalWellnessCodeSystem#cardinalRules.drugs "Drugs: I shall not at any time use or be found in possession of drugs, within or outside ..."
* include MentalWellnessCodeSystem#cardinalRules.sex "Sex: no sexual act of any kind is acceptable during the treatment period."
* include MentalWellnessCodeSystem#cardinalRules.violence "Violence: no verbal, physical or emotional abuse, including threats to staff or fellow ..."
* include MentalWellnessCodeSystem#cardinalRules.property "Destruction of property: I shall respect the property of clients, staff, the centre and ..."
* include MentalWellnessCodeSystem#cardinalRules.theft "Theft: no theft of property belonging to fellow clients, staff, the centre or neighbours ..."
* include MentalWellnessCodeSystem#groundNorms.permission "I shall never leave the compound without permission from staff."
* include MentalWellnessCodeSystem#groundNorms.stealing "I shall not steal or abuse."
* include MentalWellnessCodeSystem#groundNorms.hygiene "I shall maintain the required standards of hygiene."
* include MentalWellnessCodeSystem#groundNorms.abstinence "I shall abstain from all mood-altering substances."
* include MentalWellnessCodeSystem#groundNorms.programme "I shall adhere to the daily programme and all required activities, and shall not abscond ..."
* include MentalWellnessCodeSystem#groundNorms.conduct "I shall be responsible and uphold the set virtues and the moral and spiritual standards."
* include MentalWellnessCodeSystem#groundNorms.prohibitedItems "I shall not be found in possession of illegal items, for example knives, phones or drugs."

ValueSet: MentalWellnessHouseRules
Id: mental-wellness-house-rules
Title: "House Rules"
Description: "The cardinal rules and ground norms acknowledged on the house rules form (shared concepts with the admission consent)."
* ^status = #active
* ^experimental = false
* include MentalWellnessCodeSystem#cardinalRules.drugs "Drugs: I shall not at any time use or be found in possession of drugs, within or outside ..."
* include MentalWellnessCodeSystem#cardinalRules.sex "Sex: no sexual act of any kind is acceptable during the treatment period."
* include MentalWellnessCodeSystem#cardinalRules.violence "Violence: no verbal, physical or emotional abuse, including threats to staff or fellow ..."
* include MentalWellnessCodeSystem#cardinalRules.property "Destruction of property: I shall respect the property of clients, staff, the centre and ..."
* include MentalWellnessCodeSystem#cardinalRules.theft "Theft: no theft of property belonging to fellow clients, staff, the centre or neighbours ..."
* include MentalWellnessCodeSystem#groundNorms.permission "I shall never leave the compound without permission from staff."
* include MentalWellnessCodeSystem#groundNorms.stealing "I shall not steal or abuse."
* include MentalWellnessCodeSystem#groundNorms.hygiene "I shall maintain the required standards of hygiene."
* include MentalWellnessCodeSystem#groundNorms.abstinence "I shall abstain from all mood-altering substances."
* include MentalWellnessCodeSystem#groundNorms.programme "I shall adhere to the daily programme and all required activities, and shall not abscond ..."
* include MentalWellnessCodeSystem#groundNorms.conduct "I shall be responsible and uphold the set virtues and the moral and spiritual standards."
* include MentalWellnessCodeSystem#groundNorms.prohibitedItems "I shall not be found in possession of illegal items, for example knives, phones or drugs."

ValueSet: MentalWellnessClientRightsResponsibilities
Id: mental-wellness-client-rights-responsibilities
Title: "Client Rights and Responsibilities"
Description: "The rights and responsibilities clauses acknowledged on the client rights form."
* ^status = #active
* ^experimental = false
* include MentalWellnessCodeSystem#rights.informed "To be informed of your rights verbally and in writing, and to extend those same rights to ..."
* include MentalWellnessCodeSystem#rights.confidentiality "To have the confidentiality of your treatment and treatment records protected. ..."
* include MentalWellnessCodeSystem#rights.limitsOfConfidentiality "To know the limits of confidentiality and the situations in which the clinician or the ..."
* include MentalWellnessCodeSystem#rights.informedConsent "To give informed consent, acknowledging your permission for the centre to provide ..."
* include MentalWellnessCodeSystem#rights.promptTreatment "To receive prompt and adequate treatment, and to refuse treatment you do not want."
* include MentalWellnessCodeSystem#rights.medication "To be free from unnecessary or excessive medication, and to receive clear information ..."
* include MentalWellnessCodeSystem#rights.safeEnvironment "To be provided a safe environment, free from physical, sexual and emotional abuse."
* include MentalWellnessCodeSystem#rights.treatmentPlan "To receive complete and accurate information about your treatment plan, its goals ..."
* include MentalWellnessCodeSystem#rights.fees "To receive information about fees, payment methods, co-payment, and the length and ..."
* include MentalWellnessCodeSystem#rights.qualifiedProviders "To receive services from providers who are qualified and competent."
* include MentalWellnessCodeSystem#rights.clinicianCapabilities "To receive information about the professional capabilities and limitations of any ..."
* include MentalWellnessCodeSystem#rights.recording "To be free from audio or video recording without informed consent."
* include MentalWellnessCodeSystem#rights.recordAccess "To have access to information in your treatment records, with the approval of the ..."
* include MentalWellnessCodeSystem#rights.recordsForwarded "To have information forwarded to a new clinician following your treatment at this ..."
* include MentalWellnessCodeSystem#rights.grievance "To file a grievance if your rights have been denied or limited, verbally or in writing to ..."
* include MentalWellnessCodeSystem#responsibilities.participate "To follow and fully participate in the outlined treatment programme of the centre."
* include MentalWellnessCodeSystem#responsibilities.fullInformation "To provide full information about yourself, to enable a proper assessment."
* include MentalWellnessCodeSystem#responsibilities.askQuestions "To ask questions and understand your condition."
* include MentalWellnessCodeSystem#responsibilities.respect "To show respect to the staff and other clients in the centre."
* include MentalWellnessCodeSystem#responsibilities.goalPlanning "To participate in planning your goals for treatment."
* include MentalWellnessCodeSystem#responsibilities.cooperate "To cooperate in treatment planning."
* include MentalWellnessCodeSystem#responsibilities.rules "To fully abide by the centre's rules and regulations as stipulated."

ValueSet: MentalWellnessConfidentialityExceptions
Id: mental-wellness-confidentiality-exceptions
Title: "Confidentiality Exceptions"
Description: "The exceptions to confidentiality the client acknowledges."
* ^status = #active
* ^experimental = false
* include MentalWellnessCodeSystem#exceptions.imminentHarm "It is necessary to protect you or someone else from imminent physical harm."
* include MentalWellnessCodeSystem#exceptions.courtOrder "The centre receives a valid court order or subpoena that mandates release of your ..."
* include MentalWellnessCodeSystem#exceptions.abuseReporting "The centre is reporting abuse of children, the elderly, or persons with disabilities."
* include MentalWellnessCodeSystem#exceptions.internalConsultation "Clinicians within the agency consult with each other about your treatment in order to ..."
* include MentalWellnessCodeSystem#acknowledgement.agreed "I acknowledge that I have read, understood and agreed with the above information."

ValueSet: MentalWellnessTreatmentConsentClauses
Id: mental-wellness-treatment-consent-clauses
Title: "Guardian Treatment Consent Clauses"
Description: "The acknowledgements a guardian makes when consenting to evaluation and treatment."
* ^status = #active
* ^experimental = false
* include MentalWellnessCodeSystem#acknowledgements.consent "I voluntarily consent that the client will take part in a mental health evaluation and/or ..."
* include MentalWellnessCodeSystem#acknowledgements.conductedBy "I understand the evaluation or treatment will be conducted by a psychologist, addiction ..."
* include MentalWellnessCodeSystem#acknowledgements.duration "Duration and charges: the minimum duration of treatment is ninety (90) days, and I have ..."
* include MentalWellnessCodeSystem#acknowledgements.absconding "Absconding: I have been informed of the possibility and consequences of the client ..."
* include MentalWellnessCodeSystem#acknowledgements.dischargeAgainstAdvice "Discharge against the centre's advice: I have been informed of the possibility and ..."
* include MentalWellnessCodeSystem#acknowledgements.relapse "Relapse: I acknowledge that relapse is possible after treatment if the necessary ..."
* include MentalWellnessCodeSystem#acknowledgements.compensation "Compensation: I agree that I shall not be compensated for any accidental or incidental ..."

ValueSet: MentalWellnessChemicalUseQuestions
Id: mental-wellness-chemical-use-questions
Title: "Chemical Use History Questions"
Description: "The thirty-three questions of the chemical use history exercise; the survey Observation carries one component per answered question."
* ^status = #active
* ^experimental = false
* include MentalWellnessCodeSystem#history.firstDrink "How old were you when you had your first drink? Describe what happened and how you felt."
* include MentalWellnessCodeSystem#history.drugsUsed "List all of the drugs you have ever used, and the age at which you first used each one."
* include MentalWellnessCodeSystem#history.habits "What are your drug-using habits? Where do you use? With whom? Under what circumstances?"
* include MentalWellnessCodeSystem#history.heavyPeriod "Was there ever a period in your life when you used too much or too often? Explain."
* include MentalWellnessCodeSystem#history.problemsCaused "Has using chemicals ever caused a problem for you? Describe the problem or problems."
* include MentalWellnessCodeSystem#history.moreThanIntended "When you were using, did you find that you used more, or for longer, than you had ..."
* include MentalWellnessCodeSystem#history.tolerance "Do you have to use more of the chemical now to get the same effect? How much more than ..."
* include MentalWellnessCodeSystem#history.cuttingDown "Did you ever try to cut down, and what happened to your attempt?"
* include MentalWellnessCodeSystem#history.cuttingDownHow "What did you do to cut down? Did you change your beverage, limit the amount, or restrict ..."
* include MentalWellnessCodeSystem#history.stoppedCompletely "Did you ever stop using completely? What happened? Why did you start again?"
* include MentalWellnessCodeSystem#history.timeIntoxicated "Did you spend a lot of time intoxicated or hung over?"
* include MentalWellnessCodeSystem#history.dangerousUse "Did you ever use while doing something dangerous, such as driving a car? Give some ..."
* include MentalWellnessCodeSystem#history.missedWork "Were you ever so high, or so hung over, that you missed work or school? Give some ..."
* include MentalWellnessCodeSystem#history.missedFamilyEvents "Did you ever miss family events because you were high or hung over? Give a few examples."
* include MentalWellnessCodeSystem#history.familyProblems "Did you ever cause family problems? Give examples."
* include MentalWellnessCodeSystem#history.annoyedWhenChallenged "Did you ever feel annoyed when someone talked to you about your drinking or drug use? Who ..."
* include MentalWellnessCodeSystem#history.guilt "Did you ever feel bad or guilty about your use? Give examples."
* include MentalWellnessCodeSystem#history.psychologicalProblems "Did using ever cause you psychological problems, such as being depressed? Explain the ..."
* include MentalWellnessCodeSystem#history.physicalProblems "Did using ever cause physical problems, or make a physical problem worse? Give a few ..."
* include MentalWellnessCodeSystem#history.blackouts "Did you ever have a blackout? How old were you when you had your first one? Give some ..."
* include MentalWellnessCodeSystem#history.sickFromUse "Did you ever get sick because you were too intoxicated? Give some examples."
* include MentalWellnessCodeSystem#history.badHangovers "Did you ever have a really bad hangover? Describe how you felt."
* include MentalWellnessCodeSystem#history.withdrawal "Did you ever get the shakes or suffer withdrawal symptoms when you quit using? Describe ..."
* include MentalWellnessCodeSystem#history.useToAvoidWithdrawal "Did you ever use to avoid withdrawal symptoms? Give examples of when you used a substance ..."
* include MentalWellnessCodeSystem#history.previousHelp "Have you ever sought help for your drug problem? When? Who did you see? Did the treatment ..."
* include MentalWellnessCodeSystem#history.reasonsToContinue "Why do you want to continue to use? Give five reasons."
* include MentalWellnessCodeSystem#history.reasonsToStop "Why do you want to stop using? Give ten reasons."
* include MentalWellnessCodeSystem#history.reputation "Has alcohol or drug use ever affected your reputation? Describe what happened and how you ..."
* include MentalWellnessCodeSystem#history.financialImpact "How has using affected you financially? Give a few examples of money wasted in your ..."
* include MentalWellnessCodeSystem#history.selfImage "Has your addiction changed how you feel about yourself? Give some examples."
* include MentalWellnessCodeSystem#history.ambition "Has your ambition decreased since you started using? Give some examples."
* include MentalWellnessCodeSystem#history.selfConfidence "Are you as self-confident as you were before?"
* include MentalWellnessCodeSystem#history.whyTreatmentNow "Describe the reasons why you want treatment now."

ValueSet: MentalWellnessAsiItems
Id: mental-wellness-asi-items
Title: "ASI Questions"
Description: "The addiction severity index questions; each domain Observation carries one component per answered question."
* ^status = #active
* ^experimental = false
* include MentalWellnessCodeSystem#general.G1 "G1. Client's IP number"
* include MentalWellnessCodeSystem#general.G2 "G2. Date of admission"
* include MentalWellnessCodeSystem#general.G3 "G3. Date of birth"
* include MentalWellnessCodeSystem#general.G4 "G4. Date of interview"
* include MentalWellnessCodeSystem#general.G5 "G5. Time begun"
* include MentalWellnessCodeSystem#general.G6 "G6. Time ended"
* include MentalWellnessCodeSystem#general.G7 "G7. Interviewer's name"
* include MentalWellnessCodeSystem#general.G8 "G8. Special circumstances for not doing the assessment"
* include MentalWellnessCodeSystem#general.G8s "G8. If other, specify"
* include MentalWellnessCodeSystem#general.G9 "G9. Residence — whom are you living with?"
* include MentalWellnessCodeSystem#general.G9s "G9. If other, specify"
* include MentalWellnessCodeSystem#general.G10 "G10. Is this residence owned by you or your parents?"
* include MentalWellnessCodeSystem#general.G10s "G10. If others, specify"
* include MentalWellnessCodeSystem#general.G11 "G11. How long have you lived at your current address?"
* include MentalWellnessCodeSystem#general.G12 "G12. Do you have a religious preference?"
* include MentalWellnessCodeSystem#general.G12s "G12. If other, specify"
* include MentalWellnessCodeSystem#general.G13 "G13. Have you been in a controlled environment in the past 30 days? (a place ..."
* include MentalWellnessCodeSystem#general.G13s "G13. If other, specify"
* include MentalWellnessCodeSystem#general.G14 "G14. How many days?"
* include MentalWellnessCodeSystem#general.comments "Further information and comments (quote the question number)"
* include MentalWellnessCodeSystem#medical.M1 "M1. How many times in your life have you been hospitalised for medical problems? (include ..."
* include MentalWellnessCodeSystem#medical.M2 "M2. How long ago was your last hospitalisation for a medical problem?"
* include MentalWellnessCodeSystem#medical.M3 "M3. Do you have any chronic medical problems which continue to interfere with your life?"
* include MentalWellnessCodeSystem#medical.M4 "M4. Are you taking any prescribed medication on a regular basis for a medical problem?"
* include MentalWellnessCodeSystem#medical.M5 "M5. How many days have you experienced medical problems in the past 30 days?"
* include MentalWellnessCodeSystem#medical.M5s "M5. Specify the problem"
* include MentalWellnessCodeSystem#medical.M6 "M6. How troubled or bothered have you been by these medical problems in the past 30 days?"
* include MentalWellnessCodeSystem#medical.M7 "M7. How important to you now is treatment for these medical problems?"
* include MentalWellnessCodeSystem#medical.M8 "M8. Interviewer severity rating: the patient's need for medical treatment"
* include MentalWellnessCodeSystem#medical.M9 "M9. Is the above information significantly distorted by the patient's misrepresentation?"
* include MentalWellnessCodeSystem#medical.M10 "M10. Is the above information significantly distorted by the patient's inability to ..."
* include MentalWellnessCodeSystem#medical.M11 "M11. Is the above information significantly distorted by the patient's resistance to ..."
* include MentalWellnessCodeSystem#medical.comments "Further information and comments (quote the question number)"
* include MentalWellnessCodeSystem#employment.E1 "E1. Education completed"
* include MentalWellnessCodeSystem#employment.E2 "E2. Training or technical education completed"
* include MentalWellnessCodeSystem#employment.E3 "E3. Do you have a profession, trade or skill?"
* include MentalWellnessCodeSystem#employment.E3s "E3. If yes, specify"
* include MentalWellnessCodeSystem#employment.E4 "E4. Do you have a valid driver's licence?"
* include MentalWellnessCodeSystem#employment.E5 "E5. Do you have a full-time job? (35+ hours weekly)"
* include MentalWellnessCodeSystem#employment.E6 "E6. If not, what is your occupation?"
* include MentalWellnessCodeSystem#employment.E7 "E7. Does someone contribute to your support in any way?"
* include MentalWellnessCodeSystem#employment.E8 "E8. Does this support constitute the majority of your support?"
* include MentalWellnessCodeSystem#employment.E9 "E9. What is your usual employment pattern over the past 3 years?"
* include MentalWellnessCodeSystem#employment.E10 "E10. How many people depend on you for the majority of their food, shelter and so on?"
* include MentalWellnessCodeSystem#employment.E11 "E11. How many days have you experienced employment problems in the past 30?"
* include MentalWellnessCodeSystem#employment.E12 "E12. How troubled or bothered have you been by these employment problems in the past 30 ..."
* include MentalWellnessCodeSystem#employment.E13 "E13. How important to you now is counselling for these employment problems?"
* include MentalWellnessCodeSystem#employment.E14 "E14. Interviewer severity rating: the patient's need for employment counselling"
* include MentalWellnessCodeSystem#employment.E15 "E15. Is the above information significantly distorted by the client's misrepresentation?"
* include MentalWellnessCodeSystem#employment.E16 "E16. Is the above information significantly distorted by the client's inability to ..."
* include MentalWellnessCodeSystem#employment.E17 "E17. Is the above information significantly distorted by the patient's resistance to ..."
* include MentalWellnessCodeSystem#employment.comments "Further information and comments (quote the question number)"
* include MentalWellnessCodeSystem#drugs.D1.days "D1. Alcohol — days used in the past 30"
* include MentalWellnessCodeSystem#drugs.D1.years "D1. Alcohol — lifetime years of use"
* include MentalWellnessCodeSystem#drugs.D1.route "D1. Alcohol — route of administration"
* include MentalWellnessCodeSystem#drugs.D2.days "D2. Alcohol (used to intoxication) — days used in the past 30"
* include MentalWellnessCodeSystem#drugs.D2.years "D2. Alcohol (used to intoxication) — lifetime years of use"
* include MentalWellnessCodeSystem#drugs.D2.route "D2. Alcohol (used to intoxication) — route of administration"
* include MentalWellnessCodeSystem#drugs.D3.days "D3. Heroin — days used in the past 30"
* include MentalWellnessCodeSystem#drugs.D3.years "D3. Heroin — lifetime years of use"
* include MentalWellnessCodeSystem#drugs.D3.route "D3. Heroin — route of administration"
* include MentalWellnessCodeSystem#drugs.D4.days "D4. Methadone — days used in the past 30"
* include MentalWellnessCodeSystem#drugs.D4.years "D4. Methadone — lifetime years of use"
* include MentalWellnessCodeSystem#drugs.D4.route "D4. Methadone — route of administration"
* include MentalWellnessCodeSystem#drugs.D5.days "D5. Other opiates or analgesics — days used in the past 30"
* include MentalWellnessCodeSystem#drugs.D5.years "D5. Other opiates or analgesics — lifetime years of use"
* include MentalWellnessCodeSystem#drugs.D5.route "D5. Other opiates or analgesics — route of administration"
* include MentalWellnessCodeSystem#drugs.D5.specify "D5. Other opiates or analgesics — specify"
* include MentalWellnessCodeSystem#drugs.D6.days "D6. Barbiturates — days used in the past 30"
* include MentalWellnessCodeSystem#drugs.D6.years "D6. Barbiturates — lifetime years of use"
* include MentalWellnessCodeSystem#drugs.D6.route "D6. Barbiturates — route of administration"
* include MentalWellnessCodeSystem#drugs.D6.specify "D6. Barbiturates — specify"
* include MentalWellnessCodeSystem#drugs.D7.days "D7. Other sedatives, hypnotics or tranquillisers — days used in the past 30"
* include MentalWellnessCodeSystem#drugs.D7.years "D7. Other sedatives, hypnotics or tranquillisers — lifetime years of use"
* include MentalWellnessCodeSystem#drugs.D7.route "D7. Other sedatives, hypnotics or tranquillisers — route of administration"
* include MentalWellnessCodeSystem#drugs.D7.specify "D7. Other sedatives, hypnotics or tranquillisers — specify"
* include MentalWellnessCodeSystem#drugs.D8.days "D8. Cocaine — days used in the past 30"
* include MentalWellnessCodeSystem#drugs.D8.years "D8. Cocaine — lifetime years of use"
* include MentalWellnessCodeSystem#drugs.D8.route "D8. Cocaine — route of administration"
* include MentalWellnessCodeSystem#drugs.D8.specify "D8. Cocaine — specify"
* include MentalWellnessCodeSystem#drugs.D9.days "D9. Amphetamines — days used in the past 30"
* include MentalWellnessCodeSystem#drugs.D9.years "D9. Amphetamines — lifetime years of use"
* include MentalWellnessCodeSystem#drugs.D9.route "D9. Amphetamines — route of administration"
* include MentalWellnessCodeSystem#drugs.D9.specify "D9. Amphetamines — specify"
* include MentalWellnessCodeSystem#drugs.D10.days "D10. Cannabis — days used in the past 30"
* include MentalWellnessCodeSystem#drugs.D10.years "D10. Cannabis — lifetime years of use"
* include MentalWellnessCodeSystem#drugs.D10.route "D10. Cannabis — route of administration"
* include MentalWellnessCodeSystem#drugs.D11.days "D11. Hallucinogens — days used in the past 30"
* include MentalWellnessCodeSystem#drugs.D11.years "D11. Hallucinogens — lifetime years of use"
* include MentalWellnessCodeSystem#drugs.D11.route "D11. Hallucinogens — route of administration"
* include MentalWellnessCodeSystem#drugs.D11.specify "D11. Hallucinogens — specify"
* include MentalWellnessCodeSystem#drugs.D12.days "D12. Inhalants — days used in the past 30"
* include MentalWellnessCodeSystem#drugs.D12.years "D12. Inhalants — lifetime years of use"
* include MentalWellnessCodeSystem#drugs.D12.route "D12. Inhalants — route of administration"
* include MentalWellnessCodeSystem#drugs.D12.specify "D12. Inhalants — specify"
* include MentalWellnessCodeSystem#drugs.D13 "D13. According to the interviewer, which substance is or are the major problem?"
* include MentalWellnessCodeSystem#drugs.D14 "D14. How long was your last period of voluntary abstinence from this major substance? ..."
* include MentalWellnessCodeSystem#drugs.D15 "D15. How many months ago did this abstinence end? (1 = still abstinent)"
* include MentalWellnessCodeSystem#drugs.D16 "D16. How many times have you had alcohol DTs?"
* include MentalWellnessCodeSystem#drugs.D17 "D17. How many times have you overdosed on drugs?"
* include MentalWellnessCodeSystem#drugs.D18 "D18. How many times in your life have you been treated for alcohol abuse?"
* include MentalWellnessCodeSystem#drugs.D19 "D19. How many times in your life have you been treated for drug abuse?"
* include MentalWellnessCodeSystem#drugs.D20 "D20. How many of these alcohol treatments were detox only?"
* include MentalWellnessCodeSystem#drugs.D21 "D21. How many of these drug treatments were detox only?"
* include MentalWellnessCodeSystem#drugs.D22 "D22. How much money did you spend on alcohol in the past 30 days? (KES)"
* include MentalWellnessCodeSystem#drugs.D23 "D23. How much money did you spend on drugs in the past 30 days? (KES)"
* include MentalWellnessCodeSystem#drugs.D24 "D24. How many days in the past 30 have you experienced alcohol problems?"
* include MentalWellnessCodeSystem#drugs.D25 "D25. How many days in the past 30 have you experienced drug problems?"
* include MentalWellnessCodeSystem#drugs.D26 "D26. How troubled or bothered have you been in the past 30 days by alcohol problems?"
* include MentalWellnessCodeSystem#drugs.D27 "D27. How troubled or bothered have you been in the past 30 days by drug problems?"
* include MentalWellnessCodeSystem#drugs.D28 "D28. How important to you now is treatment for these alcohol problems?"
* include MentalWellnessCodeSystem#drugs.D29 "D29. How important to you now is treatment for these drug problems?"
* include MentalWellnessCodeSystem#drugs.D30 "D30. Interviewer severity rating: the patient's need for treatment for alcohol problems"
* include MentalWellnessCodeSystem#drugs.D31 "D31. Interviewer severity rating: the patient's need for treatment for drug problems"
* include MentalWellnessCodeSystem#drugs.D32 "D32. Is the above information significantly distorted by the client's misrepresentation?"
* include MentalWellnessCodeSystem#drugs.D33 "D33. Is the above information significantly distorted by the client's inability to ..."
* include MentalWellnessCodeSystem#drugs.D34 "D34. Is the above information significantly distorted by the patient's resistance to ..."
* include MentalWellnessCodeSystem#drugs.comments "Further information and comments (quote the question number)"
* include MentalWellnessCodeSystem#legal.L1 "L1. Was this admission prompted or suggested by the criminal justice system?"
* include MentalWellnessCodeSystem#legal.L2 "L2. Are you on probation?"
* include MentalWellnessCodeSystem#legal.L3 "L3. Shoplifting or vandalism"
* include MentalWellnessCodeSystem#legal.L4 "L4. Parole or probation violations"
* include MentalWellnessCodeSystem#legal.L5 "L5. Drug charges"
* include MentalWellnessCodeSystem#legal.L6 "L6. Forgery"
* include MentalWellnessCodeSystem#legal.L7 "L7. Weapons offence"
* include MentalWellnessCodeSystem#legal.L8 "L8. Stealing, breaking and entering"
* include MentalWellnessCodeSystem#legal.L9 "L9. Robbery"
* include MentalWellnessCodeSystem#legal.L10 "L10. Assault"
* include MentalWellnessCodeSystem#legal.L11 "L11. Arson"
* include MentalWellnessCodeSystem#legal.L12 "L12. Rape"
* include MentalWellnessCodeSystem#legal.L13 "L13. Homicide or manslaughter"
* include MentalWellnessCodeSystem#legal.L14 "L14. Prostitution"
* include MentalWellnessCodeSystem#legal.L15 "L15. Contempt of court"
* include MentalWellnessCodeSystem#legal.L16 "L16. Disorderly conduct, vagrancy, public intoxication"
* include MentalWellnessCodeSystem#legal.L17 "L17. Driving while intoxicated"
* include MentalWellnessCodeSystem#legal.L18 "L18. Major driving violations — speeding, reckless driving, no licence"
* include MentalWellnessCodeSystem#legal.L19 "L19. Other charges"
* include MentalWellnessCodeSystem#legal.L19s "L19. If other, specify"
* include MentalWellnessCodeSystem#legal.L20 "L20. Which of these charges resulted in convictions?"
* include MentalWellnessCodeSystem#legal.L21 "L21. How many months were you incarcerated in your life?"
* include MentalWellnessCodeSystem#legal.L22 "L22. How long was your last incarceration? (of 2 weeks or more)"
* include MentalWellnessCodeSystem#legal.L23 "L23. What was it for?"
* include MentalWellnessCodeSystem#legal.L24 "L24. Are you presently awaiting charges, trial or sentence?"
* include MentalWellnessCodeSystem#legal.L25 "L25. What for?"
* include MentalWellnessCodeSystem#legal.L26 "L26. How many days in the past 30 were you detained or incarcerated?"
* include MentalWellnessCodeSystem#legal.L27 "L27. How many days in the past 30 have you engaged in illegal activities for profit?"
* include MentalWellnessCodeSystem#legal.L28 "L28. How serious do you feel your present legal problems are?"
* include MentalWellnessCodeSystem#legal.L29 "L29. How important to you now is counselling or referral for these legal problems?"
* include MentalWellnessCodeSystem#legal.L30 "L30. Interviewer severity rating: the patient's need for legal services or counselling"
* include MentalWellnessCodeSystem#legal.L31 "L31. Is the above information significantly distorted by the client's misrepresentation?"
* include MentalWellnessCodeSystem#legal.L32 "L32. Is the above information significantly distorted by the client's inability to ..."
* include MentalWellnessCodeSystem#legal.L33 "L33. Is the above information significantly distorted by the patient's resistance to ..."
* include MentalWellnessCodeSystem#legal.comments "Further information and comments (quote the question number)"
* include MentalWellnessCodeSystem#family.F1 "F1. Marital status"
* include MentalWellnessCodeSystem#family.F2 "F2. How long have you been in this marital status?"
* include MentalWellnessCodeSystem#family.F3 "F3. Are you satisfied with this situation?"
* include MentalWellnessCodeSystem#family.F4 "F4. Usual living arrangements over the past 3 years"
* include MentalWellnessCodeSystem#family.F5 "F5. How long have you lived in these arrangements?"
* include MentalWellnessCodeSystem#family.F6 "F6. Are you satisfied with these arrangements?"
* include MentalWellnessCodeSystem#family.F7 "F7. Do you live with anyone who has a current alcohol problem?"
* include MentalWellnessCodeSystem#family.F8 "F8. Do you live with anyone who uses non-prescribed drugs, or abuses prescribed drugs?"
* include MentalWellnessCodeSystem#family.F9 "F9. With whom do you spend most of your free time?"
* include MentalWellnessCodeSystem#family.F10 "F10. Are you satisfied with spending your free time this way?"
* include MentalWellnessCodeSystem#family.F11 "F11. How many close friends do you have?"
* include MentalWellnessCodeSystem#family.F12 "F12. Mother"
* include MentalWellnessCodeSystem#family.F13 "F13. Father"
* include MentalWellnessCodeSystem#family.F14 "F14. Brothers or sisters"
* include MentalWellnessCodeSystem#family.F15 "F15. Sexual partner or spouse"
* include MentalWellnessCodeSystem#family.F16 "F16. Children"
* include MentalWellnessCodeSystem#family.F17 "F17. Friends"
* include MentalWellnessCodeSystem#family.F18 "F18. Mother"
* include MentalWellnessCodeSystem#family.F19 "F19. Father"
* include MentalWellnessCodeSystem#family.F20 "F20. Brothers or sisters"
* include MentalWellnessCodeSystem#family.F21 "F21. Sexual partner or spouse"
* include MentalWellnessCodeSystem#family.F22 "F22. Children"
* include MentalWellnessCodeSystem#family.F23 "F23. Other significant family"
* include MentalWellnessCodeSystem#family.F24 "F24. Close friends"
* include MentalWellnessCodeSystem#family.F25 "F25. Neighbours"
* include MentalWellnessCodeSystem#family.F26 "F26. Co-workers"
* include MentalWellnessCodeSystem#family.F23s "F23. Other significant family — specify"
* include MentalWellnessCodeSystem#family.F27.past30 "F27. Emotionally — in the past 30 days"
* include MentalWellnessCodeSystem#family.F27.lifetime "F27. Emotionally — in your life"
* include MentalWellnessCodeSystem#family.F28.past30 "F28. Physically — in the past 30 days"
* include MentalWellnessCodeSystem#family.F28.lifetime "F28. Physically — in your life"
* include MentalWellnessCodeSystem#family.F29.past30 "F29. Sexually — in the past 30 days"
* include MentalWellnessCodeSystem#family.F29.lifetime "F29. Sexually — in your life"
* include MentalWellnessCodeSystem#family.F30 "F30. How many days in the past 30 have you had serious conflicts with your family?"
* include MentalWellnessCodeSystem#family.F31 "F31. How many days in the past 30 have you had serious conflicts with other people?"
* include MentalWellnessCodeSystem#family.F32 "F32. How troubled or bothered have you been in the past 30 days by family problems?"
* include MentalWellnessCodeSystem#family.F33 "F33. How troubled or bothered have you been in the past 30 days by social problems?"
* include MentalWellnessCodeSystem#family.F34 "F34. How important to you now is treatment or counselling for these family problems?"
* include MentalWellnessCodeSystem#family.F35 "F35. How important to you now is treatment or counselling for these social problems?"
* include MentalWellnessCodeSystem#family.F36 "F36. Interviewer severity rating: the patient's need for family or social counselling"
* include MentalWellnessCodeSystem#family.F37 "F37. Is the above information significantly distorted by the client's misrepresentation?"
* include MentalWellnessCodeSystem#family.F38 "F38. Is the above information significantly distorted by the client's inability to ..."
* include MentalWellnessCodeSystem#family.F39 "F39. Is the above information significantly distorted by the patient's resistance to ..."
* include MentalWellnessCodeSystem#family.comments "Further information and comments (quote the question number)"
* include MentalWellnessCodeSystem#psychiatric.P1 "P1. How many times have you been treated for psychological or emotional problems in a ..."
* include MentalWellnessCodeSystem#psychiatric.P2 "P2. How many times have you been treated for psychological or emotional problems as an ..."
* include MentalWellnessCodeSystem#psychiatric.P4 "P4. Experienced serious depression — sadness, hopelessness, loss of interest, difficulty ..."
* include MentalWellnessCodeSystem#psychiatric.P5 "P5. Experienced serious anxiety or tension — uptight, unreasonably worried, unable to ..."
* include MentalWellnessCodeSystem#psychiatric.P6 "P6. Experienced hallucinations — saw things or heard voices that others did not"
* include MentalWellnessCodeSystem#psychiatric.P7 "P7. Experienced trouble understanding, concentrating or remembering"
* include MentalWellnessCodeSystem#psychiatric.P8 "P8. Experienced trouble controlling violent behaviour, including episodes of rage or ..."
* include MentalWellnessCodeSystem#psychiatric.P9 "P9. Experienced serious thoughts of suicide"
* include MentalWellnessCodeSystem#psychiatric.P10 "P10. Attempted suicide"
* include MentalWellnessCodeSystem#psychiatric.P11 "P11. Been prescribed medication for any psychological or emotional problem"
* include MentalWellnessCodeSystem#psychiatric.P12 "P12. How many days in the past 30 have you experienced these psychological or emotional ..."
* include MentalWellnessCodeSystem#psychiatric.P13 "P13. How much have you been troubled or bothered by these psychological or emotional ..."
* include MentalWellnessCodeSystem#psychiatric.P14 "P14. How important to you now is treatment for these psychological problems?"
* include MentalWellnessCodeSystem#psychiatric.P15 "P15. Obviously depressed or withdrawn"
* include MentalWellnessCodeSystem#psychiatric.P16 "P16. Obviously hostile"
* include MentalWellnessCodeSystem#psychiatric.P17 "P17. Obviously anxious or nervous"
* include MentalWellnessCodeSystem#psychiatric.P18 "P18. Having trouble with reality testing, thought disorders or paranoid thinking"
* include MentalWellnessCodeSystem#psychiatric.P19 "P19. Having trouble comprehending, concentrating or remembering"
* include MentalWellnessCodeSystem#psychiatric.P20 "P20. Having suicidal thoughts"
* include MentalWellnessCodeSystem#psychiatric.P21 "P21. Interviewer severity rating: the patient's need for psychiatric or psychological ..."
* include MentalWellnessCodeSystem#psychiatric.P22 "P22. Is the above information significantly distorted by the client's misrepresentation?"
* include MentalWellnessCodeSystem#psychiatric.P23 "P23. Is the above information significantly distorted by the client's inability to ..."
* include MentalWellnessCodeSystem#psychiatric.P24 "P24. Is the above information significantly distorted by the patient's resistance to ..."
* include MentalWellnessCodeSystem#psychiatric.comments "Further information and comments (quote the question number)"

ValueSet: MentalWellnessAsiAnswers
Id: mental-wellness-asi-answers
Title: "ASI Answers"
Description: "The coded answer options of the addiction severity index."
* ^status = #active
* ^experimental = false
* include MentalWellnessCodeSystem#G8-1 "Patient terminated"
* include MentalWellnessCodeSystem#G8-2 "Patient refused"
* include MentalWellnessCodeSystem#G8-3 "Patient unable to respond"
* include MentalWellnessCodeSystem#G8-4 "Other"
* include MentalWellnessCodeSystem#G9-1 "Parents"
* include MentalWellnessCodeSystem#G9-2 "Spouse"
* include MentalWellnessCodeSystem#G9-3 "Alone"
* include MentalWellnessCodeSystem#G9-4 "Sibling or relative"
* include MentalWellnessCodeSystem#G9-5 "Friends"
* include MentalWellnessCodeSystem#G9-6 "Other"
* include MentalWellnessCodeSystem#G10-0 "You"
* include MentalWellnessCodeSystem#G10-1 "Parents"
* include MentalWellnessCodeSystem#G10-2 "Others"
* include MentalWellnessCodeSystem#G11-1 "0–3 months"
* include MentalWellnessCodeSystem#G11-2 "3–6 months"
* include MentalWellnessCodeSystem#G11-3 "6 months to one year"
* include MentalWellnessCodeSystem#G11-4 "One year and above"
* include MentalWellnessCodeSystem#G12-1 "Protestant"
* include MentalWellnessCodeSystem#G12-2 "Catholic"
* include MentalWellnessCodeSystem#G12-3 "Islamic"
* include MentalWellnessCodeSystem#G12-4 "Jewish"
* include MentalWellnessCodeSystem#G12-5 "Other"
* include MentalWellnessCodeSystem#G12-6 "None"
* include MentalWellnessCodeSystem#G13-1 "No"
* include MentalWellnessCodeSystem#G13-2 "Jail or prison"
* include MentalWellnessCodeSystem#G13-3 "Psychiatric treatment"
* include MentalWellnessCodeSystem#G13-4 "Medical treatment"
* include MentalWellnessCodeSystem#G13-5 "Alcohol or drug treatment"
* include MentalWellnessCodeSystem#G13-6 "Other"
* include MentalWellnessCodeSystem#G14-1 "0–7 days"
* include MentalWellnessCodeSystem#G14-2 "7–14 days"
* include MentalWellnessCodeSystem#G14-3 "14 days and above"
* include MentalWellnessCodeSystem#M3-0 "No"
* include MentalWellnessCodeSystem#M3-1 "Yes"
* include MentalWellnessCodeSystem#M4-0 "No"
* include MentalWellnessCodeSystem#M4-1 "Yes"
* include MentalWellnessCodeSystem#M6-0 "0 — Not at all"
* include MentalWellnessCodeSystem#M6-1 "1 — Slightly"
* include MentalWellnessCodeSystem#M6-2 "2 — Moderately"
* include MentalWellnessCodeSystem#M6-3 "3 — Considerably"
* include MentalWellnessCodeSystem#M6-4 "4 — Extremely"
* include MentalWellnessCodeSystem#M7-0 "0 — Not at all"
* include MentalWellnessCodeSystem#M7-1 "1 — Slightly"
* include MentalWellnessCodeSystem#M7-2 "2 — Moderately"
* include MentalWellnessCodeSystem#M7-3 "3 — Considerably"
* include MentalWellnessCodeSystem#M7-4 "4 — Extremely"
* include MentalWellnessCodeSystem#M8-0 "0 — No real problem, treatment not indicated"
* include MentalWellnessCodeSystem#M8-1 "1 — No real problem, treatment not indicated"
* include MentalWellnessCodeSystem#M8-2 "2 — Slight problem, treatment probably not necessary"
* include MentalWellnessCodeSystem#M8-3 "3 — Slight problem, treatment probably not necessary"
* include MentalWellnessCodeSystem#M8-4 "4 — Moderate problem, some treatment indicated"
* include MentalWellnessCodeSystem#M8-5 "5 — Moderate problem, some treatment indicated"
* include MentalWellnessCodeSystem#M8-6 "6 — Considerable problem, treatment necessary"
* include MentalWellnessCodeSystem#M8-7 "7 — Considerable problem, treatment necessary"
* include MentalWellnessCodeSystem#M8-8 "8 — Extreme problem, treatment absolutely necessary"
* include MentalWellnessCodeSystem#M8-9 "9 — Extreme problem, treatment absolutely necessary"
* include MentalWellnessCodeSystem#M9-0 "No"
* include MentalWellnessCodeSystem#M9-1 "Yes"
* include MentalWellnessCodeSystem#M10-0 "No"
* include MentalWellnessCodeSystem#M10-1 "Yes"
* include MentalWellnessCodeSystem#M11-0 "No"
* include MentalWellnessCodeSystem#M11-1 "Yes"
* include MentalWellnessCodeSystem#E3-0 "No"
* include MentalWellnessCodeSystem#E3-1 "Yes"
* include MentalWellnessCodeSystem#E4-0 "No"
* include MentalWellnessCodeSystem#E4-1 "Yes"
* include MentalWellnessCodeSystem#E5-0 "No"
* include MentalWellnessCodeSystem#E5-1 "Yes"
* include MentalWellnessCodeSystem#E7-0 "No"
* include MentalWellnessCodeSystem#E7-1 "Yes"
* include MentalWellnessCodeSystem#E8-0 "No"
* include MentalWellnessCodeSystem#E8-1 "Yes"
* include MentalWellnessCodeSystem#E9-1 "Full time (35+ hours)"
* include MentalWellnessCodeSystem#E9-2 "Retired or on disability"
* include MentalWellnessCodeSystem#E9-3 "Unemployed"
* include MentalWellnessCodeSystem#E9-4 "Student"
* include MentalWellnessCodeSystem#E9-5 "Military service"
* include MentalWellnessCodeSystem#E9-6 "Part time (irregular hours)"
* include MentalWellnessCodeSystem#E9-7 "Part time (regular hours)"
* include MentalWellnessCodeSystem#E9-8 "In a controlled environment"
* include MentalWellnessCodeSystem#E12-0 "0 — Not at all"
* include MentalWellnessCodeSystem#E12-1 "1 — Slightly"
* include MentalWellnessCodeSystem#E12-2 "2 — Moderately"
* include MentalWellnessCodeSystem#E12-3 "3 — Considerably"
* include MentalWellnessCodeSystem#E12-4 "4 — Extremely"
* include MentalWellnessCodeSystem#E13-0 "0 — Not at all"
* include MentalWellnessCodeSystem#E13-1 "1 — Slightly"
* include MentalWellnessCodeSystem#E13-2 "2 — Moderately"
* include MentalWellnessCodeSystem#E13-3 "3 — Considerably"
* include MentalWellnessCodeSystem#E13-4 "4 — Extremely"
* include MentalWellnessCodeSystem#E14-0 "0 — No real problem, treatment not indicated"
* include MentalWellnessCodeSystem#E14-1 "1 — No real problem, treatment not indicated"
* include MentalWellnessCodeSystem#E14-2 "2 — Slight problem, treatment probably not necessary"
* include MentalWellnessCodeSystem#E14-3 "3 — Slight problem, treatment probably not necessary"
* include MentalWellnessCodeSystem#E14-4 "4 — Moderate problem, some treatment indicated"
* include MentalWellnessCodeSystem#E14-5 "5 — Moderate problem, some treatment indicated"
* include MentalWellnessCodeSystem#E14-6 "6 — Considerable problem, treatment necessary"
* include MentalWellnessCodeSystem#E14-7 "7 — Considerable problem, treatment necessary"
* include MentalWellnessCodeSystem#E14-8 "8 — Extreme problem, treatment absolutely necessary"
* include MentalWellnessCodeSystem#E14-9 "9 — Extreme problem, treatment absolutely necessary"
* include MentalWellnessCodeSystem#E15-0 "No"
* include MentalWellnessCodeSystem#E15-1 "Yes"
* include MentalWellnessCodeSystem#E16-0 "No"
* include MentalWellnessCodeSystem#E16-1 "Yes"
* include MentalWellnessCodeSystem#E17-0 "No"
* include MentalWellnessCodeSystem#E17-1 "Yes"
* include MentalWellnessCodeSystem#route-1 "Oral"
* include MentalWellnessCodeSystem#route-2 "Nasal"
* include MentalWellnessCodeSystem#route-3 "Smoking"
* include MentalWellnessCodeSystem#route-4 "Non-IV injection"
* include MentalWellnessCodeSystem#route-5 "IV"
* include MentalWellnessCodeSystem#D26-0 "0 — Not at all"
* include MentalWellnessCodeSystem#D26-1 "1 — Slightly"
* include MentalWellnessCodeSystem#D26-2 "2 — Moderately"
* include MentalWellnessCodeSystem#D26-3 "3 — Considerably"
* include MentalWellnessCodeSystem#D26-4 "4 — Extremely"
* include MentalWellnessCodeSystem#D27-0 "0 — Not at all"
* include MentalWellnessCodeSystem#D27-1 "1 — Slightly"
* include MentalWellnessCodeSystem#D27-2 "2 — Moderately"
* include MentalWellnessCodeSystem#D27-3 "3 — Considerably"
* include MentalWellnessCodeSystem#D27-4 "4 — Extremely"
* include MentalWellnessCodeSystem#D28-0 "0 — Not at all"
* include MentalWellnessCodeSystem#D28-1 "1 — Slightly"
* include MentalWellnessCodeSystem#D28-2 "2 — Moderately"
* include MentalWellnessCodeSystem#D28-3 "3 — Considerably"
* include MentalWellnessCodeSystem#D28-4 "4 — Extremely"
* include MentalWellnessCodeSystem#D29-0 "0 — Not at all"
* include MentalWellnessCodeSystem#D29-1 "1 — Slightly"
* include MentalWellnessCodeSystem#D29-2 "2 — Moderately"
* include MentalWellnessCodeSystem#D29-3 "3 — Considerably"
* include MentalWellnessCodeSystem#D29-4 "4 — Extremely"
* include MentalWellnessCodeSystem#D30-0 "0 — No real problem, treatment not indicated"
* include MentalWellnessCodeSystem#D30-1 "1 — No real problem, treatment not indicated"
* include MentalWellnessCodeSystem#D30-2 "2 — Slight problem, treatment probably not necessary"
* include MentalWellnessCodeSystem#D30-3 "3 — Slight problem, treatment probably not necessary"
* include MentalWellnessCodeSystem#D30-4 "4 — Moderate problem, some treatment indicated"
* include MentalWellnessCodeSystem#D30-5 "5 — Moderate problem, some treatment indicated"
* include MentalWellnessCodeSystem#D30-6 "6 — Considerable problem, treatment necessary"
* include MentalWellnessCodeSystem#D30-7 "7 — Considerable problem, treatment necessary"
* include MentalWellnessCodeSystem#D30-8 "8 — Extreme problem, treatment absolutely necessary"
* include MentalWellnessCodeSystem#D30-9 "9 — Extreme problem, treatment absolutely necessary"
* include MentalWellnessCodeSystem#D31-0 "0 — No real problem, treatment not indicated"
* include MentalWellnessCodeSystem#D31-1 "1 — No real problem, treatment not indicated"
* include MentalWellnessCodeSystem#D31-2 "2 — Slight problem, treatment probably not necessary"
* include MentalWellnessCodeSystem#D31-3 "3 — Slight problem, treatment probably not necessary"
* include MentalWellnessCodeSystem#D31-4 "4 — Moderate problem, some treatment indicated"
* include MentalWellnessCodeSystem#D31-5 "5 — Moderate problem, some treatment indicated"
* include MentalWellnessCodeSystem#D31-6 "6 — Considerable problem, treatment necessary"
* include MentalWellnessCodeSystem#D31-7 "7 — Considerable problem, treatment necessary"
* include MentalWellnessCodeSystem#D31-8 "8 — Extreme problem, treatment absolutely necessary"
* include MentalWellnessCodeSystem#D31-9 "9 — Extreme problem, treatment absolutely necessary"
* include MentalWellnessCodeSystem#D32-0 "No"
* include MentalWellnessCodeSystem#D32-1 "Yes"
* include MentalWellnessCodeSystem#D33-0 "No"
* include MentalWellnessCodeSystem#D33-1 "Yes"
* include MentalWellnessCodeSystem#D34-0 "No"
* include MentalWellnessCodeSystem#D34-1 "Yes"
* include MentalWellnessCodeSystem#L1-0 "No"
* include MentalWellnessCodeSystem#L1-1 "Yes"
* include MentalWellnessCodeSystem#L2-0 "No"
* include MentalWellnessCodeSystem#L2-1 "Yes"
* include MentalWellnessCodeSystem#L24-0 "No"
* include MentalWellnessCodeSystem#L24-1 "Yes"
* include MentalWellnessCodeSystem#L28-0 "0 — Not at all"
* include MentalWellnessCodeSystem#L28-1 "1 — Slightly"
* include MentalWellnessCodeSystem#L28-2 "2 — Moderately"
* include MentalWellnessCodeSystem#L28-3 "3 — Considerably"
* include MentalWellnessCodeSystem#L28-4 "4 — Extremely"
* include MentalWellnessCodeSystem#L29-0 "0 — Not at all"
* include MentalWellnessCodeSystem#L29-1 "1 — Slightly"
* include MentalWellnessCodeSystem#L29-2 "2 — Moderately"
* include MentalWellnessCodeSystem#L29-3 "3 — Considerably"
* include MentalWellnessCodeSystem#L29-4 "4 — Extremely"
* include MentalWellnessCodeSystem#L30-0 "0 — No real problem, treatment not indicated"
* include MentalWellnessCodeSystem#L30-1 "1 — No real problem, treatment not indicated"
* include MentalWellnessCodeSystem#L30-2 "2 — Slight problem, treatment probably not necessary"
* include MentalWellnessCodeSystem#L30-3 "3 — Slight problem, treatment probably not necessary"
* include MentalWellnessCodeSystem#L30-4 "4 — Moderate problem, some treatment indicated"
* include MentalWellnessCodeSystem#L30-5 "5 — Moderate problem, some treatment indicated"
* include MentalWellnessCodeSystem#L30-6 "6 — Considerable problem, treatment necessary"
* include MentalWellnessCodeSystem#L30-7 "7 — Considerable problem, treatment necessary"
* include MentalWellnessCodeSystem#L30-8 "8 — Extreme problem, treatment absolutely necessary"
* include MentalWellnessCodeSystem#L30-9 "9 — Extreme problem, treatment absolutely necessary"
* include MentalWellnessCodeSystem#L31-0 "No"
* include MentalWellnessCodeSystem#L31-1 "Yes"
* include MentalWellnessCodeSystem#L32-0 "No"
* include MentalWellnessCodeSystem#L32-1 "Yes"
* include MentalWellnessCodeSystem#L33-0 "No"
* include MentalWellnessCodeSystem#L33-1 "Yes"
* include MentalWellnessCodeSystem#F1-1 "Married"
* include MentalWellnessCodeSystem#F1-2 "Remarried"
* include MentalWellnessCodeSystem#F1-3 "Widowed"
* include MentalWellnessCodeSystem#F1-4 "Separated"
* include MentalWellnessCodeSystem#F1-5 "Divorced"
* include MentalWellnessCodeSystem#F1-6 "Never married"
* include MentalWellnessCodeSystem#F3-0 "No"
* include MentalWellnessCodeSystem#F3-1 "Indifferent"
* include MentalWellnessCodeSystem#F3-2 "Yes"
* include MentalWellnessCodeSystem#F4-1 "With sexual partner and children"
* include MentalWellnessCodeSystem#F4-2 "With sexual partner alone"
* include MentalWellnessCodeSystem#F4-3 "With children alone"
* include MentalWellnessCodeSystem#F4-4 "With parents"
* include MentalWellnessCodeSystem#F4-5 "With siblings"
* include MentalWellnessCodeSystem#F4-6 "With friends"
* include MentalWellnessCodeSystem#F4-7 "Alone"
* include MentalWellnessCodeSystem#F4-8 "Controlled environment"
* include MentalWellnessCodeSystem#F4-9 "No stable arrangement"
* include MentalWellnessCodeSystem#F6-0 "No"
* include MentalWellnessCodeSystem#F6-1 "Indifferent"
* include MentalWellnessCodeSystem#F6-2 "Yes"
* include MentalWellnessCodeSystem#F7-0 "No"
* include MentalWellnessCodeSystem#F7-1 "Yes"
* include MentalWellnessCodeSystem#F8-0 "No"
* include MentalWellnessCodeSystem#F8-1 "Yes"
* include MentalWellnessCodeSystem#F9-1 "Family"
* include MentalWellnessCodeSystem#F9-2 "Friends"
* include MentalWellnessCodeSystem#F9-3 "Alone"
* include MentalWellnessCodeSystem#F10-0 "No"
* include MentalWellnessCodeSystem#F10-1 "Indifferent"
* include MentalWellnessCodeSystem#F10-2 "Yes"
* include MentalWellnessCodeSystem#F12-0 "Clearly no for all in class"
* include MentalWellnessCodeSystem#F12-1 "Clearly yes for any in class"
* include MentalWellnessCodeSystem#F12-2 "Uncertain or don't know"
* include MentalWellnessCodeSystem#F12-3 "Never was a relative"
* include MentalWellnessCodeSystem#F13-0 "Clearly no for all in class"
* include MentalWellnessCodeSystem#F13-1 "Clearly yes for any in class"
* include MentalWellnessCodeSystem#F13-2 "Uncertain or don't know"
* include MentalWellnessCodeSystem#F13-3 "Never was a relative"
* include MentalWellnessCodeSystem#F14-0 "Clearly no for all in class"
* include MentalWellnessCodeSystem#F14-1 "Clearly yes for any in class"
* include MentalWellnessCodeSystem#F14-2 "Uncertain or don't know"
* include MentalWellnessCodeSystem#F14-3 "Never was a relative"
* include MentalWellnessCodeSystem#F15-0 "Clearly no for all in class"
* include MentalWellnessCodeSystem#F15-1 "Clearly yes for any in class"
* include MentalWellnessCodeSystem#F15-2 "Uncertain or don't know"
* include MentalWellnessCodeSystem#F15-3 "Never was a relative"
* include MentalWellnessCodeSystem#F16-0 "Clearly no for all in class"
* include MentalWellnessCodeSystem#F16-1 "Clearly yes for any in class"
* include MentalWellnessCodeSystem#F16-2 "Uncertain or don't know"
* include MentalWellnessCodeSystem#F16-3 "Never was a relative"
* include MentalWellnessCodeSystem#F17-0 "Clearly no for all in class"
* include MentalWellnessCodeSystem#F17-1 "Clearly yes for any in class"
* include MentalWellnessCodeSystem#F17-2 "Uncertain or don't know"
* include MentalWellnessCodeSystem#F17-3 "Never was a relative"
* include MentalWellnessCodeSystem#F18-0 "No"
* include MentalWellnessCodeSystem#F18-1 "Yes"
* include MentalWellnessCodeSystem#F19-0 "No"
* include MentalWellnessCodeSystem#F19-1 "Yes"
* include MentalWellnessCodeSystem#F20-0 "No"
* include MentalWellnessCodeSystem#F20-1 "Yes"
* include MentalWellnessCodeSystem#F21-0 "No"
* include MentalWellnessCodeSystem#F21-1 "Yes"
* include MentalWellnessCodeSystem#F22-0 "No"
* include MentalWellnessCodeSystem#F22-1 "Yes"
* include MentalWellnessCodeSystem#F23-0 "No"
* include MentalWellnessCodeSystem#F23-1 "Yes"
* include MentalWellnessCodeSystem#F24-0 "No"
* include MentalWellnessCodeSystem#F24-1 "Yes"
* include MentalWellnessCodeSystem#F25-0 "No"
* include MentalWellnessCodeSystem#F25-1 "Yes"
* include MentalWellnessCodeSystem#F26-0 "No"
* include MentalWellnessCodeSystem#F26-1 "Yes"
* include MentalWellnessCodeSystem#past30-0 "No"
* include MentalWellnessCodeSystem#past30-1 "Yes"
* include MentalWellnessCodeSystem#lifetime-0 "No"
* include MentalWellnessCodeSystem#lifetime-1 "Yes"
* include MentalWellnessCodeSystem#F32-0 "0 — Not at all"
* include MentalWellnessCodeSystem#F32-1 "1 — Slightly"
* include MentalWellnessCodeSystem#F32-2 "2 — Moderately"
* include MentalWellnessCodeSystem#F32-3 "3 — Considerably"
* include MentalWellnessCodeSystem#F32-4 "4 — Extremely"
* include MentalWellnessCodeSystem#F33-0 "0 — Not at all"
* include MentalWellnessCodeSystem#F33-1 "1 — Slightly"
* include MentalWellnessCodeSystem#F33-2 "2 — Moderately"
* include MentalWellnessCodeSystem#F33-3 "3 — Considerably"
* include MentalWellnessCodeSystem#F33-4 "4 — Extremely"
* include MentalWellnessCodeSystem#F34-0 "0 — Not at all"
* include MentalWellnessCodeSystem#F34-1 "1 — Slightly"
* include MentalWellnessCodeSystem#F34-2 "2 — Moderately"
* include MentalWellnessCodeSystem#F34-3 "3 — Considerably"
* include MentalWellnessCodeSystem#F34-4 "4 — Extremely"
* include MentalWellnessCodeSystem#F35-0 "0 — Not at all"
* include MentalWellnessCodeSystem#F35-1 "1 — Slightly"
* include MentalWellnessCodeSystem#F35-2 "2 — Moderately"
* include MentalWellnessCodeSystem#F35-3 "3 — Considerably"
* include MentalWellnessCodeSystem#F35-4 "4 — Extremely"
* include MentalWellnessCodeSystem#F36-0 "0 — No real problem, treatment not indicated"
* include MentalWellnessCodeSystem#F36-1 "1 — No real problem, treatment not indicated"
* include MentalWellnessCodeSystem#F36-2 "2 — Slight problem, treatment probably not necessary"
* include MentalWellnessCodeSystem#F36-3 "3 — Slight problem, treatment probably not necessary"
* include MentalWellnessCodeSystem#F36-4 "4 — Moderate problem, some treatment indicated"
* include MentalWellnessCodeSystem#F36-5 "5 — Moderate problem, some treatment indicated"
* include MentalWellnessCodeSystem#F36-6 "6 — Considerable problem, treatment necessary"
* include MentalWellnessCodeSystem#F36-7 "7 — Considerable problem, treatment necessary"
* include MentalWellnessCodeSystem#F36-8 "8 — Extreme problem, treatment absolutely necessary"
* include MentalWellnessCodeSystem#F36-9 "9 — Extreme problem, treatment absolutely necessary"
* include MentalWellnessCodeSystem#F37-0 "No"
* include MentalWellnessCodeSystem#F37-1 "Yes"
* include MentalWellnessCodeSystem#F38-0 "No"
* include MentalWellnessCodeSystem#F38-1 "Yes"
* include MentalWellnessCodeSystem#F39-0 "No"
* include MentalWellnessCodeSystem#F39-1 "Yes"
* include MentalWellnessCodeSystem#P4-0 "No"
* include MentalWellnessCodeSystem#P4-1 "Yes"
* include MentalWellnessCodeSystem#P5-0 "No"
* include MentalWellnessCodeSystem#P5-1 "Yes"
* include MentalWellnessCodeSystem#P6-0 "No"
* include MentalWellnessCodeSystem#P6-1 "Yes"
* include MentalWellnessCodeSystem#P7-0 "No"
* include MentalWellnessCodeSystem#P7-1 "Yes"
* include MentalWellnessCodeSystem#P8-0 "No"
* include MentalWellnessCodeSystem#P8-1 "Yes"
* include MentalWellnessCodeSystem#P9-0 "No"
* include MentalWellnessCodeSystem#P9-1 "Yes"
* include MentalWellnessCodeSystem#P10-0 "No"
* include MentalWellnessCodeSystem#P10-1 "Yes"
* include MentalWellnessCodeSystem#P11-0 "No"
* include MentalWellnessCodeSystem#P11-1 "Yes"
* include MentalWellnessCodeSystem#P13-0 "0 — Not at all"
* include MentalWellnessCodeSystem#P13-1 "1 — Slightly"
* include MentalWellnessCodeSystem#P13-2 "2 — Moderately"
* include MentalWellnessCodeSystem#P13-3 "3 — Considerably"
* include MentalWellnessCodeSystem#P13-4 "4 — Extremely"
* include MentalWellnessCodeSystem#P14-0 "0 — Not at all"
* include MentalWellnessCodeSystem#P14-1 "1 — Slightly"
* include MentalWellnessCodeSystem#P14-2 "2 — Moderately"
* include MentalWellnessCodeSystem#P14-3 "3 — Considerably"
* include MentalWellnessCodeSystem#P14-4 "4 — Extremely"
* include MentalWellnessCodeSystem#P15-0 "No"
* include MentalWellnessCodeSystem#P15-1 "Yes"
* include MentalWellnessCodeSystem#P16-0 "No"
* include MentalWellnessCodeSystem#P16-1 "Yes"
* include MentalWellnessCodeSystem#P17-0 "No"
* include MentalWellnessCodeSystem#P17-1 "Yes"
* include MentalWellnessCodeSystem#P18-0 "No"
* include MentalWellnessCodeSystem#P18-1 "Yes"
* include MentalWellnessCodeSystem#P19-0 "No"
* include MentalWellnessCodeSystem#P19-1 "Yes"
* include MentalWellnessCodeSystem#P20-0 "No"
* include MentalWellnessCodeSystem#P20-1 "Yes"
* include MentalWellnessCodeSystem#P21-0 "0 — No real problem, treatment not indicated"
* include MentalWellnessCodeSystem#P21-1 "1 — No real problem, treatment not indicated"
* include MentalWellnessCodeSystem#P21-2 "2 — Slight problem, treatment probably not necessary"
* include MentalWellnessCodeSystem#P21-3 "3 — Slight problem, treatment probably not necessary"
* include MentalWellnessCodeSystem#P21-4 "4 — Moderate problem, some treatment indicated"
* include MentalWellnessCodeSystem#P21-5 "5 — Moderate problem, some treatment indicated"
* include MentalWellnessCodeSystem#P21-6 "6 — Considerable problem, treatment necessary"
* include MentalWellnessCodeSystem#P21-7 "7 — Considerable problem, treatment necessary"
* include MentalWellnessCodeSystem#P21-8 "8 — Extreme problem, treatment absolutely necessary"
* include MentalWellnessCodeSystem#P21-9 "9 — Extreme problem, treatment absolutely necessary"
* include MentalWellnessCodeSystem#P22-0 "No"
* include MentalWellnessCodeSystem#P22-1 "Yes"
* include MentalWellnessCodeSystem#P23-0 "No"
* include MentalWellnessCodeSystem#P23-1 "Yes"
* include MentalWellnessCodeSystem#P24-0 "No"
* include MentalWellnessCodeSystem#P24-1 "Yes"

ValueSet: MentalWellnessBdiAnswers
Id: mental-wellness-bdi-answers
Title: "BDI Answers"
Description: "The Beck depression inventory statements; the code suffix after the dash is the statement score."
* ^status = #active
* ^experimental = false
* include MentalWellnessCodeSystem#bdi.1-0 "I do not feel sad."
* include MentalWellnessCodeSystem#bdi.1-1 "I feel sad."
* include MentalWellnessCodeSystem#bdi.1-2 "I am sad all the time and I can't snap out of it."
* include MentalWellnessCodeSystem#bdi.1-3 "I am so sad and unhappy that I can't stand it."
* include MentalWellnessCodeSystem#bdi.2-0 "I am not particularly discouraged about the future."
* include MentalWellnessCodeSystem#bdi.2-1 "I feel discouraged about the future."
* include MentalWellnessCodeSystem#bdi.2-2 "I feel I have nothing to look forward to."
* include MentalWellnessCodeSystem#bdi.2-3 "I feel the future is hopeless and that things cannot improve."
* include MentalWellnessCodeSystem#bdi.3-0 "I do not feel like a failure."
* include MentalWellnessCodeSystem#bdi.3-1 "I feel I have failed more than the average person."
* include MentalWellnessCodeSystem#bdi.3-2 "As I look back on my life, all I can see is a lot of failures."
* include MentalWellnessCodeSystem#bdi.3-3 "I feel I am a complete failure as a person."
* include MentalWellnessCodeSystem#bdi.4-0 "I get as much satisfaction out of things as I used to."
* include MentalWellnessCodeSystem#bdi.4-1 "I don't enjoy things the way I used to."
* include MentalWellnessCodeSystem#bdi.4-2 "I don't get real satisfaction out of anything anymore."
* include MentalWellnessCodeSystem#bdi.4-3 "I am dissatisfied or bored with everything."
* include MentalWellnessCodeSystem#bdi.5-0 "I don't feel particularly guilty."
* include MentalWellnessCodeSystem#bdi.5-1 "I feel guilty a good part of the time."
* include MentalWellnessCodeSystem#bdi.5-2 "I feel quite guilty most of the time."
* include MentalWellnessCodeSystem#bdi.5-3 "I feel guilty all of the time."
* include MentalWellnessCodeSystem#bdi.6-0 "I don't feel I am being punished."
* include MentalWellnessCodeSystem#bdi.6-1 "I feel I may be punished."
* include MentalWellnessCodeSystem#bdi.6-2 "I expect to be punished."
* include MentalWellnessCodeSystem#bdi.6-3 "I feel I am being punished."
* include MentalWellnessCodeSystem#bdi.7-0 "I don't feel disappointed in myself."
* include MentalWellnessCodeSystem#bdi.7-1 "I am disappointed in myself."
* include MentalWellnessCodeSystem#bdi.7-2 "I am disgusted with myself."
* include MentalWellnessCodeSystem#bdi.7-3 "I hate myself."
* include MentalWellnessCodeSystem#bdi.8-0 "I don't feel I am any worse than anybody else."
* include MentalWellnessCodeSystem#bdi.8-1 "I am critical of myself for my weaknesses or mistakes."
* include MentalWellnessCodeSystem#bdi.8-2 "I blame myself all the time for my faults."
* include MentalWellnessCodeSystem#bdi.8-3 "I blame myself for everything bad that happens."
* include MentalWellnessCodeSystem#bdi.9-0 "I don't have any thoughts of killing myself."
* include MentalWellnessCodeSystem#bdi.9-1 "I have thoughts of killing myself, but I would not carry them out."
* include MentalWellnessCodeSystem#bdi.9-2 "I would like to kill myself."
* include MentalWellnessCodeSystem#bdi.9-3 "I would kill myself if I had the chance."
* include MentalWellnessCodeSystem#bdi.10-0 "I don't cry any more than usual."
* include MentalWellnessCodeSystem#bdi.10-1 "I cry more now than I used to."
* include MentalWellnessCodeSystem#bdi.10-2 "I cry all the time now."
* include MentalWellnessCodeSystem#bdi.10-3 "I used to be able to cry, but now I can't cry even though I want to."
* include MentalWellnessCodeSystem#bdi.11-0 "I am no more irritated by things than I ever was."
* include MentalWellnessCodeSystem#bdi.11-1 "I am slightly more irritated now than usual."
* include MentalWellnessCodeSystem#bdi.11-2 "I am quite annoyed or irritated a good deal of the time."
* include MentalWellnessCodeSystem#bdi.11-3 "I feel irritated all the time."
* include MentalWellnessCodeSystem#bdi.12-0 "I have not lost interest in other people."
* include MentalWellnessCodeSystem#bdi.12-1 "I am less interested in other people than I used to be."
* include MentalWellnessCodeSystem#bdi.12-2 "I have lost most of my interest in other people."
* include MentalWellnessCodeSystem#bdi.12-3 "I have lost all of my interest in other people."
* include MentalWellnessCodeSystem#bdi.13-0 "I make decisions about as well as I ever could."
* include MentalWellnessCodeSystem#bdi.13-1 "I put off making decisions more than I used to."
* include MentalWellnessCodeSystem#bdi.13-2 "I have greater difficulty in making decisions than I used to."
* include MentalWellnessCodeSystem#bdi.13-3 "I can't make decisions at all anymore."
* include MentalWellnessCodeSystem#bdi.14-0 "I don't feel that I look any worse than I used to."
* include MentalWellnessCodeSystem#bdi.14-1 "I am worried that I am looking old or unattractive."
* include MentalWellnessCodeSystem#bdi.14-2 "I feel there are permanent changes in my appearance that make me look unattractive."
* include MentalWellnessCodeSystem#bdi.14-3 "I believe that I look ugly."
* include MentalWellnessCodeSystem#bdi.15-0 "I can work about as well as before."
* include MentalWellnessCodeSystem#bdi.15-1 "It takes an extra effort to get started at doing something."
* include MentalWellnessCodeSystem#bdi.15-2 "I have to push myself very hard to do anything."
* include MentalWellnessCodeSystem#bdi.15-3 "I can't do any work at all."
* include MentalWellnessCodeSystem#bdi.16-0 "I can sleep as well as usual."
* include MentalWellnessCodeSystem#bdi.16-1 "I don't sleep as well as I used to."
* include MentalWellnessCodeSystem#bdi.16-2 "I wake up 1-2 hours earlier than usual and find it hard to get back to sleep."
* include MentalWellnessCodeSystem#bdi.16-3 "I wake up several hours earlier than I used to and cannot get back to sleep."
* include MentalWellnessCodeSystem#bdi.17-0 "I don't get more tired than usual."
* include MentalWellnessCodeSystem#bdi.17-1 "I get tired more easily than I used to."
* include MentalWellnessCodeSystem#bdi.17-2 "I get tired from doing almost anything."
* include MentalWellnessCodeSystem#bdi.17-3 "I am too tired to do anything."
* include MentalWellnessCodeSystem#bdi.18-0 "My appetite is no worse than usual."
* include MentalWellnessCodeSystem#bdi.18-1 "My appetite is not as good as it used to be."
* include MentalWellnessCodeSystem#bdi.18-2 "My appetite is much worse now."
* include MentalWellnessCodeSystem#bdi.18-3 "I have no appetite at all anymore."
* include MentalWellnessCodeSystem#bdi.19-0 "I haven't lost much weight, if any, lately."
* include MentalWellnessCodeSystem#bdi.19-1 "I have lost more than five pounds."
* include MentalWellnessCodeSystem#bdi.19-2 "I have lost more than ten pounds."
* include MentalWellnessCodeSystem#bdi.19-3 "I have lost more than fifteen pounds."
* include MentalWellnessCodeSystem#bdi.20-0 "I am no more worried about my health than usual."
* include MentalWellnessCodeSystem#bdi.20-1 "I am worried about physical problems like aches, pains, upset stomach or constipation."
* include MentalWellnessCodeSystem#bdi.20-2 "I am very worried about physical problems and it's hard to think of much else."
* include MentalWellnessCodeSystem#bdi.20-3 "I am so worried about my physical problems that I cannot think of anything else."
* include MentalWellnessCodeSystem#bdi.21-0 "I have not noticed any recent change in my interest in sex."
* include MentalWellnessCodeSystem#bdi.21-1 "I am less interested in sex than I used to be."
* include MentalWellnessCodeSystem#bdi.21-2 "I have almost no interest in sex."
* include MentalWellnessCodeSystem#bdi.21-3 "I have lost interest in sex completely."

ValueSet: MentalWellnessClinicalHistoryItems
Id: mental-wellness-clinical-history-items
Title: "Clinical History Items"
Description: "The examination, history, mental state examination and formulation questions of the clinical and psychological history."
* ^status = #active
* ^experimental = false
* include MentalWellnessCodeSystem#examination.pallor "Pallor"
* include MentalWellnessCodeSystem#examination.oedema "Oedema"
* include MentalWellnessCodeSystem#examination.dehydration "Dehydration"
* include MentalWellnessCodeSystem#examination.oralThrush "Oral thrush"
* include MentalWellnessCodeSystem#examination.cyanosis "Cyanosis"
* include MentalWellnessCodeSystem#history.presentingProblem "The presenting problem, allegations or reasons for admission"
* include MentalWellnessCodeSystem#history.historyOfPresenting "History of the presenting problem"
* include MentalWellnessCodeSystem#history.pastPsychiatric "Past psychiatric history and previous treatment"
* include MentalWellnessCodeSystem#history.pastMedical "Past medical and surgical history and treatment, including vegetative signs"
* include MentalWellnessCodeSystem#history.family "Family history"
* include MentalWellnessCodeSystem#history.developmental "Developmental history — prenatal where possible, birth, childhood milestones, schooling ..."
* include MentalWellnessCodeSystem#history.social "Social and interpersonal relationships"
* include MentalWellnessCodeSystem#history.sexuality "Sexuality and sexual history"
* include MentalWellnessCodeSystem#history.suicidality "Suicidality"
* include MentalWellnessCodeSystem#mse.appearanceBehaviour "Appearance and behaviour"
* include MentalWellnessCodeSystem#mse.attitude "Attitude"
* include MentalWellnessCodeSystem#mse.grooming "General appearance and grooming"
* include MentalWellnessCodeSystem#mse.facialExpression "Facial expression"
* include MentalWellnessCodeSystem#mse.posture "Posture"
* include MentalWellnessCodeSystem#mse.gait "Gait"
* include MentalWellnessCodeSystem#mse.psychomotor "Psychomotor activity"
* include MentalWellnessCodeSystem#mse.speech "Voice, speech and language"
* include MentalWellnessCodeSystem#mse.mood "Mood"
* include MentalWellnessCodeSystem#mse.affect "Affect"
* include MentalWellnessCodeSystem#mse.thought "Thought content and process"
* include MentalWellnessCodeSystem#mse.perception "Perception"
* include MentalWellnessCodeSystem#mse.cognition "Cognitive processes"
* include MentalWellnessCodeSystem#mse.orientationTime "Orientation — time"
* include MentalWellnessCodeSystem#mse.orientationPeople "Orientation — people"
* include MentalWellnessCodeSystem#mse.orientationPlace "Orientation — place"
* include MentalWellnessCodeSystem#mse.consciousness "Level of consciousness"
* include MentalWellnessCodeSystem#mse.attention "Attention and concentration"
* include MentalWellnessCodeSystem#mse.memoryImmediate "Memory — immediate"
* include MentalWellnessCodeSystem#mse.memoryRecent "Memory — recent"
* include MentalWellnessCodeSystem#mse.memoryPast "Memory — past"
* include MentalWellnessCodeSystem#mse.insightJudgment "Insight and judgment"
* include MentalWellnessCodeSystem#formulation.diagnostic "Diagnostic formulation"
* include MentalWellnessCodeSystem#formulation.impression "Impression"
* include MentalWellnessCodeSystem#formulation.treatmentPlan "Treatment plan"

ValueSet: MentalWellnessNoteSections
Id: mental-wellness-note-sections
Title: "Note Section Headings"
Description: "The section headings of the SOAP and case conference notes."
* ^status = #active
* ^experimental = false
* include MentalWellnessCodeSystem#part1.soap.subjective "Subjective"
* include MentalWellnessCodeSystem#part1.soap.objective "Objective"
* include MentalWellnessCodeSystem#part1.soap.assessment "Assessment"
* include MentalWellnessCodeSystem#part1.soap.plan "Plan"
* include MentalWellnessCodeSystem#part2.summary "Admission summary"
* include MentalWellnessCodeSystem#part2.recommendation "Recommendation"
* include MentalWellnessCodeSystem#soap.subjective "Subjective"
* include MentalWellnessCodeSystem#soap.objective "Objective"
* include MentalWellnessCodeSystem#soap.assessment "Assessment"
* include MentalWellnessCodeSystem#soap.plan "Plan"
* include MentalWellnessCodeSystem#progress "Progress"
* include MentalWellnessCodeSystem#stuckPoint.issue "Stuck point"
* include MentalWellnessCodeSystem#stuckPoint.intervention "Intervention"
* include MentalWellnessCodeSystem#stuckPoint.objective "Objective"

ValueSet: MentalWellnessCaseConferenceProblems
Id: mental-wellness-case-conference-problems
Title: "Case Conference Problem Categories"
Description: "The problem categories a case conference names; each becomes a Condition category."
* ^status = #active
* ^experimental = false
* include MentalWellnessCodeSystem#primaryAddiction "Primary addiction"
* include MentalWellnessCodeSystem#secondaryAddiction "Secondary addiction"
* include MentalWellnessCodeSystem#medicalProblem "Active medical problem"
* include MentalWellnessCodeSystem#psychiatricCondition "Psychiatric condition"

ValueSet: MentalWellnessClearanceDepartments
Id: mental-wellness-clearance-departments
Title: "Clearance Departments"
Description: "The departments that sign off a discharge clearance; one Task per cleared department."
* ^status = #active
* ^experimental = false
* include MentalWellnessCodeSystem#adminAccounts "Admin / Accounts"
* include MentalWellnessCodeSystem#primaryCounsellor "Primary counsellor"
* include MentalWellnessCodeSystem#store "Store"
* include MentalWellnessCodeSystem#socialWork "Social work"
* include MentalWellnessCodeSystem#libraryNhif "Library / NHIF"
* include MentalWellnessCodeSystem#pharmacyNursing "Pharmacy / Nursing"
* include MentalWellnessCodeSystem#dischargeOfficer "Discharge officer"
* include MentalWellnessCodeSystem#securityOfficer "Security officer"

ValueSet: MentalWellnessClearanceReasons
Id: mental-wellness-clearance-reasons
Title: "Clearance Reasons"
Description: "Why the client is being cleared."
* ^status = #active
* ^experimental = false
* include MentalWellnessCodeSystem#referral "Referral"
* include MentalWellnessCodeSystem#completion "Completion"
* include MentalWellnessCodeSystem#withdrawal "Withdrawal"

ValueSet: MentalWellnessEducationLessons
Id: mental-wellness-education-lessons
Title: "Client Education Lessons"
Description: "The twenty-four lessons of the client education curriculum; one Procedure per lesson covered."
* ^status = #active
* ^experimental = false
* include MentalWellnessCodeSystem#orientation "Orientation"
* include MentalWellnessCodeSystem#selfAcceptance "Self-acceptance and denial management"
* include MentalWellnessCodeSystem#rootCause "Identifying the root cause of addiction"
* include MentalWellnessCodeSystem#understandingAddiction "Understanding addiction"
* include MentalWellnessCodeSystem#effects "Effects of drugs and alcohol, including the correlation with HIV/AIDS"
* include MentalWellnessCodeSystem#selfEsteem "Low self-esteem"
* include MentalWellnessCodeSystem#timeAndLeisure "Time and leisure management"
* include MentalWellnessCodeSystem#higherPower "The concept of a higher power or God"
* include MentalWellnessCodeSystem#prayer "Prayer, meditation and devotion"
* include MentalWellnessCodeSystem#summaryEarly "Summary and preparation for late recovery"
* include MentalWellnessCodeSystem#anger "Anger and emotion management"
* include MentalWellnessCodeSystem#characterDefects "Identifying and overcoming character and personality defects"
* include MentalWellnessCodeSystem#personalityPrinciples "Personality and principles"
* include MentalWellnessCodeSystem#guiltShameStress "Managing guilt, shame and stress"
* include MentalWellnessCodeSystem#virtuesValues "Virtues, values and attitude"
* include MentalWellnessCodeSystem#summaryLate "Summary and preparation for the maintenance stage"
* include MentalWellnessCodeSystem#familyCommunity "Family, friends and community"
* include MentalWellnessCodeSystem#selfWorth "Self-worth and respect"
* include MentalWellnessCodeSystem#lifeSkills "Life skills training"
* include MentalWellnessCodeSystem#relapsePrevention "Slip and relapse prevention and management"
* include MentalWellnessCodeSystem#vocation "Vocation and preparation for re-integration"
* include MentalWellnessCodeSystem#celebrating "Celebrating recovery"
* include MentalWellnessCodeSystem#summaryGraduation "Summary and preparation for graduation"
* include MentalWellnessCodeSystem#graduation "Graduation from the programme"

ValueSet: MentalWellnessStagesOfChange
Id: mental-wellness-stages-of-change
Title: "Stages of Change"
Description: "The transtheoretical stages of change recorded at a case conference."
* ^status = #active
* ^experimental = false
* include MentalWellnessCodeSystem#pre-contemplative "Pre-contemplative"
* include MentalWellnessCodeSystem#contemplative "Contemplative"
* include MentalWellnessCodeSystem#decisional "Decisional"
* include MentalWellnessCodeSystem#action "Action"
* include MentalWellnessCodeSystem#maintenance "Maintenance"

ValueSet: MentalWellnessVitalStatus
Id: mental-wellness-vital-status
Title: "Family Member Vital Status"
Description: "Whether a family member in the genealogy is alive or dead."
* ^status = #active
* ^experimental = false
* include MentalWellnessCodeSystem#alive "Alive"
* include MentalWellnessCodeSystem#dead "Deceased"

ValueSet: MentalWellnessContactPersons
Id: mental-wellness-contact-persons
Title: "Aftercare Contact Persons"
Description: "Who an aftercare follow-up contact reached."
* ^status = #active
* ^experimental = false
* include MentalWellnessCodeSystem#self "Self"
* include MentalWellnessCodeSystem#significant-other "Significant other"

ValueSet: MentalWellnessCommunicationCategories
Id: mental-wellness-communication-categories
Title: "Mental Wellness Communication Categories"
Description: "The categories of Communication the templates log."
* ^status = #active
* ^experimental = false
* include MentalWellnessCodeSystem#aftercare-follow-up "Aftercare follow-up"
