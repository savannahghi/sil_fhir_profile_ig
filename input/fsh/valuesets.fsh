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
Title: "SGHI Practitioner Value Set"
Description: "Custom practioner specialty value set"
* include codes from system SGHIPractitionerSpecialtyCodeSystem


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
* include SGHIVisitTypeCodeSystem#orthopaedic-clinic "Orthopaedic Clinic"
* include SGHIVisitTypeCodeSystem#occupational-therapy-clinic "Occupational Therapy Clinic"
* include SGHIVisitTypeCodeSystem#physiotherapy-clinic "Physiotherapy Clinic"
* include SGHIVisitTypeCodeSystem#medical-clinics "Medical Clinics"
* include SGHIVisitTypeCodeSystem#surgical-clinics "Surgical Clinics"
* include SGHIVisitTypeCodeSystem#paediatrics "Paediatrics"

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
