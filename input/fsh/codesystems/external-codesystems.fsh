// ─────────────────────────────────────────────────────────────────────────────
// Hospital paper forms (derived from North Hospital Discovery)
//
// The terminology the fifteen questionnaires need and that no published
// system supplies. Every code here was minted only after searching LOINC and
// SNOMED and finding nothing that says the same thing; where LOINC does have the
// concept, the questionnaire and its extraction map name LOINC and nothing is
// added here. The split follows the one already drawn for the inpatient notes:
//
//   concept-codesystem  — what is being recorded (Observation.code,
//                                  ServiceRequest.code, CarePlan.category,
//                                  Procedure.code)
//   answer-codesystem   — the answers a pick list offers, unweighted
//   score-codesystem    — the answers a *scored* instrument offers,
//                                  namespaced instrument-item-weight so the
//                                  extraction map can read the weight off the
//                                  code when a client submits no total
//   document-type-codesystem — the paper form a response came from,
//                                  for Composition.type and DocumentReference.type
// ─────────────────────────────────────────────────────────────────────────────

CodeSystem: SGHIDocumentTypeCodeSystem
Id: document-type-codesystem
Title: "SGHI Document Type Code System"
Description: "The hospital paper forms that have been modelled as Questionnaires. Each code names one form, so a QuestionnaireResponse or an extracted Composition can say which sheet of the paper chart it stands in for. LOINC codes are carried alongside where LOINC names the same document — the discharge summary and the operation note — and the rest are local because they are this hospital's own forms."
* ^status = #active
* ^experimental = false
* ^content = #complete
* ^caseSensitive = true
* #paediatric-admission-record "Paediatric admission record" "The three-page structured admission record used on the paediatric ward: presenting illness, immunisation, examination by system, investigations ordered and the coded admission diagnoses."
* #newborn-admission-record "Newborn admission record" "The structured admission record for a baby admitted to the newborn unit, including intranatal history and the newborn examination."
* #newborn-observation-chart "Newborn observation chart" "Apgar at one, five and ten minutes, the observations taken during the first two hours of skin-to-skin, and the twice-daily newborn follow-up over the first four days."
* #maternity-record "Maternity record" "The maternity admission record: present pregnancy, past obstetric history, examination on admission, the plan, and the report on labour or caesarean section."
* #bishop-score "Bishop score" "Cervical assessment before induction of labour, scored across dilation, effacement, consistency, position and station."
* #paediatric-triage-record "Paediatric triage record" "The casualty triage sheet for a child: triage level, vital signs, the SAMPLE history and the emergency and priority signs looked for."
* #surgical-safety-checklist "Surgical safety checklist" "The hospital's pre-operative and post-operative ward checklist together with the WHO three-phase theatre checklist."
* #anaesthetic-record "Anaesthetic record" "The intra-operative anaesthetic chart: technique, agents, the observations recorded through the case, blood loss and the reversal and post-operative instructions."
* #palliative-care-assessment "Palliative care assessment" "The palliative care service's first assessment: the symptom checklist, prior oncological treatment, and the social and spiritual assessment with the problem and action plan."
* #blood-donor-questionnaire "Blood donor questionnaire" "The Kenya Tissue and Transplant Authority donor form (FRM CLN 001): donor details, the deferral questionnaire, the declaration and consent, and the donor screening and donation outcome."
* #haemodialysis-session-record "Haemodialysis session record" "The dialysis flow chart for one session: access and virology screen, the prescription, the machine check and the observations taken through the run."
* #imaging-request "Imaging request" "The X-ray and ultrasound request forms, which ask the same four things: what is wanted, why, the clinical summary and how urgently."
* #chemotherapy-prescription "Chemotherapy prescription" "The oncology prescription sheet: staging and body surface area, the mandatory pre-cycle investigations, pre- and post-hydration, premedication and the cytotoxic drugs by cycle."
* #discharge-summary "Discharge summary" "The sheet the patient leaves with: diagnoses, clinical summary, management given, discharge medication and instructions, plus the ward clearance sign-off."
* #procedure-consent "Consent for a procedure or treatment" "The hospital's general consent form for an operation or treatment, and the two procedure-specific variants for endoscopy and for systemic anti-cancer therapy."
* #icu-neurological-chart "ICU neurological observation chart" "The 24-hour ICU chart: Glasgow Coma Scale, limb power, pupils and vitals, charted round by round rather than once a shift, because a deteriorating conscious level is only visible as a series."
* #decline-form "Decline form" "The bilingual form on which a patient or their next of kin records a refusal of care, a procedure or an assessment, and where they are going instead."
* #endoscopy-investigation "Endoscopy service investigation form" "The endoscopy unit's single sheet: the request, the procedure, the findings, the conclusion and the treatment suggested."
* #medical-report "Medical report" "A report on a completed admission written for someone outside the treating team -- an insurer, a court, another hospital."
* #patient-referral "Patient referral form" "The form on which a patient is referred on to another unit or facility, carrying the history, the working diagnosis, the treatment already given and the reason for referral."
* #psychological-review "Psychological review notes" "A counselling or therapy session recorded as a SOAP note, numbered within the episode of care."
* #blood-requisition "Blood requisition form" "The blood bank requisition: products requested, recipient group, each issued unit with its bag number and cross-match result, and any transfusion reaction."
* #paediatric-nutrition-assessment "Paediatric nutrition assessment form" "The nutrition unit's assessment of a child: family and feeding history, anthropometry, nutritional diagnosis and prescription."
* #prescription-pad "Prescription" "The out-patient prescription slip: five numbered lines and a doctor's signature, with no dose or frequency column of its own."
* #mortality-committee-findings "Mortality committee findings and recommendations" "The death review: nine numbered questions from the presenting complaint through to the committee's opinion and its recommendation."
* #chemotherapy-protocol-cycles "Chemotherapy protocol cycle record" "The 2-, 3- and 4-weekly protocol sheet: one row per cycle carrying the counts and renal function that decide whether the cycle runs."
* #family-conference "Patient, family and doctors' conference record" "The record of a conference held with a patient and their family, including any resuscitation decision reached."
* #icu-observation-chart "ICU observation chart" "The 24-hour intensive care chart: vitals and CVP, the arterial blood gas, and the ventilator settings, round by round."
* #hdu-input-output-chart "HDU input and output chart" "The high dependency unit's hourly fluid balance: parenteral and oral intake against aspirate, vomit, drain, urine and stool, with the 24-hour balance."
* #lab-requisition-serology "Medical laboratory requisition" "The general laboratory requisition: specimen, urgency, clinical history and the investigations wanted, with the result and dispatch block on the same sheet."
* #newborn-unit-handover "Newborn unit handover form" "The handover taken when a baby arrives in the newborn unit: intranatal history, ANC profile, birth history and the first vital signs."
* #newborn-comprehensive-chart "Newborn comprehensive chart" "The newborn unit's daily sheet: the feed and fluid prescription, the IV nursing plan, the interventions in place, hourly observations, and a shift note with the baby's acuity category."
* #plates-and-screws "Plates and screws" "The orthopaedic implant tally: forty printed line items with a count against each, signed at the foot."
* #head-injury-chart "Head injury and craniotomy chart" "The one- or two-hourly neurological chart used after a head injury or a craniotomy: its own four-point conscious level, pupils per side, fits, spontaneous movement and paralysis by limb."
* #theatre-miscellaneous-items "Theatre miscellaneous items" "The tally of consumables issued from theatre stock against one patient."
* #outpatient-summary "Out-patient summary form" "The out-patient visit summary: complaints, provisional diagnosis and interventions."
* #patient-satisfaction "Patient satisfaction questionnaire" "The service-quality survey given to out-patient, casualty, MCH and in-patient users. The only form in this set with no clinical extraction."
* #coagulation-profile-requisition "Coagulation profile requisition" "The coagulation requisition, which prints its own reference ranges for PT, INR and APTT -- the INR range applying only to a patient on stabilised oral anticoagulants."
* #mortuary-services-request "Mortuary services request form" "The request that accompanies a body into the mortuary, covering both hospital deaths and bodies brought from home or by the police."
* #mortuary-release "Mortuary release form" "The release of a body for transfer to another hospital's morgue."
* #mortuary-baby-disposal-consent "Mortuary consent form, disposal of a baby" "The authorisation given by a parent or next of kin for the hospital to dispose of a baby's body."
* #mortuary-admission "Mortuary admission form" "The admission of a body into the mortuary: registration tag, where the body came from, next of kin and the relatives accompanying it."
* #body-part-disposal-consent "Body part disposal consent form" "The consent taken before surgery for what happens to a removed body part -- released to the family, or disposed of by the hospital."
* #paediatric-nebulization-chart "Paediatric nebulization chart" "Each nebulisation given: the drug, the amount and the frequency, with the time it was given and who gave it."
* #surgical-irrigation-record "Surgical continuous irrigation record" "The hourly balance of a continuous bladder irrigation: solution and volume in against volume out, with the colour of the return."
* #milk-feeding-chart "Milk feeding chart" "The three-hourly feed target against what was actually given, what was retained, and whether the baby passed urine and stool."
* #vent-monitoring-chart "Ventilator monitoring chart" "The ventilator settings charted over time: mode, PEEP, peak inspiratory pressure and FiO2, with the changes made."
* #cpap-monitoring-chart "CPAP monitoring chart" "The CPAP settings charted over time: the distending pressure, the gas flow and FiO2, with the change made at each reading and any remark. The ventilator chart's shape with two fewer columns."
* #embalming-authorization "Embalming authorization form" "The next of kin's authorisation for a body to be embalmed while the burial is arranged."
* #paediatric-vital-sign-chart "Paediatric vital sign observation chart" "Four observation rounds a day over ten days: temperature and how it was controlled, pulse, respiration, blood pressure, oxygen saturation and any oxygen given."
* #admission-form "Admission form" "The nursing admission: where the patient came from and how they arrived, the presenting symptoms, a head-to-toe assessment, the chronic illness history, and the investigations and treatment ordered on arrival."
* #rehabilitation-services "Rehabilitation services record" "Each rehabilitation contact: the units billed, the devices and materials used, and the progress note."
* #nicu-monitoring-chart "NICU monitoring chart" "The neonatal unit's hourly chart: vitals, an assessment including jaundice and apnoea, the ventilator settings and the blood gas."
* #theatre-pacu-observation "Theatre PACU observation form" "Timed recovery-room observations after anaesthesia, with the drugs given and remarks."
* #pacu-nurses-notes "PACU nurses notes" "The recovery-room nursing narrative, timestamped and signed per entry."
* #theatre-note "Theatre note" "The operation note: diagnosis, procedure, incision, the surgical and anaesthetic team, and the description of what was done."
* #doctors-notes "Doctors notes continuation sheet" "The ward round narrative, timestamped and signed per entry."
* #surgical-dressing-chart "Surgical dressing chart" "Each dressing change, with the sheet's own three-letter grading and a remark."
* #feeding-and-position-chart "Feeding and position chart" "How much a patient was fed and how they were positioned, entry by entry -- turning is what prevents pressure injury and this is where it is evidenced."
* #nursing-care-plan "Nursing care plan" "The full nursing process per problem: assessment, nursing diagnosis, expected outcome, intervention, the scientific rationale for it, what was implemented and the evaluation."
* #intake-output-record "Intake and output record" "The 24-hour fluid balance: oral, IV and nasogastric intake against urine, stool, vomit, nasogastric suction and drainage, with the totals the sheet asks to be circled."
* #antenatal-vital-signs "Antenatal vital signs" "Timed antenatal observations: temperature, pulse, respiration and blood pressure with the lie, the presentation, the fetal heart tones and whether the bowels have opened."


CodeSystem: SGHIConceptCodeSystem
Id: concept-codesystem
Title: "SGHI Concept Code System"
Description: "What the forms record where no LOINC or SNOMED concept says the same thing. These appear as Observation.code, ServiceRequest.code, Procedure.code and CarePlan.category on the resources the extraction maps build. Anything LOINC already names — the vital signs, the Glasgow Coma Scale, the Apgar components, body weight and height, head circumference, MUAC — is coded to LOINC in the map and is deliberately absent here."
* ^status = #active
* ^experimental = false
* ^content = #complete
* ^caseSensitive = true

// One code per concept, generated from what the extraction maps actually emit.
// An earlier cut used one bucket code per family with the real label in the
// coding's display, and the validator was right to object: Observation
// .component.code is what a query filters on, so sixty-three signs all coded
// #priority-sign made "did this child have bloody diarrhoea" unanswerable.
//
// The families below group the codes by what kind of thing they record. Codes
// that predate the split keep their original hand-written descriptions.

// ── Admission route ─────────────────────────────────────────────────────
* #admission-route-accompanied-by "Accompanied by" "How a patient reached the ward: where they were admitted from, how they physically arrived, and which unit, room and bed they went to. Recorded on the admission form."
* #admission-route-admitted-from "Admitted from" "How a patient reached the ward: where they were admitted from, how they physically arrived, and which unit, room and bed they went to. Recorded on the admission form."
* #admission-route-bed "Bed" "How a patient reached the ward: where they were admitted from, how they physically arrived, and which unit, room and bed they went to. Recorded on the admission form."
* #admission-route-how-the-patient-arrived "How the patient arrived" "How a patient reached the ward: where they were admitted from, how they physically arrived, and which unit, room and bed they went to. Recorded on the admission form."
* #admission-route-mode-of-arrival "Mode of arrival" "How a patient reached the ward: where they were admitted from, how they physically arrived, and which unit, room and bed they went to. Recorded on the admission form."
* #admission-route-room "Room" "How a patient reached the ward: where they were admitted from, how they physically arrived, and which unit, room and bed they went to. Recorded on the admission form."
* #admission-route-unit-admitted-to "Unit admitted to" "How a patient reached the ward: where they were admitted from, how they physically arrived, and which unit, room and bed they went to. Recorded on the admission form."

// ── Anaesthesia ─────────────────────────────────────────────────────────
* #anaesthesia-used-as-recorded-on-the-theatre-note "Anaesthesia used, as recorded on the theatre note" "A fact about the anaesthetic given. Recorded on the theatre note."

// ── Anticoagulation ─────────────────────────────────────────────────────
* #anticoagulation-anticoagulant-agent-and-dose "Anticoagulant agent and dose" "Whether a patient is on stabilised oral anticoagulant therapy, and on what. It governs whether the INR reference range printed on the coagulation form applies at all, or the coagulation profile as ordered. Recorded on the coagulation profile requisition."
* #anticoagulation-coagulation-profile "Coagulation profile" "Whether a patient is on stabilised oral anticoagulant therapy, and on what. It governs whether the INR reference range printed on the coagulation form applies at all, or the coagulation profile as ordered. Recorded on the coagulation profile requisition."
* #anticoagulation-on-stabilised-oral-anticoagulant-therapy "On stabilised oral anticoagulant therapy" "Whether a patient is on stabilised oral anticoagulant therapy, and on what. It governs whether the INR reference range printed on the coagulation form applies at all, or the coagulation profile as ordered. Recorded on the coagulation profile requisition."

// ── Bishop score ────────────────────────────────────────────────────────
* #bishop-cervical-dilation "Cervical dilation" "An item of the Bishop score for cervical ripeness, or the total. LOINC has no term for the score or for cervical dilation at all. Recorded on the maternity record."
* #bishop-consistency "Cervical consistency (Bishop)" "The cervical consistency item of the Bishop score — firm, medium or soft — scored 0 to 2."
* #bishop-dilation "Cervical dilation (Bishop)" "The cervical dilation item of the Bishop score, scored 0 to 3. LOINC has no term for cervical dilation at all, measured or scored — searching its implicit value set for both \"Dilation Cervix\" and \"Cervical dilat\" returns nothing — so the item and the measurement behind it are both local."
* #bishop-effacement "Cervical effacement (Bishop)" "The cervical effacement item of the Bishop score, scored 0 to 3, read either as a percentage or as cervical length. LOINC 11867-9 Effacement Cervix is the measurement; this is the banded item that carries a weight, so the extraction map records both — 11867-9 for what was seen and this code for what it scored."
* #bishop-head-station "Head station" "An item of the Bishop score for cervical ripeness, or the total. LOINC has no term for the score or for cervical dilation at all. Recorded on the maternity record."
* #bishop-position "Cervical position (Bishop)" "The cervical position item of the Bishop score — posterior, midline or anterior — scored 0 to 2."
* #bishop-station "Head station (Bishop)" "The station of the presenting part relative to the ischial spines, scored 0 to 3 as the Bishop item."

// ── Body part removed at surgery ────────────────────────────────────────
* #body-part-removal-body-part-removed "Body part removed" "The procedure a body part was removed at, which part, and the theatre and mortuary staff who handed it over. Recorded on the body part disposal consent form."
* #body-part-removal-body-part-removed-at-surgery "Body part removed at surgery" "The procedure a body part was removed at, which part, and the theatre and mortuary staff who handed it over. Recorded on the body part disposal consent form."
* #body-part-removal-diagnosis-before-the-procedure "Diagnosis before the procedure" "The procedure a body part was removed at, which part, and the theatre and mortuary staff who handed it over. Recorded on the body part disposal consent form."
* #body-part-removal-mortuary-staff-receiving-the-body-part "Mortuary staff receiving the body part" "The procedure a body part was removed at, which part, and the theatre and mortuary staff who handed it over. Recorded on the body part disposal consent form."
* #body-part-removal-procedure-or-surgery-performed "Procedure or surgery performed" "The procedure a body part was removed at, which part, and the theatre and mortuary staff who handed it over. Recorded on the body part disposal consent form."
* #body-part-removal-theatre-staff-handing-over-the-body-part "Theatre staff handing over the body part" "The procedure a body part was removed at, which part, and the theatre and mortuary staff who handed it over. Recorded on the body part disposal consent form."

// ── Chemotherapy ────────────────────────────────────────────────────────
* #chemo-remarks-on-a-chemotherapy-cycle "Remarks on a chemotherapy cycle" "A fact about a cycle of systemic anti-cancer therapy: the regimen, the cycle number, the line of treatment, or what has to happen before the cycle runs. Recorded on the chemotherapy protocol cycle sheet."

// ── Cord and delivery ───────────────────────────────────────────────────
* #cord-condition "Cord condition" "Whether the umbilical cord is fresh, dry or infected, as recorded on the newborn handover."
* #cord-mode-of-delivery "Mode of delivery" "The condition of a newborn’s cord, or how and where the baby was born. Recorded on the newborn admission record and the newborn observation chart."
* #cord-nature-of-birth "Nature of birth" "The condition of a newborn’s cord, or how and where the baby was born. Recorded on the mortuary consent form for the disposal of a baby."
* #cord-place-of-birth "Place of birth" "The condition of a newborn’s cord, or how and where the baby was born. Recorded on the newborn admission record."

// ── Haemodialysis ───────────────────────────────────────────────────────
* #dialysis-bath-k-plus "Bath K+" "A prescription setting, machine reading or circuit pressure from the dialysis flow chart. The circuit pressures are deliberately not coded to the blood pressure LOINC codes: they are machine readings on tubing. Recorded on the haemodialysis flow chart."
* #dialysis-clotting-time "Clotting time" "A prescription setting, machine reading or circuit pressure from the dialysis flow chart. The circuit pressures are deliberately not coded to the blood pressure LOINC codes: they are machine readings on tubing. Recorded on the haemodialysis flow chart."
* #dialysis-dialyser "Dialyser" "A prescription setting, machine reading or circuit pressure from the dialysis flow chart. The circuit pressures are deliberately not coded to the blood pressure LOINC codes: they are machine readings on tubing. Recorded on the haemodialysis flow chart."
* #dialysis-fluid "Fluid" "A prescription setting, machine reading or circuit pressure from the dialysis flow chart. The circuit pressures are deliberately not coded to the blood pressure LOINC codes: they are machine readings on tubing. Recorded on the haemodialysis flow chart."
* #dialysis-hbs-ag "HBs Ag" "A prescription setting, machine reading or circuit pressure from the dialysis flow chart. The circuit pressures are deliberately not coded to the blood pressure LOINC codes: they are machine readings on tubing. Recorded on the haemodialysis flow chart."
* #dialysis-hcv "HCV" "A prescription setting, machine reading or circuit pressure from the dialysis flow chart. The circuit pressures are deliberately not coded to the blood pressure LOINC codes: they are machine readings on tubing. Recorded on the haemodialysis flow chart."
* #dialysis-heparin-given "Heparin given" "A prescription setting, machine reading or circuit pressure from the dialysis flow chart. The circuit pressures are deliberately not coded to the blood pressure LOINC codes: they are machine readings on tubing. Recorded on the haemodialysis flow chart."
* #dialysis-heparin-loading-dose "Heparin loading dose" "A prescription setting, machine reading or circuit pressure from the dialysis flow chart. The circuit pressures are deliberately not coded to the blood pressure LOINC codes: they are machine readings on tubing. Recorded on the haemodialysis flow chart."
* #dialysis-heparin-units-per-hour "Heparin units per hour" "A prescription setting, machine reading or circuit pressure from the dialysis flow chart. The circuit pressures are deliberately not coded to the blood pressure LOINC codes: they are machine readings on tubing. Recorded on the haemodialysis flow chart."
* #dialysis-hiv "HIV" "A prescription setting, machine reading or circuit pressure from the dialysis flow chart. The circuit pressures are deliberately not coded to the blood pressure LOINC codes: they are machine readings on tubing. Recorded on the haemodialysis flow chart."
* #dialysis-prescription "Dialysis prescription" "The prescription for one session: treatment time, priming, dialyser, bath potassium and heparinisation. Carried as components on one Observation because none of the five means anything without the others."
* #dialysis-prime "Prime" "A prescription setting, machine reading or circuit pressure from the dialysis flow chart. The circuit pressures are deliberately not coded to the blood pressure LOINC codes: they are machine readings on tubing. Recorded on the haemodialysis flow chart."
* #dialysis-session-reading "Dialysis session reading" "A prescription setting, machine reading or circuit pressure from the dialysis flow chart. The circuit pressures are deliberately not coded to the blood pressure LOINC codes: they are machine readings on tubing. Recorded on the haemodialysis flow chart."
* #dialysis-target-weight "Target weight" "A prescription setting, machine reading or circuit pressure from the dialysis flow chart. The circuit pressures are deliberately not coded to the blood pressure LOINC codes: they are machine readings on tubing. Recorded on the haemodialysis flow chart."
* #dialysis-treatment-time "Treatment time" "A prescription setting, machine reading or circuit pressure from the dialysis flow chart. The circuit pressures are deliberately not coded to the blood pressure LOINC codes: they are machine readings on tubing. Recorded on the haemodialysis flow chart."

// ── Discharge ───────────────────────────────────────────────────────────
* #discharge-ward-of-admission "Ward of admission" "A fact recorded on the discharge summary. Recorded on the medical report."
* #discharge-ward-of-discharge "Ward of discharge" "A fact recorded on the discharge summary. Recorded on the medical report."

// ── Blood donation ──────────────────────────────────────────────────────
* #donor-eligibility-question "Donor eligibility question" "One of the thirteen deferral questions on the KTTA donor form. The answer says whether the donor answered yes."
* #donor-eligible "Donor is eligible" "The screening decision: whether this donor may give blood today."
* #donor-type "Type of donor" "Whether the donor is a replacement donor, a voluntary donor, or donating for their own later use."

// ── Post-donation adverse event ─────────────────────────────────────────
* #donor-ae-convulsion "Convulsion" "One of the nine adverse events the KTTA form asks about after every donation. The set is the haemovigilance record. Recorded on the KTTA blood donor questionnaire."
* #donor-ae-fainting "Fainting" "One of the nine adverse events the KTTA form asks about after every donation. The set is the haemovigilance record. Recorded on the KTTA blood donor questionnaire."
* #donor-ae-haematoma "Haematoma" "One of the nine adverse events the KTTA form asks about after every donation. The set is the haemovigilance record. Recorded on the KTTA blood donor questionnaire."
* #donor-ae-headache "Headache" "One of the nine adverse events the KTTA form asks about after every donation. The set is the haemovigilance record. Recorded on the KTTA blood donor questionnaire."
* #donor-ae-incontinence-of-urine-or-stool "Incontinence of urine or stool" "One of the nine adverse events the KTTA form asks about after every donation. The set is the haemovigilance record. Recorded on the KTTA blood donor questionnaire."
* #donor-ae-more-than-one-venipuncture "More than one venipuncture" "One of the nine adverse events the KTTA form asks about after every donation. The set is the haemovigilance record. Recorded on the KTTA blood donor questionnaire."
* #donor-ae-nausea "Nausea" "One of the nine adverse events the KTTA form asks about after every donation. The set is the haemovigilance record. Recorded on the KTTA blood donor questionnaire."
* #donor-ae-underweight-unit "Underweight unit" "One of the nine adverse events the KTTA form asks about after every donation. The set is the haemovigilance record. Recorded on the KTTA blood donor questionnaire."
* #donor-ae-vomiting "Vomiting" "One of the nine adverse events the KTTA form asks about after every donation. The set is the haemovigilance record. Recorded on the KTTA blood donor questionnaire."

// ── Donor eligibility question ──────────────────────────────────────────
* #donor-q-eaten-in-the-last-6-hours "Eaten in the last 6 hours" "One of the thirteen deferral questions on the KTTA donor form. Eligibility is judged over the whole set, which is why they travel together as one panel. Recorded on the KTTA blood donor questionnaire."
* #donor-q-ever-had-hepatitis-or-yellow-eyes "Ever had hepatitis or yellow eyes" "One of the thirteen deferral questions on the KTTA donor form. Eligibility is judged over the whole set, which is why they travel together as one panel. Recorded on the KTTA blood donor questionnaire."
* #donor-q-exposed-to-a-suspected-case-of-covid-19-in-the-last "Exposed to a suspected case of COVID-19 in the last 14 days" "One of the thirteen deferral questions on the KTTA donor form. Eligibility is judged over the whole set, which is why they travel together as one panel. Recorded on the KTTA blood donor questionnaire."
* #donor-q-fainted-within-the-past-one-year "Fainted within the past one year" "One of the thirteen deferral questions on the KTTA donor form. Eligibility is judged over the whole set, which is why they travel together as one panel. Recorded on the KTTA blood donor questionnaire."
* #donor-q-feeling-well-today "Feeling well today" "One of the thirteen deferral questions on the KTTA donor form. Eligibility is judged over the whole set, which is why they travel together as one panel. Recorded on the KTTA blood donor questionnaire."
* #donor-q-on-regular-medication-antibiotics-or-analgesics "On regular medication, antibiotics or analgesics" "One of the thirteen deferral questions on the KTTA donor form. Eligibility is judged over the whole set, which is why they travel together as one panel. Recorded on the KTTA blood donor questionnaire."
* #donor-q-pregnant-or-lactating "Pregnant or lactating" "One of the thirteen deferral questions on the KTTA donor form. Eligibility is judged over the whole set, which is why they travel together as one panel. Recorded on the KTTA blood donor questionnaire."
* #donor-q-received-blood-or-blood-products-in-the-past-6 "Received blood or blood products in the past 6 months" "One of the thirteen deferral questions on the KTTA donor form. Eligibility is judged over the whole set, which is why they travel together as one panel. Recorded on the KTTA blood donor questionnaire."
* #donor-q-sexual-activity-in-the-last-3-months-with-a-person "Sexual activity in the last 3 months with a person of unknown health status" "One of the thirteen deferral questions on the KTTA donor form. Eligibility is judged over the whole set, which is why they travel together as one panel. Recorded on the KTTA blood donor questionnaire."
* #donor-q-surgery-or-medical-treatment-in-the-past-6-months "Surgery or medical treatment in the past 6 months" "One of the thirteen deferral questions on the KTTA donor form. Eligibility is judged over the whole set, which is why they travel together as one panel. Recorded on the KTTA blood donor questionnaire."
* #donor-q-tattooing-or-body-piercing-in-the-last-3-months "Tattooing or body piercing in the last 3 months" "One of the thirteen deferral questions on the KTTA donor form. Eligibility is judged over the whole set, which is why they travel together as one panel. Recorded on the KTTA blood donor questionnaire."
* #donor-q-travelled-in-the-last-14-days-outside-the-usual-area "Travelled in the last 14 days outside the usual area of residence" "One of the thirteen deferral questions on the KTTA donor form. Eligibility is judged over the whole set, which is why they travel together as one panel. Recorded on the KTTA blood donor questionnaire."
* #donor-q-vaccination-in-the-last-3-months "Vaccination in the last 3 months" "One of the thirteen deferral questions on the KTTA donor form. Eligibility is judged over the whole set, which is why they travel together as one panel. Recorded on the KTTA blood donor questionnaire."

// ── Emergency sign ──────────────────────────────────────────────────────
* #emergency-sign "Emergency sign present" "One of the emergency signs the paediatric triage sheet looks for, which sends the child to a clinician immediately. The answer says which sign."
* #emergency-sign-avpu-is-p-or-u "AVPU is P or U" "One of the emergency signs the paediatric triage sheet looks for, which sends the child to a clinician immediately. Recorded on the paediatric triage record."
* #emergency-sign-capillary-refill-over-3-seconds "Capillary refill over 3 seconds" "One of the emergency signs the paediatric triage sheet looks for, which sends the child to a clinician immediately. Recorded on the paediatric triage record."
* #emergency-sign-central-cyanosis "Central cyanosis" "One of the emergency signs the paediatric triage sheet looks for, which sends the child to a clinician immediately. Recorded on the paediatric triage record."
* #emergency-sign-coma "Coma" "One of the emergency signs the paediatric triage sheet looks for, which sends the child to a clinician immediately. Recorded on the paediatric triage record."
* #emergency-sign-confusion "Confusion" "One of the emergency signs the paediatric triage sheet looks for, which sends the child to a clinician immediately. Recorded on the paediatric triage record."
* #emergency-sign-convulsing "Convulsing" "One of the emergency signs the paediatric triage sheet looks for, which sends the child to a clinician immediately. Recorded on the paediatric triage record."
* #emergency-sign-diarrhoea-with-sunken-eyes "Diarrhoea with sunken eyes" "One of the emergency signs the paediatric triage sheet looks for, which sends the child to a clinician immediately. Recorded on the paediatric triage record."
* #emergency-sign-severe-respiratory-distress "Severe respiratory distress" "One of the emergency signs the paediatric triage sheet looks for, which sends the child to a clinician immediately. Recorded on the paediatric triage record."
* #emergency-sign-skin-pinch-over-2-seconds "Skin pinch over 2 seconds" "One of the emergency signs the paediatric triage sheet looks for, which sends the child to a clinician immediately. Recorded on the paediatric triage record."
* #emergency-sign-weak-absent-or-fast-pulse "Weak, absent or fast pulse" "One of the emergency signs the paediatric triage sheet looks for, which sends the child to a clinician immediately. Recorded on the paediatric triage record."
* #emergency-sign-weak-or-absent-breathing "Weak or absent breathing" "One of the emergency signs the paediatric triage sheet looks for, which sends the child to a clinician immediately. Recorded on the paediatric triage record."

// ── Endoscopy ───────────────────────────────────────────────────────────
* #endoscopy-endoscopic-findings "Endoscopic findings" "Something the endoscopy investigation form records — what the endoscopist saw, or the conclusion drawn from it. Recorded on the endoscopy service investigation form."

// ── Feeding and nutrition ───────────────────────────────────────────────
* #feeding-and-position-entry "Feeding and position entry" "How a patient is being fed, or a nutrition assessment. Recorded on the feeding and position chart."
* #feeding-expressed-breast-milk-given "Expressed breast milk given" "How a patient is being fed, or a nutrition assessment. Recorded on the newborn comprehensive chart."
* #feeding-feed-frequency-in-hours "Feed frequency in hours" "How a patient is being fed, or a nutrition assessment. Recorded on the newborn comprehensive chart."
* #feeding-feed-volume-given "Feed volume given" "How a patient is being fed, or a nutrition assessment. Recorded on the milk feeding chart."
* #feeding-feed-volume-retained "Feed volume retained" "How a patient is being fed, or a nutrition assessment. Recorded on the milk feeding chart."
* #feeding-fluid-given-on-a-newborn-round "Fluid given on a newborn round" "How a patient is being fed, or a nutrition assessment. Recorded on the newborn comprehensive chart."
* #feeding-formula-given "Formula given" "How a patient is being fed, or a nutrition assessment. Recorded on the newborn comprehensive chart."
* #feeding-growth-and-development "Growth and development" "How a patient is being fed, or a nutrition assessment. Recorded on the paediatric admission record."
* #feeding-intravenous-fluid-nursing-plan "Intravenous fluid nursing plan" "How a patient is being fed, or a nutrition assessment. Recorded on the newborn comprehensive chart."
* #feeding-intravenous-volume-given "Intravenous volume given" "How a patient is being fed, or a nutrition assessment. Recorded on the newborn comprehensive chart."
* #feeding-iv-drops-per-minute "IV drops per minute" "How a patient is being fed, or a nutrition assessment. Recorded on the newborn comprehensive chart."
* #feeding-iv-fluid-rate "IV fluid rate" "How a patient is being fed, or a nutrition assessment. Recorded on the newborn comprehensive chart."
* #feeding-iv-line-working "IV line working" "How a patient is being fed, or a nutrition assessment. Recorded on the newborn comprehensive chart."
* #feeding-iv-volume-planned-over-24-hours "IV volume planned over 24 hours" "How a patient is being fed, or a nutrition assessment. Recorded on the newborn comprehensive chart."
* #feeding-milk-feed "Milk feed" "How a patient is being fed, or a nutrition assessment. Recorded on the milk feeding chart."
* #feeding-milk-feed-record "Milk feed record" "How a patient is being fed, or a nutrition assessment. Recorded on the milk feeding chart."
* #feeding-nutritional-history "Nutritional history" "How a patient is being fed, or a nutrition assessment. Recorded on the paediatric admission record."
* #feeding-passed-stool "Passed stool" "How a patient is being fed, or a nutrition assessment. Recorded on the milk feeding chart."
* #feeding-passed-urine "Passed urine" "How a patient is being fed, or a nutrition assessment. Recorded on the milk feeding chart."
* #feeding-position-of-the-patient "Position of the patient" "How a patient is being fed, or a nutrition assessment. Recorded on the feeding and position chart."
* #feeding-prescribed-volume-per-kilogram-per-day "Prescribed volume per kilogram per day" "How a patient is being fed, or a nutrition assessment. Recorded on the newborn comprehensive chart."
* #feeding-three-hourly-feed-target "Three-hourly feed target" "How a patient is being fed, or a nutrition assessment. Recorded on the milk feeding chart."
* #feeding-volume-fed "Volume fed" "How a patient is being fed, or a nutrition assessment. Recorded on the feeding and position chart."
* #feeding-volume-per-feed "Volume per feed" "How a patient is being fed, or a nutrition assessment. Recorded on the newborn comprehensive chart."

// ── Antenatal examination ───────────────────────────────────────────────
* #fetal-lie "Fetal lie" "Whether the fetus lies longitudinally, transversely or obliquely in the uterus."

// ── Fluid balance ───────────────────────────────────────────────────────
* #fluid-balance-blood-volume-given "Blood volume given" "An intake or output figure from a fluid balance chart, or a total or balance derived from one. The output total and the balance carry local codes because LOINC names a 24-hour intake and a 24-hour urine output but nothing for the balance between them. Recorded on the HDU input and output chart."
* #fluid-balance-colour-of-the-irrigation-return "Colour of the irrigation return" "An intake or output figure from a fluid balance chart, or a total or balance derived from one. The output total and the balance carry local codes because LOINC names a 24-hour intake and a 24-hour urine output but nothing for the balance between them. Recorded on the surgical continuous irrigation record."
* #fluid-balance-continuous-irrigation-entry "Continuous irrigation entry" "An intake or output figure from a fluid balance chart, or a total or balance derived from one. The output total and the balance carry local codes because LOINC names a 24-hour intake and a 24-hour urine output but nothing for the balance between them. Recorded on the surgical continuous irrigation record."
* #fluid-balance-drain-volume "Drain volume" "An intake or output figure from a fluid balance chart, or a total or balance derived from one. The output total and the balance carry local codes because LOINC names a 24-hour intake and a 24-hour urine output but nothing for the balance between them. Recorded on the HDU input and output chart."
* #fluid-balance-drainage-volume "Drainage volume" "An intake or output figure from a fluid balance chart, or a total or balance derived from one. The output total and the balance carry local codes because LOINC names a 24-hour intake and a 24-hour urine output but nothing for the balance between them. Recorded on the intake and output record."
* #fluid-balance-fluid-output-total-24-hour "Fluid output total 24 hour" "An intake or output figure from a fluid balance chart, or a total or balance derived from one. The output total and the balance carry local codes because LOINC names a 24-hour intake and a 24-hour urine output but nothing for the balance between them. Recorded on the HDU input and output chart."
* #fluid-balance-fluid-output-total-24-hours "Fluid output total 24 hours" "An intake or output figure from a fluid balance chart, or a total or balance derived from one. The output total and the balance carry local codes because LOINC names a 24-hour intake and a 24-hour urine output but nothing for the balance between them. Recorded on the intake and output record."
* #fluid-balance-hourly-fluid-intake "Hourly fluid intake" "An intake or output figure from a fluid balance chart, or a total or balance derived from one. The output total and the balance carry local codes because LOINC names a 24-hour intake and a 24-hour urine output but nothing for the balance between them. Recorded on the HDU input and output chart."
* #fluid-balance-hourly-fluid-output "Hourly fluid output" "An intake or output figure from a fluid balance chart, or a total or balance derived from one. The output total and the balance carry local codes because LOINC names a 24-hour intake and a 24-hour urine output but nothing for the balance between them. Recorded on the HDU input and output chart."
* #fluid-balance-irrigation-solution "Irrigation solution" "An intake or output figure from a fluid balance chart, or a total or balance derived from one. The output total and the balance carry local codes because LOINC names a 24-hour intake and a 24-hour urine output but nothing for the balance between them. Recorded on the surgical continuous irrigation record."
* #fluid-balance-irrigation-volume-instilled "Irrigation volume instilled" "An intake or output figure from a fluid balance chart, or a total or balance derived from one. The output total and the balance carry local codes because LOINC names a 24-hour intake and a 24-hour urine output but nothing for the balance between them. Recorded on the surgical continuous irrigation record."
* #fluid-balance-irrigation-volume-instilled-over-24-hours "Irrigation volume instilled over 24 hours" "An intake or output figure from a fluid balance chart, or a total or balance derived from one. The output total and the balance carry local codes because LOINC names a 24-hour intake and a 24-hour urine output but nothing for the balance between them. Recorded on the surgical continuous irrigation record."
* #fluid-balance-irrigation-volume-returned "Irrigation volume returned" "An intake or output figure from a fluid balance chart, or a total or balance derived from one. The output total and the balance carry local codes because LOINC names a 24-hour intake and a 24-hour urine output but nothing for the balance between them. Recorded on the surgical continuous irrigation record."
* #fluid-balance-irrigation-volume-returned-over-24-hours "Irrigation volume returned over 24 hours" "An intake or output figure from a fluid balance chart, or a total or balance derived from one. The output total and the balance carry local codes because LOINC names a 24-hour intake and a 24-hour urine output but nothing for the balance between them. Recorded on the surgical continuous irrigation record."
* #fluid-balance-iv-fluid-volume "IV fluid volume" "An intake or output figure from a fluid balance chart, or a total or balance derived from one. The output total and the balance carry local codes because LOINC names a 24-hour intake and a 24-hour urine output but nothing for the balance between them. Recorded on the intake and output record."
* #fluid-balance-iv-infusion-given "IV infusion given" "An intake or output figure from a fluid balance chart, or a total or balance derived from one. The output total and the balance carry local codes because LOINC names a 24-hour intake and a 24-hour urine output but nothing for the balance between them. Recorded on the intake and output record."
* #fluid-balance-nasogastric-aspirate-volume "Nasogastric aspirate volume" "An intake or output figure from a fluid balance chart, or a total or balance derived from one. The output total and the balance carry local codes because LOINC names a 24-hour intake and a 24-hour urine output but nothing for the balance between them. Recorded on the HDU input and output chart."
* #fluid-balance-nasogastric-feed-volume "Nasogastric feed volume" "An intake or output figure from a fluid balance chart, or a total or balance derived from one. The output total and the balance carry local codes because LOINC names a 24-hour intake and a 24-hour urine output but nothing for the balance between them. Recorded on the intake and output record."
* #fluid-balance-nasogastric-suction-volume "Nasogastric suction volume" "An intake or output figure from a fluid balance chart, or a total or balance derived from one. The output total and the balance carry local codes because LOINC names a 24-hour intake and a 24-hour urine output but nothing for the balance between them. Recorded on the intake and output record."
* #fluid-balance-oral-fluid-volume "Oral fluid volume" "An intake or output figure from a fluid balance chart, or a total or balance derived from one. The output total and the balance carry local codes because LOINC names a 24-hour intake and a 24-hour urine output but nothing for the balance between them. Recorded on the intake and output record."
* #fluid-balance-oral-or-nasogastric-feed-given "Oral or nasogastric feed given" "An intake or output figure from a fluid balance chart, or a total or balance derived from one. The output total and the balance carry local codes because LOINC names a 24-hour intake and a 24-hour urine output but nothing for the balance between them. Recorded on the HDU input and output chart."
* #fluid-balance-oral-or-nasogastric-volume "Oral or nasogastric volume" "An intake or output figure from a fluid balance chart, or a total or balance derived from one. The output total and the balance carry local codes because LOINC names a 24-hour intake and a 24-hour urine output but nothing for the balance between them. Recorded on the HDU input and output chart."
* #fluid-balance-output-on-a-newborn-round "Output on a newborn round" "An intake or output figure from a fluid balance chart, or a total or balance derived from one. The output total and the balance carry local codes because LOINC names a 24-hour intake and a 24-hour urine output but nothing for the balance between them. Recorded on the newborn comprehensive chart."
* #fluid-balance-over-24-hours "Fluid balance over 24 hours" "An intake or output figure from a fluid balance chart, or a total or balance derived from one. The output total and the balance carry local codes because LOINC names a 24-hour intake and a 24-hour urine output but nothing for the balance between them. Recorded on the HDU input and output chart."
* #fluid-balance-parenteral-fluid-given "Parenteral fluid given" "An intake or output figure from a fluid balance chart, or a total or balance derived from one. The output total and the balance carry local codes because LOINC names a 24-hour intake and a 24-hour urine output but nothing for the balance between them. Recorded on the HDU input and output chart."
* #fluid-balance-parenteral-fluid-volume "Parenteral fluid volume" "An intake or output figure from a fluid balance chart, or a total or balance derived from one. The output total and the balance carry local codes because LOINC names a 24-hour intake and a 24-hour urine output but nothing for the balance between them. Recorded on the HDU input and output chart."
* #fluid-balance-passed-stool "Passed stool" "An intake or output figure from a fluid balance chart, or a total or balance derived from one. The output total and the balance carry local codes because LOINC names a 24-hour intake and a 24-hour urine output but nothing for the balance between them. Recorded on the newborn comprehensive chart."
* #fluid-balance-passed-urine "Passed urine" "An intake or output figure from a fluid balance chart, or a total or balance derived from one. The output total and the balance carry local codes because LOINC names a 24-hour intake and a 24-hour urine output but nothing for the balance between them. Recorded on the newborn comprehensive chart."
* #fluid-balance-remarks-on-the-fluid-balance-chart "Remarks on the fluid balance chart" "An intake or output figure from a fluid balance chart, or a total or balance derived from one. The output total and the balance carry local codes because LOINC names a 24-hour intake and a 24-hour urine output but nothing for the balance between them. Recorded on the HDU input and output chart."
* #fluid-balance-remarks-on-the-intake-and-output-record "Remarks on the intake and output record" "An intake or output figure from a fluid balance chart, or a total or balance derived from one. The output total and the balance carry local codes because LOINC names a 24-hour intake and a 24-hour urine output but nothing for the balance between them. Recorded on the intake and output record."
* #fluid-balance-second-parenteral-fluid-given "Second parenteral fluid given" "An intake or output figure from a fluid balance chart, or a total or balance derived from one. The output total and the balance carry local codes because LOINC names a 24-hour intake and a 24-hour urine output but nothing for the balance between them. Recorded on the HDU input and output chart."
* #fluid-balance-second-parenteral-fluid-volume "Second parenteral fluid volume" "An intake or output figure from a fluid balance chart, or a total or balance derived from one. The output total and the balance carry local codes because LOINC names a 24-hour intake and a 24-hour urine output but nothing for the balance between them. Recorded on the HDU input and output chart."
* #fluid-balance-stool-passed "Stool passed" "An intake or output figure from a fluid balance chart, or a total or balance derived from one. The output total and the balance carry local codes because LOINC names a 24-hour intake and a 24-hour urine output but nothing for the balance between them. Recorded on the HDU input and output chart."
* #fluid-balance-stool-volume "Stool volume" "An intake or output figure from a fluid balance chart, or a total or balance derived from one. The output total and the balance carry local codes because LOINC names a 24-hour intake and a 24-hour urine output but nothing for the balance between them. Recorded on the intake and output record."
* #fluid-balance-urine-volume "Urine volume" "An intake or output figure from a fluid balance chart, or a total or balance derived from one. The output total and the balance carry local codes because LOINC names a 24-hour intake and a 24-hour urine output but nothing for the balance between them. Recorded on the HDU input and output chart."
* #fluid-balance-vomit-volume "Vomit volume" "An intake or output figure from a fluid balance chart, or a total or balance derived from one. The output total and the balance carry local codes because LOINC names a 24-hour intake and a 24-hour urine output but nothing for the balance between them. Recorded on the HDU input and output chart."
* #fluid-balance-vomited "Vomited" "An intake or output figure from a fluid balance chart, or a total or balance derived from one. The output total and the balance carry local codes because LOINC names a 24-hour intake and a 24-hour urine output but nothing for the balance between them. Recorded on the newborn comprehensive chart."

// ── Graded finding ──────────────────────────────────────────────────────
* #grade-jaundice-grade "Jaundice grade" "An examination finding recorded on the sheet’s three-point 0 / + / +++ scale, or on a distribution scale that grades it. Recorded on the newborn admission record, the newborn observation chart and the paediatric admission record."
* #grade-pallor-or-anaemia-grade "Pallor or anaemia grade" "An examination finding recorded on the sheet’s three-point 0 / + / +++ scale, or on a distribution scale that grades it. Recorded on the newborn admission record and the paediatric admission record."

// ── Head injury chart ───────────────────────────────────────────────────
* #head-injury-conscious-level-on-the-head-injury-chart "Conscious level on the head injury chart" "A finding from the head injury and craniotomy chart: its own four-point conscious level, or spontaneous movement or paralysis in one named limb. The conscious level is deliberately not mapped onto the Glasgow Coma Scale or AVPU — this sheet prints four levels with its own wording. Recorded on the head injury and craniotomy chart."
* #head-injury-paralysis-by-limb "Paralysis by limb" "A finding from the head injury and craniotomy chart: its own four-point conscious level, or spontaneous movement or paralysis in one named limb. The conscious level is deliberately not mapped onto the Glasgow Coma Scale or AVPU — this sheet prints four levels with its own wording. Recorded on the head injury and craniotomy chart."
* #head-injury-paralysis-left-arm "Paralysis, left arm" "A finding from the head injury and craniotomy chart: its own four-point conscious level, or spontaneous movement or paralysis in one named limb. The conscious level is deliberately not mapped onto the Glasgow Coma Scale or AVPU — this sheet prints four levels with its own wording. Recorded on the head injury and craniotomy chart."
* #head-injury-paralysis-left-leg "Paralysis, left leg" "A finding from the head injury and craniotomy chart: its own four-point conscious level, or spontaneous movement or paralysis in one named limb. The conscious level is deliberately not mapped onto the Glasgow Coma Scale or AVPU — this sheet prints four levels with its own wording. Recorded on the head injury and craniotomy chart."
* #head-injury-paralysis-right-arm "Paralysis, right arm" "A finding from the head injury and craniotomy chart: its own four-point conscious level, or spontaneous movement or paralysis in one named limb. The conscious level is deliberately not mapped onto the Glasgow Coma Scale or AVPU — this sheet prints four levels with its own wording. Recorded on the head injury and craniotomy chart."
* #head-injury-paralysis-right-leg "Paralysis, right leg" "A finding from the head injury and craniotomy chart: its own four-point conscious level, or spontaneous movement or paralysis in one named limb. The conscious level is deliberately not mapped onto the Glasgow Coma Scale or AVPU — this sheet prints four levels with its own wording. Recorded on the head injury and craniotomy chart."
* #head-injury-remarks-on-a-head-injury-round "Remarks on a head injury round" "A finding from the head injury and craniotomy chart: its own four-point conscious level, or spontaneous movement or paralysis in one named limb. The conscious level is deliberately not mapped onto the Glasgow Coma Scale or AVPU — this sheet prints four levels with its own wording. Recorded on the head injury and craniotomy chart."
* #head-injury-spontaneous-movement-by-limb "Spontaneous movement by limb" "A finding from the head injury and craniotomy chart: its own four-point conscious level, or spontaneous movement or paralysis in one named limb. The conscious level is deliberately not mapped onto the Glasgow Coma Scale or AVPU — this sheet prints four levels with its own wording. Recorded on the head injury and craniotomy chart."
* #head-injury-spontaneous-movement-left-arm "Spontaneous movement, left arm" "A finding from the head injury and craniotomy chart: its own four-point conscious level, or spontaneous movement or paralysis in one named limb. The conscious level is deliberately not mapped onto the Glasgow Coma Scale or AVPU — this sheet prints four levels with its own wording. Recorded on the head injury and craniotomy chart."
* #head-injury-spontaneous-movement-left-leg "Spontaneous movement, left leg" "A finding from the head injury and craniotomy chart: its own four-point conscious level, or spontaneous movement or paralysis in one named limb. The conscious level is deliberately not mapped onto the Glasgow Coma Scale or AVPU — this sheet prints four levels with its own wording. Recorded on the head injury and craniotomy chart."
* #head-injury-spontaneous-movement-right-arm "Spontaneous movement, right arm" "A finding from the head injury and craniotomy chart: its own four-point conscious level, or spontaneous movement or paralysis in one named limb. The conscious level is deliberately not mapped onto the Glasgow Coma Scale or AVPU — this sheet prints four levels with its own wording. Recorded on the head injury and craniotomy chart."
* #head-injury-spontaneous-movement-right-leg "Spontaneous movement, right leg" "A finding from the head injury and craniotomy chart: its own four-point conscious level, or spontaneous movement or paralysis in one named limb. The conscious level is deliberately not mapped onto the Glasgow Coma Scale or AVPU — this sheet prints four levels with its own wording. Recorded on the head injury and craniotomy chart."

// ── Intensive care nursing round ────────────────────────────────────────
* #icu-care-chest-physiotherapy-given "Chest physiotherapy given" "Something the ICU observation chart records about the nursing round itself: turning, suctioning, chest physiotherapy or sighs. These are what prevent the complications this population dies of, and the chart is where they are evidenced. Recorded on the ICU observation chart."
* #icu-care-intensive-care-nursing-round "Intensive care nursing round" "Something the ICU observation chart records about the nursing round itself: turning, suctioning, chest physiotherapy or sighs. These are what prevent the complications this population dies of, and the chart is where they are evidenced. Recorded on the ICU observation chart."
* #icu-care-nebuliser-given "Nebuliser given" "Something the ICU observation chart records about the nursing round itself: turning, suctioning, chest physiotherapy or sighs. These are what prevent the complications this population dies of, and the chart is where they are evidenced. Recorded on the ICU observation chart."
* #icu-care-position-of-the-patient "Position of the patient" "Something the ICU observation chart records about the nursing round itself: turning, suctioning, chest physiotherapy or sighs. These are what prevent the complications this population dies of, and the chart is where they are evidenced. Recorded on the ICU observation chart."
* #icu-care-remarks-on-an-intensive-care-round "Remarks on an intensive care round" "Something the ICU observation chart records about the nursing round itself: turning, suctioning, chest physiotherapy or sighs. These are what prevent the complications this population dies of, and the chart is where they are evidenced. Recorded on the ICU observation chart."
* #icu-care-sighs-given "Sighs given" "Something the ICU observation chart records about the nursing round itself: turning, suctioning, chest physiotherapy or sighs. These are what prevent the complications this population dies of, and the chart is where they are evidenced. Recorded on the ICU observation chart."
* #icu-care-suctioned "Suctioned" "Something the ICU observation chart records about the nursing round itself: turning, suctioning, chest physiotherapy or sighs. These are what prevent the complications this population dies of, and the chart is where they are evidenced. Recorded on the ICU observation chart."

// ── Imaging request ─────────────────────────────────────────────────────
* #imaging-indication "Indication for imaging" "Why the imaging was asked for, in the requester's words. ServiceRequest.reason is bound required to LOINC by the SGHI profile and the form takes free text, so the indication rides here as a supporting Observation the request points at."

// ── Injury ──────────────────────────────────────────────────────────────
* #injury-other-injury-present "Other injury present" "An injury recorded outside the head on the head injury chart. Recorded on the head injury and craniotomy chart."
* #injury-site "Site of another injury" "An injury recorded outside the head on the head injury chart. Recorded on the head injury and craniotomy chart."

// ── Limb power ──────────────────────────────────────────────────────────
* #limb-power "Limb power" "Something one of the forms records that no LOINC or SNOMED concept says. The display is the wording printed on the paper. Recorded on the ICU neurological observation chart."

// ── Dialysis machine check ──────────────────────────────────────────────
* #machine-conductivity "Conductivity" "Part of the machine’s own function check, recorded before the run starts. Recorded on the haemodialysis flow chart."
* #machine-dialyser-flow-rate "Dialyser flow rate" "Part of the machine’s own function check, recorded before the run starts. Recorded on the haemodialysis flow chart."
* #machine-function-check "Machine function check" "The automated machine self-test, its conductivity, temperature and dialyser flow rate, recorded before the run starts."
* #machine-t1-test-passed "T1 test passed" "Part of the machine’s own function check, recorded before the run starts. Recorded on the haemodialysis flow chart."
* #machine-temperature "Machine temperature" "Part of the machine’s own function check, recorded before the run starts. Recorded on the haemodialysis flow chart."

// ── Maternal status ─────────────────────────────────────────────────────
* #maternal-fevers-in-pregnancy "Maternal fevers in pregnancy" "A fact about the mother that governs the baby’s management. Recorded on the newborn unit handover form."
* #maternal-hepatitis-b-result "Maternal hepatitis B result" "A fact about the mother that governs the baby’s management. Recorded on the newborn unit handover form."
* #maternal-history-on-newborn-handover "Maternal history on newborn handover" "A fact about the mother that governs the baby’s management. Recorded on the newborn unit handover form."
* #maternal-hiv-status "Maternal HIV status" "A fact about the mother that governs the baby’s management. Recorded on the newborn admission record."
* #maternal-other-commodities-given-in-pregnancy "Other commodities given in pregnancy" "A fact about the mother that governs the baby’s management. Recorded on the newborn unit handover form."
* #maternal-parity "Maternal parity" "A fact about the mother that governs the baby’s management. Recorded on the newborn unit handover form."
* #maternal-pmtct "PMTCT" "A fact about the mother that governs the baby’s management. Recorded on the maternity record."
* #maternal-pmtct-status "Maternal PMTCT status" "The mother's status in the programme for prevention of mother-to-child transmission of HIV, as known at the child's admission. Distinct from the mother's own HIV test result, which is a laboratory Observation on the mother."
* #maternal-third-trimester-urinalysis-result "Third-trimester urinalysis result" "A fact about the mother that governs the baby’s management. Recorded on the newborn unit handover form."
* #maternal-treatment-given-in-pregnancy "Treatment given in pregnancy" "A fact about the mother that governs the baby’s management. Recorded on the newborn unit handover form."
* #maternal-urinalysis-done-in-the-third-trimester "Urinalysis done in the third trimester" "A fact about the mother that governs the baby’s management. Recorded on the newborn unit handover form."
* #maternal-vdrl-result "Maternal VDRL result" "A fact about the mother that governs the baby’s management. Recorded on the newborn admission record."

// ── Membrane status ─────────────────────────────────────────────────────
* #membrane-status "Membrane status" "Whether the membranes are intact or ruptured at the time of examination."

// ── Mortality review ────────────────────────────────────────────────────
* #mortality-review-provisional-diagnosis-made-by-the-first-clinician "Provisional diagnosis made by the first clinician" "A fact from the mortality committee review that is asked across deaths rather than within one: which grade of clinician saw the patient first, what they thought it was, and when a senior clinician reviewed. Recorded on the mortality committee review."
* #mortality-review-rank-of-the-first-clinician-who-attended "Rank of the first clinician who attended" "A fact from the mortality committee review that is asked across deaths rather than within one: which grade of clinician saw the patient first, what they thought it was, and when a senior clinician reviewed. Recorded on the mortality committee review."
* #mortality-review-time-of-first-senior-clinician-review "Time of first senior clinician review" "A fact from the mortality committee review that is asked across deaths rather than within one: which grade of clinician saw the patient first, what they thought it was, and when a senior clinician reviewed. Recorded on the mortality committee review."

// ── Mortuary ────────────────────────────────────────────────────────────
* #mortuary-source-facility-the-body-was-transferred-from "Facility the body was transferred from" "Where a body received into the mortuary came from, and the ward or facility behind that answer. Coded because it is the field that decides whether the deceased was ever a patient of this hospital. Recorded on the mortuary services request form."
* #mortuary-source-place-of-death "Place of death" "Where a body received into the mortuary came from, and the ward or facility behind that answer. Coded because it is the field that decides whether the deceased was ever a patient of this hospital. Recorded on the mortuary admission form."
* #mortuary-source-ward-the-body-came-from "Ward the body came from" "Where a body received into the mortuary came from, and the ward or facility behind that answer. Coded because it is the field that decides whether the deceased was ever a patient of this hospital. Recorded on the mortuary services request form."
* #mortuary-source-where-the-body-came-from "Where the body came from" "Where a body received into the mortuary came from, and the ward or facility behind that answer. Coded because it is the field that decides whether the deceased was ever a patient of this hospital. Recorded on the mortuary admission form and the mortuary services request form."
* #mortuary-source-witness-to-an-embalming-authorisation "Witness to an embalming authorisation" "Where a body received into the mortuary came from, and the ward or facility behind that answer. Coded because it is the field that decides whether the deceased was ever a patient of this hospital. Recorded on the embalming authorization form."

// ── Neurological observation ────────────────────────────────────────────
* #neuro-arm-power "Arm power" "A finding from the ICU neurological observation chart: limb power on either of the two scales the chart prints, or one pupil’s size and reaction. Each pupil carries a bodySite, because a unilaterally dilating unreactive pupil is the sign that matters and which side it is on is the whole question. Recorded on the ICU neurological observation chart."
* #neuro-left-pupil-assessment "Left pupil assessment" "A finding from the ICU neurological observation chart: limb power on either of the two scales the chart prints, or one pupil’s size and reaction. Each pupil carries a bodySite, because a unilaterally dilating unreactive pupil is the sign that matters and which side it is on is the whole question. Recorded on the head injury and craniotomy chart."
* #neuro-leg-power "Leg power" "A finding from the ICU neurological observation chart: limb power on either of the two scales the chart prints, or one pupil’s size and reaction. Each pupil carries a bodySite, because a unilaterally dilating unreactive pupil is the sign that matters and which side it is on is the whole question. Recorded on the ICU neurological observation chart."
* #neuro-pupil-reaction "Pupil reaction" "A finding from the ICU neurological observation chart: limb power on either of the two scales the chart prints, or one pupil’s size and reaction. Each pupil carries a bodySite, because a unilaterally dilating unreactive pupil is the sign that matters and which side it is on is the whole question. Recorded on the ICU neurological observation chart."
* #neuro-pupil-size "Pupil size" "A finding from the ICU neurological observation chart: limb power on either of the two scales the chart prints, or one pupil’s size and reaction. Each pupil carries a bodySite, because a unilaterally dilating unreactive pupil is the sign that matters and which side it is on is the whole question. Recorded on the ICU neurological observation chart."
* #neuro-right-pupil-assessment "Right pupil assessment" "A finding from the ICU neurological observation chart: limb power on either of the two scales the chart prints, or one pupil’s size and reaction. Each pupil carries a bodySite, because a unilaterally dilating unreactive pupil is the sign that matters and which side it is on is the whole question. Recorded on the head injury and craniotomy chart."

// ── Newborn ─────────────────────────────────────────────────────────────
* #newborn-apgar-score-as-recorded-on-handover "Apgar score as recorded on handover" "A finding or intervention recorded on a newborn record. Recorded on the newborn unit handover form."
* #newborn-duration-of-resuscitation "Duration of resuscitation" "A finding or intervention recorded on a newborn record. Recorded on the newborn unit handover form."
* #newborn-follow-up-round "Newborn follow-up round" "One morning, evening or night round of the routine newborn follow-up over the first four days of life. Its components carry what was checked on that round."
* #newborn-meconium-stained-liquor "Meconium stained liquor" "A finding or intervention recorded on a newborn record. Recorded on the newborn unit handover form."
* #newborn-passed-urine-or-stool-since-birth "Passed urine or stool since birth" "A finding or intervention recorded on a newborn record. Recorded on the newborn unit handover form."
* #newborn-resuscitated-at-birth "Resuscitated at birth" "A finding or intervention recorded on a newborn record. Recorded on the newborn unit handover form."
* #newborn-resuscitation "Resuscitation of a newborn" "Resuscitation given to a baby at birth, as recorded on the newborn observation chart. The chart records that it was done, for how long, and what was given."
* #newborn-route-oxygen-was-given-by "Route oxygen was given by" "A finding or intervention recorded on a newborn record. Recorded on the newborn unit handover form."

// ── Essential newborn care ──────────────────────────────────────────────
* #newborn-care-arvs-started "ARVs started" "One element of essential newborn care, recorded as given or not given. The chart records no dose and no time, which is why these are observations and not medication administrations. Recorded on the newborn observation chart."
* #newborn-care-cord-care-with-chlorhexidine "Cord care with chlorhexidine" "One element of essential newborn care, recorded as given or not given. The chart records no dose and no time, which is why these are observations and not medication administrations. Recorded on the newborn observation chart."
* #newborn-care-delayed-cord-clamp "Delayed cord clamp" "One element of essential newborn care, recorded as given or not given. The chart records no dose and no time, which is why these are observations and not medication administrations. Recorded on the newborn observation chart."
* #newborn-care-eye-care "Eye care" "One element of essential newborn care, recorded as given or not given. The chart records no dose and no time, which is why these are observations and not medication administrations. Recorded on the newborn observation chart."
* #newborn-care-infant-arv-prophylaxis-given "Infant ARV prophylaxis given" "One element of essential newborn care, recorded as given or not given. The chart records no dose and no time, which is why these are observations and not medication administrations. Recorded on the newborn unit handover form."
* #newborn-care-obvious-malformation "Obvious malformation" "One element of essential newborn care, recorded as given or not given. The chart records no dose and no time, which is why these are observations and not medication administrations. Recorded on the newborn observation chart."
* #newborn-care-sero-exposed "Sero-exposed" "One element of essential newborn care, recorded as given or not given. The chart records no dose and no time, which is why these are observations and not medication administrations. Recorded on the newborn observation chart."
* #newborn-care-tetracycline-eye-ointment-given "Tetracycline eye ointment given" "One element of essential newborn care, recorded as given or not given. The chart records no dose and no time, which is why these are observations and not medication administrations. Recorded on the newborn unit handover form."
* #newborn-care-vitamin-k "Vitamin K" "One element of essential newborn care, recorded as given or not given. The chart records no dose and no time, which is why these are observations and not medication administrations. Recorded on the newborn observation chart."
* #newborn-care-vitamin-k-given "Vitamin K given" "One element of essential newborn care, recorded as given or not given. The chart records no dose and no time, which is why these are observations and not medication administrations. Recorded on the newborn unit handover form."

// ── Newborn intervention ────────────────────────────────────────────────
* #newborn-intervention-apnoea "Apnoea" "Something the newborn comprehensive chart records about the support a baby is on — CPAP, oxygen, phototherapy, an incubator or kangaroo mother care — or the acuity category that sets how often the baby is observed. Recorded on the NICU monitoring chart."
* #newborn-intervention-blood-transfusion-in-progress "Blood transfusion in progress" "Something the newborn comprehensive chart records about the support a baby is on — CPAP, oxygen, phototherapy, an incubator or kangaroo mother care — or the acuity category that sets how often the baby is observed. Recorded on the newborn comprehensive chart."
* #newborn-intervention-colour "Colour" "Something the newborn comprehensive chart records about the support a baby is on — CPAP, oxygen, phototherapy, an incubator or kangaroo mother care — or the acuity category that sets how often the baby is observed. Recorded on the NICU monitoring chart."
* #newborn-intervention-cpap-in-use "CPAP in use" "Something the newborn comprehensive chart records about the support a baby is on — CPAP, oxygen, phototherapy, an incubator or kangaroo mother care — or the acuity category that sets how often the baby is observed. Recorded on the newborn comprehensive chart."
* #newborn-intervention-cpap-pressure "CPAP pressure" "Something the newborn comprehensive chart records about the support a baby is on — CPAP, oxygen, phototherapy, an incubator or kangaroo mother care — or the acuity category that sets how often the baby is observed. Recorded on the newborn comprehensive chart."
* #newborn-intervention-hours-on-cpap "Hours on CPAP" "Something the newborn comprehensive chart records about the support a baby is on — CPAP, oxygen, phototherapy, an incubator or kangaroo mother care — or the acuity category that sets how often the baby is observed. Recorded on the newborn comprehensive chart."
* #newborn-intervention-incubator-care "Incubator care" "Something the newborn comprehensive chart records about the support a baby is on — CPAP, oxygen, phototherapy, an incubator or kangaroo mother care — or the acuity category that sets how often the baby is observed. Recorded on the NICU monitoring chart."
* #newborn-intervention-incubator-in-use "Incubator in use" "Something the newborn comprehensive chart records about the support a baby is on — CPAP, oxygen, phototherapy, an incubator or kangaroo mother care — or the acuity category that sets how often the baby is observed. Recorded on the newborn comprehensive chart."
* #newborn-intervention-incubator-oxygen-port-in-use "Incubator oxygen port in use" "Something the newborn comprehensive chart records about the support a baby is on — CPAP, oxygen, phototherapy, an incubator or kangaroo mother care — or the acuity category that sets how often the baby is observed. Recorded on the newborn comprehensive chart."
* #newborn-intervention-inspired-oxygen-fraction "Inspired oxygen fraction" "Something the newborn comprehensive chart records about the support a baby is on — CPAP, oxygen, phototherapy, an incubator or kangaroo mother care — or the acuity category that sets how often the baby is observed. Recorded on the newborn comprehensive chart."
* #newborn-intervention-jaundice-grade "Jaundice grade" "Something the newborn comprehensive chart records about the support a baby is on — CPAP, oxygen, phototherapy, an incubator or kangaroo mother care — or the acuity category that sets how often the baby is observed. Recorded on the NICU monitoring chart."
* #newborn-intervention-kangaroo-mother-care "Kangaroo mother care" "Something the newborn comprehensive chart records about the support a baby is on — CPAP, oxygen, phototherapy, an incubator or kangaroo mother care — or the acuity category that sets how often the baby is observed. Recorded on the newborn comprehensive chart."
* #newborn-intervention-monitoring-frequency-in-hours "Monitoring frequency in hours" "Something the newborn comprehensive chart records about the support a baby is on — CPAP, oxygen, phototherapy, an incubator or kangaroo mother care — or the acuity category that sets how often the baby is observed. Recorded on the newborn comprehensive chart."
* #newborn-intervention-newborn-acuity-category "Newborn acuity category" "Something the newborn comprehensive chart records about the support a baby is on — CPAP, oxygen, phototherapy, an incubator or kangaroo mother care — or the acuity category that sets how often the baby is observed. Recorded on the newborn comprehensive chart."
* #newborn-intervention-newborn-assessment-on-a-nicu-round "Newborn assessment on a NICU round" "Something the newborn comprehensive chart records about the support a baby is on — CPAP, oxygen, phototherapy, an incubator or kangaroo mother care — or the acuity category that sets how often the baby is observed. Recorded on the NICU monitoring chart."
* #newborn-intervention-newborn-interventions-in-place "Newborn interventions in place" "Something the newborn comprehensive chart records about the support a baby is on — CPAP, oxygen, phototherapy, an incubator or kangaroo mother care — or the acuity category that sets how often the baby is observed. Recorded on the newborn comprehensive chart."
* #newborn-intervention-oxygen-flow "Oxygen flow" "Something the newborn comprehensive chart records about the support a baby is on — CPAP, oxygen, phototherapy, an incubator or kangaroo mother care — or the acuity category that sets how often the baby is observed. Recorded on the newborn comprehensive chart."
* #newborn-intervention-oxygen-in-use "Oxygen in use" "Something the newborn comprehensive chart records about the support a baby is on — CPAP, oxygen, phototherapy, an incubator or kangaroo mother care — or the acuity category that sets how often the baby is observed. Recorded on the newborn comprehensive chart."
* #newborn-intervention-phototherapy-in-use "Phototherapy in use" "Something the newborn comprehensive chart records about the support a baby is on — CPAP, oxygen, phototherapy, an incubator or kangaroo mother care — or the acuity category that sets how often the baby is observed. Recorded on the newborn comprehensive chart."
* #newborn-intervention-respiratory-distress-grade "Respiratory distress grade" "Something the newborn comprehensive chart records about the support a baby is on — CPAP, oxygen, phototherapy, an incubator or kangaroo mother care — or the acuity category that sets how often the baby is observed. Recorded on the newborn comprehensive chart."
* #newborn-intervention-respiratory-support-on-a-newborn-round "Respiratory support on a newborn round" "Something the newborn comprehensive chart records about the support a baby is on — CPAP, oxygen, phototherapy, an incubator or kangaroo mother care — or the acuity category that sets how often the baby is observed. Recorded on the newborn comprehensive chart."
* #newborn-intervention-shift "Shift" "Something the newborn comprehensive chart records about the support a baby is on — CPAP, oxygen, phototherapy, an incubator or kangaroo mother care — or the acuity category that sets how often the baby is observed. Recorded on the newborn comprehensive chart."
* #newborn-intervention-suctioned "Suctioned" "Something the newborn comprehensive chart records about the support a baby is on — CPAP, oxygen, phototherapy, an incubator or kangaroo mother care — or the acuity category that sets how often the baby is observed. Recorded on the NICU monitoring chart."

// ── Newborn follow-up round ─────────────────────────────────────────────
* #newborn-round-breastfeeding "Breastfeeding" "One thing checked on a routine newborn follow-up round over the first four days of life. Recorded on the newborn observation chart."
* #newborn-round-day-of-life "Day of life" "One thing checked on a routine newborn follow-up round over the first four days of life. Recorded on the newborn observation chart."
* #newborn-round-eyes "Eyes" "One thing checked on a routine newborn follow-up round over the first four days of life. Recorded on the newborn observation chart."
* #newborn-round-fontanelle "Fontanelle" "One thing checked on a routine newborn follow-up round over the first four days of life. Recorded on the newborn observation chart."
* #newborn-round-respiratory "Respiratory" "One thing checked on a routine newborn follow-up round over the first four days of life. Recorded on the newborn observation chart."
* #newborn-round-round-of-the-day "Round of the day" "One thing checked on a routine newborn follow-up round over the first four days of life. Recorded on the newborn observation chart."
* #newborn-round-stool "Stool" "One thing checked on a routine newborn follow-up round over the first four days of life. Recorded on the newborn observation chart."
* #newborn-round-tone "Tone" "One thing checked on a routine newborn follow-up round over the first four days of life. Recorded on the newborn observation chart."
* #newborn-round-urine "Urine" "One thing checked on a routine newborn follow-up round over the first four days of life. Recorded on the newborn observation chart."

// ── Nursing assessment ──────────────────────────────────────────────────
* #nursing-assessment-cardiovascular-examination-on-admission "Cardiovascular examination on admission" "One line of the head-to-toe assessment a nurse makes on admission, or a fact from the family and social history beside it. Free text per line as the sheet prints it: a coded scale would claim a precision a nursing admission does not have. Recorded on the admission form."
* #nursing-assessment-education "Education" "One line of the head-to-toe assessment a nurse makes on admission, or a fact from the family and social history beside it. Free text per line as the sheet prints it: a coded scale would claim a precision a nursing admission does not have. Recorded on the admission form."
* #nursing-assessment-extremities-on-admission "Extremities on admission" "One line of the head-to-toe assessment a nurse makes on admission, or a fact from the family and social history beside it. Free text per line as the sheet prints it: a coded scale would claim a precision a nursing admission does not have. Recorded on the admission form."
* #nursing-assessment-eyes-on-admission "Eyes on admission" "One line of the head-to-toe assessment a nurse makes on admission, or a fact from the family and social history beside it. Free text per line as the sheet prints it: a coded scale would claim a precision a nursing admission does not have. Recorded on the admission form."
* #nursing-assessment-family-circumstances "Family circumstances" "One line of the head-to-toe assessment a nurse makes on admission, or a fact from the family and social history beside it. Free text per line as the sheet prints it: a coded scale would claim a precision a nursing admission does not have. Recorded on the admission form."
* #nursing-assessment-gastrointestinal-examination-on-admission "Gastrointestinal examination on admission" "One line of the head-to-toe assessment a nurse makes on admission, or a fact from the family and social history beside it. Free text per line as the sheet prints it: a coded scale would claim a precision a nursing admission does not have. Recorded on the admission form."
* #nursing-assessment-genitourinary-examination-on-admission "Genitourinary examination on admission" "One line of the head-to-toe assessment a nurse makes on admission, or a fact from the family and social history beside it. Free text per line as the sheet prints it: a coded scale would claim a precision a nursing admission does not have. Recorded on the admission form."
* #nursing-assessment-hearing-on-admission "Hearing on admission" "One line of the head-to-toe assessment a nurse makes on admission, or a fact from the family and social history beside it. Free text per line as the sheet prints it: a coded scale would claim a precision a nursing admission does not have. Recorded on the admission form."
* #nursing-assessment-lungs-on-admission "Lungs on admission" "One line of the head-to-toe assessment a nurse makes on admission, or a fact from the family and social history beside it. Free text per line as the sheet prints it: a coded scale would claim a precision a nursing admission does not have. Recorded on the admission form."
* #nursing-assessment-mouth-and-teeth-on-admission "Mouth and teeth on admission" "One line of the head-to-toe assessment a nurse makes on admission, or a fact from the family and social history beside it. Free text per line as the sheet prints it: a coded scale would claim a precision a nursing admission does not have. Recorded on the admission form."
* #nursing-assessment-occupation "Occupation" "One line of the head-to-toe assessment a nurse makes on admission, or a fact from the family and social history beside it. Free text per line as the sheet prints it: a coded scale would claim a precision a nursing admission does not have. Recorded on the admission form."
* #nursing-assessment-orientation-on-admission "Orientation on admission" "One line of the head-to-toe assessment a nurse makes on admission, or a fact from the family and social history beside it. Free text per line as the sheet prints it: a coded scale would claim a precision a nursing admission does not have. Recorded on the admission form."
* #nursing-assessment-pain-and-its-location "Pain and its location" "One line of the head-to-toe assessment a nurse makes on admission, or a fact from the family and social history beside it. Free text per line as the sheet prints it: a coded scale would claim a precision a nursing admission does not have. Recorded on the admission form."
* #nursing-assessment-previous-admissions-reported-on-admission "Previous admissions reported on admission" "One line of the head-to-toe assessment a nurse makes on admission, or a fact from the family and social history beside it. Free text per line as the sheet prints it: a coded scale would claim a precision a nursing admission does not have. Recorded on the admission form."
* #nursing-assessment-skin-on-admission "Skin on admission" "One line of the head-to-toe assessment a nurse makes on admission, or a fact from the family and social history beside it. Free text per line as the sheet prints it: a coded scale would claim a precision a nursing admission does not have. Recorded on the admission form."
* #nursing-assessment-smokes-cigarettes "Smokes cigarettes" "One line of the head-to-toe assessment a nurse makes on admission, or a fact from the family and social history beside it. Free text per line as the sheet prints it: a coded scale would claim a precision a nursing admission does not have. Recorded on the admission form."
* #nursing-assessment-takes-alcohol "Takes alcohol" "One line of the head-to-toe assessment a nurse makes on admission, or a fact from the family and social history beside it. Free text per line as the sheet prints it: a coded scale would claim a precision a nursing admission does not have. Recorded on the admission form."

// ── Nursing process ─────────────────────────────────────────────────────
* #nursing-process-evaluation-of-the-nursing-plan "Evaluation of the nursing plan" "One column of the nursing care plan — assessment, expected outcome, intervention, the scientific rationale for it, implementation or evaluation. The rationale is kept because this sheet is the only place the reasoning behind a nursing action is written down. Recorded on the nursing care plan."
* #nursing-process-expected-outcome-or-goal "Expected outcome or goal" "One column of the nursing care plan — assessment, expected outcome, intervention, the scientific rationale for it, implementation or evaluation. The rationale is kept because this sheet is the only place the reasoning behind a nursing action is written down. Recorded on the nursing care plan."
* #nursing-process-implementation-of-the-nursing-plan "Implementation of the nursing plan" "One column of the nursing care plan — assessment, expected outcome, intervention, the scientific rationale for it, implementation or evaluation. The rationale is kept because this sheet is the only place the reasoning behind a nursing action is written down. Recorded on the nursing care plan."
* #nursing-process-nursing-assessment "Nursing assessment" "One column of the nursing care plan — assessment, expected outcome, intervention, the scientific rationale for it, implementation or evaluation. The rationale is kept because this sheet is the only place the reasoning behind a nursing action is written down. Recorded on the nursing care plan."
* #nursing-process-nursing-intervention "Nursing intervention" "One column of the nursing care plan — assessment, expected outcome, intervention, the scientific rationale for it, implementation or evaluation. The rationale is kept because this sheet is the only place the reasoning behind a nursing action is written down. Recorded on the nursing care plan."
* #nursing-process-record "Nursing process record" "One column of the nursing care plan — assessment, expected outcome, intervention, the scientific rationale for it, implementation or evaluation. The rationale is kept because this sheet is the only place the reasoning behind a nursing action is written down. Recorded on the nursing care plan."
* #nursing-process-scientific-rationale-for-the-intervention "Scientific rationale for the intervention" "One column of the nursing care plan — assessment, expected outcome, intervention, the scientific rationale for it, implementation or evaluation. The rationale is kept because this sheet is the only place the reasoning behind a nursing action is written down. Recorded on the nursing care plan."

// ── Nutrition assessment ────────────────────────────────────────────────
* #nutrition-age-of-the-father "Age of the father" "Something the paediatric nutrition assessment records: family or psychosocial history, feeding history, or an anthropometric derivation the form computes rather than measures. Recorded on the paediatric nutrition assessment."
* #nutrition-age-of-the-mother "Age of the mother" "Something the paediatric nutrition assessment records: family or psychosocial history, feeding history, or an anthropometric derivation the form computes rather than measures. Recorded on the paediatric nutrition assessment."
* #nutrition-age-other-foods-were-introduced "Age other foods were introduced" "Something the paediatric nutrition assessment records: family or psychosocial history, feeding history, or an anthropometric derivation the form computes rather than measures. Recorded on the paediatric nutrition assessment."
* #nutrition-ages-of-siblings "Ages of siblings" "Something the paediatric nutrition assessment records: family or psychosocial history, feeding history, or an anthropometric derivation the form computes rather than measures. Recorded on the paediatric nutrition assessment."
* #nutrition-birth-order-of-the-child "Birth order of the child" "Something the paediatric nutrition assessment records: family or psychosocial history, feeding history, or an anthropometric derivation the form computes rather than measures. Recorded on the paediatric nutrition assessment."
* #nutrition-diet-history "Diet history" "Something the paediatric nutrition assessment records: family or psychosocial history, feeding history, or an anthropometric derivation the form computes rather than measures. Recorded on the paediatric nutrition assessment."
* #nutrition-family-and-psychosocial-history "Family and psychosocial history" "Something the paediatric nutrition assessment records: family or psychosocial history, feeding history, or an anthropometric derivation the form computes rather than measures. Recorded on the paediatric nutrition assessment."
* #nutrition-marital-status-of-the-parents "Marital status of the parents" "Something the paediatric nutrition assessment records: family or psychosocial history, feeding history, or an anthropometric derivation the form computes rather than measures. Recorded on the paediatric nutrition assessment."
* #nutrition-occupation-of-the-father "Occupation of the father" "Something the paediatric nutrition assessment records: family or psychosocial history, feeding history, or an anthropometric derivation the form computes rather than measures. Recorded on the paediatric nutrition assessment."
* #nutrition-occupation-of-the-mother "Occupation of the mother" "Something the paediatric nutrition assessment records: family or psychosocial history, feeding history, or an anthropometric derivation the form computes rather than measures. Recorded on the paediatric nutrition assessment."
* #nutrition-residence-of-the-child "Residence of the child" "Something the paediatric nutrition assessment records: family or psychosocial history, feeding history, or an anthropometric derivation the form computes rather than measures. Recorded on the paediatric nutrition assessment."
* #nutrition-social-economic-and-education-status "Social, economic and education status" "Something the paediatric nutrition assessment records: family or psychosocial history, feeding history, or an anthropometric derivation the form computes rather than measures. Recorded on the paediatric nutrition assessment."
* #nutrition-usual-and-current-dietary-intake "Usual and current dietary intake" "Something the paediatric nutrition assessment records: family or psychosocial history, feeding history, or an anthropometric derivation the form computes rather than measures. Recorded on the paediatric nutrition assessment."
* #nutrition-weight-for-height-ratio "Weight-for-height ratio" "Something the paediatric nutrition assessment records: family or psychosocial history, feeding history, or an anthropometric derivation the form computes rather than measures. Recorded on the paediatric nutrition assessment."

// ── Recorded on a form ─────────────────────────────────────────
* #arterial-pressure-circuit "Arterial pressure (extracorporeal circuit)" "The pressure on the arterial limb of the dialysis circuit. A machine reading on the circuit, not the patient's arterial blood pressure, so it is deliberately not coded to 8480-6."
* #blood-donation "Blood donation" "One donation episode: the collection itself, from needle in to needle out, with the volume taken and the bag used."
* #blood-pump-rate "Blood pump rate" "The rate the dialysis machine pumps blood through the circuit, in millilitres per minute."
* #can-drink-or-breastfeed "Able to drink or breastfeed" "Whether the child can still take fluid by mouth. The single most important feeding question on the IMCI assessment."
* #carer-goals "Carer goals and expectations" "What the person caring for the patient says they want, and what stresses they carry. Kept apart from the patient's own goals because the two often differ and the form asks both."
* #chemotherapy-cycle-number "Cycle number" "Which cycle of the regimen this prescription is for."
* #chemotherapy-regimen "Chemotherapy regimen" "The named regimen being prescribed, as free text: the hospital's formulary is not coded, so the name travels as written."
* #donation-adverse-event "Post-donation adverse event" "One of the nine adverse events the KTTA form asks about after a donation. The answer says whether it happened."
* #donation-type "Type of donation" "Whether the donation is a normal whole-blood collection or an apheresis procedure."
* #essential-newborn-care-given "Essential newborn care given" "Which elements of essential newborn care were given — vitamin K, tetracycline eye ointment, chlorhexidine cord care, delayed clamping — as a checklist rather than as separate medication records, because the newborn chart records them as done or not done without dose or time."
* #fluid-removed "Fluid removed" "The weight difference across the session, which is the fluid actually taken off. Recorded because pre- and post-dialysis weight are both charted and their difference is what the nephrologist reads."
* #instrument-count-complete "Instrument, sponge and needle count complete" "Whether the counts were confirmed complete before the patient left the operating room. A never-event check, kept as its own concept rather than folded into the checklist items."
* #mortuary-disposal-of-a-body "Disposal of a body" "Something one of the forms records that no LOINC or SNOMED concept says. The display is the wording printed on the paper. Recorded on the mortuary consent form for the disposal of a baby."
* #mortuary-embalming "Embalming" "Something one of the forms records that no LOINC or SNOMED concept says. The display is the wording printed on the paper. Recorded on the embalming authorization form."
* #obs-abortions "Abortions" "Something one of the forms records that no LOINC or SNOMED concept says. The display is the wording printed on the paper. Recorded on the maternity record."
* #obs-age-in-days "Age in days" "Something one of the forms records that no LOINC or SNOMED concept says. The display is the wording printed on the paper. Recorded on the newborn unit handover form."
* #obs-alcohol "Alcohol" "Something one of the forms records that no LOINC or SNOMED concept says. The display is the wording printed on the paper. Recorded on the maternity record."
* #obs-alcohol-detail "Alcohol detail" "Something one of the forms records that no LOINC or SNOMED concept says. The display is the wording printed on the paper. Recorded on the maternity record."
* #obs-any-other "Any other" "Something one of the forms records that no LOINC or SNOMED concept says. The display is the wording printed on the paper. Recorded on the maternity record."
* #obs-appearance "Appearance" "Something one of the forms records that no LOINC or SNOMED concept says. The display is the wording printed on the paper. Recorded on the maternity record."
* #obs-baby-admitted-to-nbu "Baby admitted to NBU" "Something one of the forms records that no LOINC or SNOMED concept says. The display is the wording printed on the paper. Recorded on the maternity record."
* #obs-bleeding-or-tenderness "Bleeding or tenderness" "Something one of the forms records that no LOINC or SNOMED concept says. The display is the wording printed on the paper. Recorded on the maternity record."
* #obs-contractions "Contractions" "Something one of the forms records that no LOINC or SNOMED concept says. The display is the wording printed on the paper. Recorded on the maternity record."
* #obs-course-of-the-pregnancy "Course of the pregnancy" "Something one of the forms records that no LOINC or SNOMED concept says. The display is the wording printed on the paper. Recorded on the maternity record."
* #obs-day-in-unit "Day in unit" "Something one of the forms records that no LOINC or SNOMED concept says. The display is the wording printed on the paper. Recorded on the ICU neurological observation chart."
* #obs-day-of-life "Day of life" "Something one of the forms records that no LOINC or SNOMED concept says. The display is the wording printed on the paper. Recorded on the newborn comprehensive chart."
* #obs-diabetes "Diabetes" "Something one of the forms records that no LOINC or SNOMED concept says. The display is the wording printed on the paper. Recorded on the maternity record."
* #obs-duration-of-labour "Duration of labour" "Something one of the forms records that no LOINC or SNOMED concept says. The display is the wording printed on the paper. Recorded on the newborn unit handover form."
* #obs-duration-of-the-first-stage-of-labour "Duration of the first stage of labour" "Something one of the forms records that no LOINC or SNOMED concept says. The display is the wording printed on the paper. Recorded on the maternity record."
* #obs-duration-of-the-second-stage-of-labour "Duration of the second stage of labour" "Something one of the forms records that no LOINC or SNOMED concept says. The display is the wording printed on the paper. Recorded on the maternity record."
* #obs-folic-acid-taken-pre-conception-or-in-the-first "Folic acid taken pre-conception or in the first trimester" "Something one of the forms records that no LOINC or SNOMED concept says. The display is the wording printed on the paper. Recorded on the maternity record."
* #obs-general "General" "Something one of the forms records that no LOINC or SNOMED concept says. The display is the wording printed on the paper. Recorded on the maternity record."
* #obs-hypertension "Hypertension" "Something one of the forms records that no LOINC or SNOMED concept says. The display is the wording printed on the paper. Recorded on the maternity record."
* #obs-inherited-conditions "Inherited conditions" "Something one of the forms records that no LOINC or SNOMED concept says. The display is the wording printed on the paper. Recorded on the maternity record."
* #obs-jaundice-or-pallor "Jaundice or pallor" "Something one of the forms records that no LOINC or SNOMED concept says. The display is the wording printed on the paper. Recorded on the maternity record."
* #obs-labour "Labour" "Something one of the forms records that no LOINC or SNOMED concept says. The display is the wording printed on the paper. Recorded on the maternity record."
* #obs-marital-status "Marital status" "Something one of the forms records that no LOINC or SNOMED concept says. The display is the wording printed on the paper. Recorded on the maternity record."
* #obs-nst-or-ctg "NST or CTG" "Something one of the forms records that no LOINC or SNOMED concept says. The display is the wording printed on the paper. Recorded on the maternity record."
* #obs-number-of-antenatal-visits "Number of antenatal visits" "Something one of the forms records that no LOINC or SNOMED concept says. The display is the wording printed on the paper. Recorded on the maternity record."
* #obs-other-children-admitted-in-nbu "Other children admitted in NBU" "Something one of the forms records that no LOINC or SNOMED concept says. The display is the wording printed on the paper. Recorded on the maternity record."
* #obs-other-diet-issue "Other diet issue" "Something one of the forms records that no LOINC or SNOMED concept says. The display is the wording printed on the paper. Recorded on the maternity record."
* #obs-other-investigation "Other investigation" "Something one of the forms records that no LOINC or SNOMED concept says. The display is the wording printed on the paper. Recorded on the maternity record."
* #obs-other-social-history "Other social history" "Something one of the forms records that no LOINC or SNOMED concept says. The display is the wording printed on the paper. Recorded on the maternity record."
* #obs-outcome "Outcome" "Something one of the forms records that no LOINC or SNOMED concept says. The display is the wording printed on the paper. Recorded on the maternity record."
* #obs-puerperium "Puerperium" "Something one of the forms records that no LOINC or SNOMED concept says. The display is the wording printed on the paper. Recorded on the maternity record."
* #obs-smoker "Smoker" "Something one of the forms records that no LOINC or SNOMED concept says. The display is the wording printed on the paper. Recorded on the maternity record."
* #obs-smoking-detail "Smoking detail" "Something one of the forms records that no LOINC or SNOMED concept says. The display is the wording printed on the paper. Recorded on the maternity record."
* #obs-twins "Twins" "Something one of the forms records that no LOINC or SNOMED concept says. The display is the wording printed on the paper. Recorded on the maternity record."
* #obs-vegetarian "Vegetarian" "Something one of the forms records that no LOINC or SNOMED concept says. The display is the wording printed on the paper. Recorded on the maternity record."
* #obs-year "Year" "Something one of the forms records that no LOINC or SNOMED concept says. The display is the wording printed on the paper. Recorded on the maternity record."
* #oedema-distribution "Oedema distribution" "How far up the body oedema extends — none, feet, to the knee, or the face — which is what grades it in a malnourished child."
* #patient-goals "Patient goals and expectations" "What the patient says they want from their care. Recorded as narrative because the form asks for it in the patient's own words."
* #perineal-outcome "Perineal outcome" "Whether the perineum was intact, tore, or was deliberately incised and repaired."
* #placenta-completeness "Placenta and membrane completeness" "Whether the placenta and the membranes were delivered complete, which decides whether the uterus has to be explored."
* #postoperative-check "Post-operative check" "One of the checks the ward nurse makes when a patient comes back from theatre: wound, drainage, vomiting, catheter, nasogastric tube, infusion and oxygen."
* #preoperative-preparation "Pre-operative preparation completed" "Which items of ward preparation were done before theatre — fasting, dentures and jewellery removed, shaving, bath, gown, skin preparation — as a checklist."
* #previous-donation-count "Number of previous donations" "How many times this donor has given blood before."
* #prior-oncological-treatment "Prior oncological treatment" "Which of radiotherapy, chemotherapy or surgery the patient has already had, and when, as recorded on the palliative care assessment."
* #skin-pinch-time "Skin pinch return time" "How long the abdominal skin takes to flatten after being pinched, in seconds. A dehydration sign. The nearest LOINC term is 44971-0 Capillary refill [Time], which is a different observation on a different site and measures perfusion rather than turgor, so it is not reused here — the triage sheet asks for both, side by side."
* #spiritual-assessment "Spiritual assessment" "The spiritual assessment recorded on the palliative care form, as narrative."
* #surgical-safety-phase "Surgical safety checklist phase" "Which of the WHO checklist's three phases the answers belong to: sign-in before induction, time-out before skin incision, or sign-out before the patient leaves the room."
* #transmembrane-pressure "Transmembrane pressure" "The pressure across the dialyser membrane, in mmHg."
* #treatment-line "Line of treatment" "Which line of systemic therapy this is — first, second, third or later — which is what decides the regimen."
* #ultrafiltration-volume "Ultrafiltration volume" "The volume removed by ultrafiltration during the session, in millilitres."
* #venous-pressure-circuit "Venous pressure (extracorporeal circuit)" "The pressure on the venous limb of the dialysis circuit."
* #volume-donated "Volume donated" "The volume collected, in millilitres."
* #ward-clearance "Ward clearance" "The ward's sign-off that a discharging patient's medication has been issued and the bed released. An administrative attestation, so it becomes an Observation with a boolean value rather than a clinical finding."

// ── Obstetric finding ───────────────────────────────────────────────────
* #obstetric-antenatal-examination-on-a-round "Antenatal examination on a round" "A finding from an obstetric examination or from the report on labour. Recorded on the antenatal vital signs sheet."
* #obstetric-bowels-opened "Bowels opened" "A finding from an obstetric examination or from the report on labour. Recorded on the antenatal vital signs sheet."
* #obstetric-fetal-presentation "Fetal presentation" "A finding from an obstetric examination or from the report on labour. Recorded on the antenatal vital signs sheet."
* #obstetric-mode-of-delivery "Mode of delivery" "A finding from an obstetric examination or from the report on labour. Recorded on the maternity record."
* #obstetric-placenta-weight "Placenta weight" "A finding from an obstetric examination or from the report on labour. Recorded on the maternity record."
* #obstetric-position "Position" "A finding from an obstetric examination or from the report on labour. Recorded on the maternity record."

// ── Obstetric history ───────────────────────────────────────────────────
* #obstetric-history-parity "Parity" "A fact about previous pregnancies carried on an antenatal sheet. Recorded on the antenatal vital signs sheet."

// ── Palliative care ─────────────────────────────────────────────────────
* #palliative-abdominal-pain "Abdominal pain" "A symptom, goal or problem from the palliative care assessment. The symptoms are the twenty-two-item checklist; the goals are recorded separately for the patient and for the carer, because the two often differ. Recorded on the palliative care assessment."
* #palliative-body-weakness "Body weakness" "A symptom, goal or problem from the palliative care assessment. The symptoms are the twenty-two-item checklist; the goals are recorded separately for the patient and for the carer, because the two often differ. Recorded on the palliative care assessment."
* #palliative-chest-pain "Chest pain" "A symptom, goal or problem from the palliative care assessment. The symptoms are the twenty-two-item checklist; the goals are recorded separately for the patient and for the carer, because the two often differ. Recorded on the palliative care assessment."
* #palliative-constipation "Constipation" "A symptom, goal or problem from the palliative care assessment. The symptoms are the twenty-two-item checklist; the goals are recorded separately for the patient and for the carer, because the two often differ. Recorded on the palliative care assessment."
* #palliative-cough "Cough" "A symptom, goal or problem from the palliative care assessment. The symptoms are the twenty-two-item checklist; the goals are recorded separately for the patient and for the carer, because the two often differ. Recorded on the palliative care assessment."
* #palliative-diarrhoea "Diarrhoea" "A symptom, goal or problem from the palliative care assessment. The symptoms are the twenty-two-item checklist; the goals are recorded separately for the patient and for the carer, because the two often differ. Recorded on the palliative care assessment."
* #palliative-dry-mouth "Dry mouth" "A symptom, goal or problem from the palliative care assessment. The symptoms are the twenty-two-item checklist; the goals are recorded separately for the patient and for the carer, because the two often differ. Recorded on the palliative care assessment."
* #palliative-excessive-sleep "Excessive sleep" "A symptom, goal or problem from the palliative care assessment. The symptoms are the twenty-two-item checklist; the goals are recorded separately for the patient and for the carer, because the two often differ. Recorded on the palliative care assessment."
* #palliative-fever "Fever" "A symptom, goal or problem from the palliative care assessment. The symptoms are the twenty-two-item checklist; the goals are recorded separately for the patient and for the carer, because the two often differ. Recorded on the palliative care assessment."
* #palliative-hallucinations "Hallucinations" "A symptom, goal or problem from the palliative care assessment. The symptoms are the twenty-two-item checklist; the goals are recorded separately for the patient and for the carer, because the two often differ. Recorded on the palliative care assessment."
* #palliative-headache "Headache" "A symptom, goal or problem from the palliative care assessment. The symptoms are the twenty-two-item checklist; the goals are recorded separately for the patient and for the carer, because the two often differ. Recorded on the palliative care assessment."
* #palliative-incontinence "Incontinence" "A symptom, goal or problem from the palliative care assessment. The symptoms are the twenty-two-item checklist; the goals are recorded separately for the patient and for the carer, because the two often differ. Recorded on the palliative care assessment."
* #palliative-jaundice "Jaundice" "A symptom, goal or problem from the palliative care assessment. The symptoms are the twenty-two-item checklist; the goals are recorded separately for the patient and for the carer, because the two often differ. Recorded on the palliative care assessment."
* #palliative-loss-of-appetite "Loss of appetite" "A symptom, goal or problem from the palliative care assessment. The symptoms are the twenty-two-item checklist; the goals are recorded separately for the patient and for the carer, because the two often differ. Recorded on the palliative care assessment."
* #palliative-melaena "Melaena" "A symptom, goal or problem from the palliative care assessment. The symptoms are the twenty-two-item checklist; the goals are recorded separately for the patient and for the carer, because the two often differ. Recorded on the palliative care assessment."
* #palliative-nausea-or-vomiting "Nausea or vomiting" "A symptom, goal or problem from the palliative care assessment. The symptoms are the twenty-two-item checklist; the goals are recorded separately for the patient and for the carer, because the two often differ. Recorded on the palliative care assessment."
* #palliative-per-rectal-bleeding "Per rectal bleeding" "A symptom, goal or problem from the palliative care assessment. The symptoms are the twenty-two-item checklist; the goals are recorded separately for the patient and for the carer, because the two often differ. Recorded on the palliative care assessment."
* #palliative-per-rectal-pain "Per rectal pain" "A symptom, goal or problem from the palliative care assessment. The symptoms are the twenty-two-item checklist; the goals are recorded separately for the patient and for the carer, because the two often differ. Recorded on the palliative care assessment."
* #palliative-poor-vision "Poor vision" "A symptom, goal or problem from the palliative care assessment. The symptoms are the twenty-two-item checklist; the goals are recorded separately for the patient and for the carer, because the two often differ. Recorded on the palliative care assessment."
* #palliative-problem "Palliative care problem" "One physical, psychosocial or spiritual problem identified on assessment, with the action planned for it. Becomes a CarePlan activity rather than a Condition unless it names a diagnosis."
* #palliative-referral-source "Palliative referral source" "A symptom, goal or problem from the palliative care assessment. The symptoms are the twenty-two-item checklist; the goals are recorded separately for the patient and for the carer, because the two often differ. Recorded on the palliative care assessment."
* #palliative-sore-mouth "Sore mouth" "A symptom, goal or problem from the palliative care assessment. The symptoms are the twenty-two-item checklist; the goals are recorded separately for the patient and for the carer, because the two often differ. Recorded on the palliative care assessment."
* #palliative-symptom "Palliative care symptom" "One symptom from the palliative care assessment's twenty-two-item checklist. The answer says whether it is present."
* #palliative-weakness-of-limbs "Weakness of limbs" "A symptom, goal or problem from the palliative care assessment. The symptoms are the twenty-two-item checklist; the goals are recorded separately for the patient and for the carer, because the two often differ. Recorded on the palliative care assessment."
* #palliative-weight-loss "Weight loss" "A symptom, goal or problem from the palliative care assessment. The symptoms are the twenty-two-item checklist; the goals are recorded separately for the patient and for the carer, because the two often differ. Recorded on the palliative care assessment."

// ── Post-operative check ────────────────────────────────────────────────
* #postop-analgesic-therapy-given "Analgesic therapy given" "One of the checks the ward nurse makes when a patient comes back from theatre. Recorded on the surgical safety checklist."
* #postop-catheter-in-place "Catheter in place" "One of the checks the ward nurse makes when a patient comes back from theatre. Recorded on the surgical safety checklist."
* #postop-check-list-operative-complete "Check-list operative complete" "One of the checks the ward nurse makes when a patient comes back from theatre. Recorded on the surgical safety checklist."
* #postop-drainage-checked "Drainage checked" "One of the checks the ward nurse makes when a patient comes back from theatre. Recorded on the surgical safety checklist."
* #postop-infusion-therapy-running "Infusion therapy running" "One of the checks the ward nurse makes when a patient comes back from theatre. Recorded on the surgical safety checklist."
* #postop-level-of-consciousness "Level of consciousness" "One of the checks the ward nurse makes when a patient comes back from theatre. Recorded on the surgical safety checklist."
* #postop-nasogastric-tube-in-place "Nasogastric tube in place" "One of the checks the ward nurse makes when a patient comes back from theatre. Recorded on the surgical safety checklist."
* #postop-oxygen-therapy-running "Oxygen therapy running" "One of the checks the ward nurse makes when a patient comes back from theatre. Recorded on the surgical safety checklist."
* #postop-pain "Pain" "One of the checks the ward nurse makes when a patient comes back from theatre. Recorded on the surgical safety checklist."
* #postop-vomiting-checked "Vomiting checked" "One of the checks the ward nurse makes when a patient comes back from theatre. Recorded on the surgical safety checklist."
* #postop-wound-checked "Wound checked" "One of the checks the ward nurse makes when a patient comes back from theatre. Recorded on the surgical safety checklist."

// ── Pre-operative preparation ───────────────────────────────────────────
* #preop-artificial-limb-removed "Artificial limb removed" "One item of ward preparation before theatre, or a line or tube the theatre needs to know is already in place. Recorded on the surgical safety checklist."
* #preop-bath "Bath" "One item of ward preparation before theatre, or a line or tube the theatre needs to know is already in place. Recorded on the surgical safety checklist."
* #preop-blood-requested "Blood requested" "One item of ward preparation before theatre, or a line or tube the theatre needs to know is already in place. Recorded on the surgical safety checklist."
* #preop-blood-requested-and-available-before-theatre "Blood requested and available before theatre" "One item of ward preparation before theatre, or a line or tube the theatre needs to know is already in place. Recorded on the surgical safety checklist."
* #preop-catheter "Catheter" "One item of ward preparation before theatre, or a line or tube the theatre needs to know is already in place. Recorded on the surgical safety checklist."
* #preop-dentures-removed "Dentures removed" "One item of ward preparation before theatre, or a line or tube the theatre needs to know is already in place. Recorded on the surgical safety checklist."
* #preop-fasting "Fasting" "One item of ward preparation before theatre, or a line or tube the theatre needs to know is already in place. Recorded on the surgical safety checklist."
* #preop-intravenous-infusion "Intravenous infusion" "One item of ward preparation before theatre, or a line or tube the theatre needs to know is already in place. Recorded on the surgical safety checklist."
* #preop-jewellery-removed "Jewellery removed" "One item of ward preparation before theatre, or a line or tube the theatre needs to know is already in place. Recorded on the surgical safety checklist."
* #preop-lines-and-tubes-in-place-before-theatre "Lines and tubes in place before theatre" "One item of ward preparation before theatre, or a line or tube the theatre needs to know is already in place. Recorded on the surgical safety checklist."
* #preop-nail-varnish-removed "Nail varnish removed" "One item of ward preparation before theatre, or a line or tube the theatre needs to know is already in place. Recorded on the surgical safety checklist."
* #preop-nasogastric-tube "Nasogastric tube" "One item of ward preparation before theatre, or a line or tube the theatre needs to know is already in place. Recorded on the surgical safety checklist."
* #preop-pints-available "Pints available" "One item of ward preparation before theatre, or a line or tube the theatre needs to know is already in place. Recorded on the surgical safety checklist."
* #preop-shaving "Shaving" "One item of ward preparation before theatre, or a line or tube the theatre needs to know is already in place. Recorded on the surgical safety checklist."
* #preop-skin-cleaned "Skin cleaned" "One item of ward preparation before theatre, or a line or tube the theatre needs to know is already in place. Recorded on the surgical safety checklist."
* #preop-theatre-gown "Theatre gown" "One item of ward preparation before theatre, or a line or tube the theatre needs to know is already in place. Recorded on the surgical safety checklist."

// ── Prior oncological treatment ─────────────────────────────────────────
* #prior-treatment-not-discussed-with-the-patient "Prior treatment not discussed with the patient" "Radiotherapy, chemotherapy or surgery the patient has already had, as recorded on the palliative care assessment. Recorded on the palliative care assessment."

// ── Priority sign ───────────────────────────────────────────────────────
* #priority-sign "Priority sign present" "One of the priority signs the paediatric triage sheet looks for, which brings the child to a clinician within fifteen minutes."

// ── Pupil assessment ────────────────────────────────────────────────────
* #pupil-assessment "Pupil assessment" "Something one of the forms records that no LOINC or SNOMED concept says. The display is the wording printed on the paper. Recorded on the ICU neurological observation chart."

// ── Referral ────────────────────────────────────────────────────────────
* #referral-other-pertinent-comments-on-referral "Other pertinent comments on referral" "Something the patient referral form records. The reason for referral has its own code rather than riding in the history, because it is what tells the receiving unit what is being asked of them. Recorded on the patient referral form."

// ── Rehabilitation ──────────────────────────────────────────────────────
* #rehabilitation-treatment-diagnosis-for-rehabilitation "Treatment diagnosis for rehabilitation" "Something the rehabilitation services record captures: the billable units for a contact, or what rehabilitation is actually treating as opposed to what the patient was admitted with. Recorded on the rehabilitation services record."
* #rehabilitation-units-billed "Rehabilitation units billed" "Something the rehabilitation services record captures: the billable units for a contact, or what rehabilitation is actually treating as opposed to what the patient was admitted with. Recorded on the rehabilitation services record."

// ── Clinical sign ───────────────────────────────────────────────────────
* #sign-abdominal-distension "Abdominal distension" "A sign or symptom the sheet asks the examiner to look for and record as present or absent, or a count or duration recorded beside one. Recorded on the newborn admission record."
* #sign-acidotic-breathing "Acidotic breathing" "A sign or symptom the sheet asks the examiner to look for and record as present or absent, or a count or duration recorded beside one. Recorded on the paediatric admission record."
* #sign-apnoeas "Apnoeas" "A sign or symptom the sheet asks the examiner to look for and record as present or absent, or a count or duration recorded beside one. Recorded on the newborn admission record."
* #sign-bilirubin "Bilirubin" "A sign or symptom the sheet asks the examiner to look for and record as present or absent, or a count or duration recorded beside one. Recorded on the newborn admission record."
* #sign-bloody-diarrhoea "Bloody diarrhoea" "A sign or symptom the sheet asks the examiner to look for and record as present or absent, or a count or duration recorded beside one. Recorded on the paediatric admission record."
* #sign-bulging-fontanelle "Bulging fontanelle" "A sign or symptom the sheet asks the examiner to look for and record as present or absent, or a count or duration recorded beside one. Recorded on the newborn admission record and the paediatric admission record."
* #sign-burns "Burns" "A sign or symptom the sheet asks the examiner to look for and record as present or absent, or a count or duration recorded beside one. Recorded on the paediatric triage record."
* #sign-capillary-refill-band "Capillary refill band" "A sign or symptom the sheet asks the examiner to look for and record as present or absent, or a count or duration recorded beside one. Recorded on the newborn admission record."
* #sign-central-cyanosis "Central cyanosis" "A sign or symptom the sheet asks the examiner to look for and record as present or absent, or a count or duration recorded beside one. Recorded on the newborn admission record and the paediatric admission record."
* #sign-chest-indrawing "Chest indrawing" "A sign or symptom the sheet asks the examiner to look for and record as present or absent, or a count or duration recorded beside one. Recorded on the paediatric admission record."
* #sign-contact-with-tb-or-a-chronic-cough-in-the-last-12 "Contact with TB or a chronic cough in the last 12 months" "A sign or symptom the sheet asks the examiner to look for and record as present or absent, or a count or duration recorded beside one. Recorded on the paediatric admission record."
* #sign-convulsions "Convulsions" "A sign or symptom the sheet asks the examiner to look for and record as present or absent, or a count or duration recorded beside one. Recorded on the newborn admission record."
* #sign-convulsions-during-this-illness "Convulsions during this illness" "A sign or symptom the sheet asks the examiner to look for and record as present or absent, or a count or duration recorded beside one. Recorded on the paediatric admission record."
* #sign-cough "Cough" "A sign or symptom the sheet asks the examiner to look for and record as present or absent, or a count or duration recorded beside one. Recorded on the paediatric admission record."
* #sign-cough-for-more-than-two-weeks "Cough for more than two weeks" "A sign or symptom the sheet asks the examiner to look for and record as present or absent, or a count or duration recorded beside one. Recorded on the paediatric admission record."
* #sign-crackles "Crackles" "A sign or symptom the sheet asks the examiner to look for and record as present or absent, or a count or duration recorded beside one. Recorded on the newborn admission record and the paediatric admission record."
* #sign-days-of-cough "Days of cough" "A sign or symptom the sheet asks the examiner to look for and record as present or absent, or a count or duration recorded beside one. Recorded on the paediatric admission record."
* #sign-days-of-diarrhoea "Days of diarrhoea" "A sign or symptom the sheet asks the examiner to look for and record as present or absent, or a count or duration recorded beside one. Recorded on the paediatric admission record."
* #sign-days-of-fever "Days of fever" "A sign or symptom the sheet asks the examiner to look for and record as present or absent, or a count or duration recorded beside one. Recorded on the paediatric admission record."
* #sign-diarrhoea "Diarrhoea" "A sign or symptom the sheet asks the examiner to look for and record as present or absent, or a count or duration recorded beside one. Recorded on the newborn admission record and the paediatric admission record."
* #sign-diarrhoea-for-more-than-14-days "Diarrhoea for more than 14 days" "A sign or symptom the sheet asks the examiner to look for and record as present or absent, or a count or duration recorded beside one. Recorded on the paediatric admission record."
* #sign-difficulty-breathing "Difficulty breathing" "A sign or symptom the sheet asks the examiner to look for and record as present or absent, or a count or duration recorded beside one. Recorded on the newborn admission record and the paediatric admission record."
* #sign-difficulty-feeding "Difficulty feeding" "A sign or symptom the sheet asks the examiner to look for and record as present or absent, or a count or duration recorded beside one. Recorded on the newborn admission record and the paediatric admission record."
* #sign-fever "Fever" "A sign or symptom the sheet asks the examiner to look for and record as present or absent, or a count or duration recorded beside one. Recorded on the newborn admission record and the paediatric admission record."
* #sign-finger-clubbing "Finger clubbing" "A sign or symptom the sheet asks the examiner to look for and record as present or absent, or a count or duration recorded beside one. Recorded on the paediatric admission record."
* #sign-floppy-or-unable-to-suck "Floppy, or unable to suck" "A sign or symptom the sheet asks the examiner to look for and record as present or absent, or a count or duration recorded beside one. Recorded on the newborn admission record."
* #sign-grunting "Grunting" "A sign or symptom the sheet asks the examiner to look for and record as present or absent, or a count or duration recorded beside one. Recorded on the newborn admission record and the paediatric admission record."
* #sign-haemoglobin-or-haematocrit "Haemoglobin or haematocrit" "A sign or symptom the sheet asks the examiner to look for and record as present or absent, or a count or duration recorded beside one. Recorded on the newborn admission record."
* #sign-high-pitched-cry "High pitched cry" "A sign or symptom the sheet asks the examiner to look for and record as present or absent, or a count or duration recorded beside one. Recorded on the newborn admission record."
* #sign-irritable "Irritable" "A sign or symptom the sheet asks the examiner to look for and record as present or absent, or a count or duration recorded beside one. Recorded on the paediatric admission record."
* #sign-length-of-illness-in-days "Length of illness in days" "A sign or symptom the sheet asks the examiner to look for and record as present or absent, or a count or duration recorded beside one. Recorded on the newborn admission record and the paediatric admission record."
* #sign-lumbar-puncture "Lumbar puncture" "A sign or symptom the sheet asks the examiner to look for and record as present or absent, or a count or duration recorded beside one. Recorded on the newborn admission record."
* #sign-lymph-node-greater-than-1-cm "Lymph node greater than 1 cm" "A sign or symptom the sheet asks the examiner to look for and record as present or absent, or a count or duration recorded beside one. Recorded on the paediatric admission record."
* #sign-malnutrition "Malnutrition" "A sign or symptom the sheet asks the examiner to look for and record as present or absent, or a count or duration recorded beside one. Recorded on the paediatric triage record."
* #sign-meconium-stained-liquor "Meconium stained liquor" "A sign or symptom the sheet asks the examiner to look for and record as present or absent, or a count or duration recorded beside one. Recorded on the newborn observation chart."
* #sign-number-of-convulsions-this-illness "Number of convulsions this illness" "A sign or symptom the sheet asks the examiner to look for and record as present or absent, or a count or duration recorded beside one. Recorded on the paediatric admission record."
* #sign-oedema "Oedema" "A sign or symptom the sheet asks the examiner to look for and record as present or absent, or a count or duration recorded beside one. Recorded on the paediatric triage record."
* #sign-oral-thrush "Oral thrush" "A sign or symptom the sheet asks the examiner to look for and record as present or absent, or a count or duration recorded beside one. Recorded on the paediatric admission record."
* #sign-pallor "Pallor" "A sign or symptom the sheet asks the examiner to look for and record as present or absent, or a count or duration recorded beside one. Recorded on the paediatric triage record."
* #sign-partial-or-focal-fits "Partial or focal fits" "A sign or symptom the sheet asks the examiner to look for and record as present or absent, or a count or duration recorded beside one. Recorded on the newborn admission record and the paediatric admission record."
* #sign-peripheral-pulse "Peripheral pulse" "A sign or symptom the sheet asks the examiner to look for and record as present or absent, or a count or duration recorded beside one. Recorded on the paediatric admission record."
* #sign-poisoning "Poisoning" "A sign or symptom the sheet asks the examiner to look for and record as present or absent, or a count or duration recorded beside one. Recorded on the paediatric triage record."
* #sign-prolonged-rupture-of-membranes-over-24-hours "Prolonged rupture of membranes over 24 hours" "A sign or symptom the sheet asks the examiner to look for and record as present or absent, or a count or duration recorded beside one. Recorded on the newborn admission record."
* #sign-reduced-movement-or-tone "Reduced movement or tone" "A sign or symptom the sheet asks the examiner to look for and record as present or absent, or a count or duration recorded beside one. Recorded on the paediatric admission record."
* #sign-referral "Referral" "A sign or symptom the sheet asks the examiner to look for and record as present or absent, or a count or duration recorded beside one. Recorded on the paediatric triage record."
* #sign-respiratory-distress "Respiratory distress" "A sign or symptom the sheet asks the examiner to look for and record as present or absent, or a count or duration recorded beside one. Recorded on the paediatric triage record."
* #sign-restless-irritable-or-floppy "Restless, irritable or floppy" "A sign or symptom the sheet asks the examiner to look for and record as present or absent, or a count or duration recorded beside one. Recorded on the paediatric triage record."
* #sign-severe-indrawing "Severe indrawing" "A sign or symptom the sheet asks the examiner to look for and record as present or absent, or a count or duration recorded beside one. Recorded on the newborn admission record."
* #sign-severe-pain "Severe pain" "A sign or symptom the sheet asks the examiner to look for and record as present or absent, or a count or duration recorded beside one. Recorded on the paediatric triage record."
* #sign-severe-skin-pustules "Severe skin pustules" "A sign or symptom the sheet asks the examiner to look for and record as present or absent, or a count or duration recorded beside one. Recorded on the newborn admission record."
* #sign-severe-vomiting "Severe vomiting" "A sign or symptom the sheet asks the examiner to look for and record as present or absent, or a count or duration recorded beside one. Recorded on the newborn admission record."
* #sign-skin-warm-as-far-as "Skin warm as far as" "A sign or symptom the sheet asks the examiner to look for and record as present or absent, or a count or duration recorded beside one. Recorded on the paediatric admission record."
* #sign-stiff-neck "Stiff neck" "A sign or symptom the sheet asks the examiner to look for and record as present or absent, or a count or duration recorded beside one. Recorded on the paediatric admission record."
* #sign-stridor "Stridor" "A sign or symptom the sheet asks the examiner to look for and record as present or absent, or a count or duration recorded beside one. Recorded on the paediatric admission record."
* #sign-sunken-eyes "Sunken eyes" "A sign or symptom the sheet asks the examiner to look for and record as present or absent, or a count or duration recorded beside one. Recorded on the paediatric admission record."
* #sign-temperature-over-39-5-degrees-celsius "Temperature over 39.5 degrees Celsius" "A sign or symptom the sheet asks the examiner to look for and record as present or absent, or a count or duration recorded beside one. Recorded on the paediatric triage record."
* #sign-tiny-sick-infant-aged-under-2-months "Tiny, sick infant aged under 2 months" "A sign or symptom the sheet asks the examiner to look for and record as present or absent, or a count or duration recorded beside one. Recorded on the paediatric triage record."
* #sign-trauma "Trauma" "A sign or symptom the sheet asks the examiner to look for and record as present or absent, or a count or duration recorded beside one. Recorded on the paediatric triage record."
* #sign-vomiting "Vomiting" "A sign or symptom the sheet asks the examiner to look for and record as present or absent, or a count or duration recorded beside one. Recorded on the paediatric admission record."
* #sign-vomiting-episodes-in-the-last-24-hours "Vomiting episodes in the last 24 hours" "A sign or symptom the sheet asks the examiner to look for and record as present or absent, or a count or duration recorded beside one. Recorded on the paediatric admission record."
* #sign-vomits-everything "Vomits everything" "A sign or symptom the sheet asks the examiner to look for and record as present or absent, or a count or duration recorded beside one. Recorded on the paediatric admission record."
* #sign-wheeze "Wheeze" "A sign or symptom the sheet asks the examiner to look for and record as present or absent, or a count or duration recorded beside one. Recorded on the paediatric admission record."
* #sign-wrist-or-rib-signs-of-rickets "Wrist or rib signs of rickets" "A sign or symptom the sheet asks the examiner to look for and record as present or absent, or a count or duration recorded beside one. Recorded on the paediatric admission record."

// ── Skin-to-skin observation ────────────────────────────────────────────
* #skin-to-skin-colour "Colour" "One reading from the timed observations taken while a newborn is in skin-to-skin contact during the first two hours. Recorded on the newborn observation chart."
* #skin-to-skin-observation "Skin-to-skin observation" "One of the timed observations taken while a newborn is in skin-to-skin contact in the first two hours, at fifteen and thirty minutes and at one and two hours."
* #skin-to-skin-position-sniffing "Position: sniffing" "One reading from the timed observations taken while a newborn is in skin-to-skin contact during the first two hours. Recorded on the newborn observation chart."

// ── Psychological review ────────────────────────────────────────────────
* #soap-counselling-session-number "Counselling session number" "One section of a SOAP note from a counselling session. Four codes rather than one narrative, because the point of SOAP is that a reader can find the assessment without reading the subjective account first. Recorded on the psychological review notes."

// ── Temperature control ─────────────────────────────────────────────────
* #temperature-control-action-taken-to-control-temperature "Action taken to control temperature" "What was actually done about a temperature — fanned, tepid sponged, warmed — recorded beside the reading on the paediatric vital sign chart. Recorded on the paediatric vital sign observation chart."

// ── Transfusion ─────────────────────────────────────────────────────────
* #transfusion-cross-match-result "Cross-match result" "Something the blood requisition form records, from the indication for transfusion through to the cross-match result and any reaction observed. Recorded on the blood requisition form."
* #transfusion-indication-for-transfusion "Indication for transfusion" "Something the blood requisition form records, from the indication for transfusion through to the cross-match result and any reaction observed. Recorded on the blood requisition form."

// ── Triage ──────────────────────────────────────────────────────────────
* #triage-avpu-conscious-level "AVPU conscious level" "A triage decision or the conscious-level screen behind it. Recorded on the paediatric admission record and the paediatric triage record."
* #triage-level "Triage level" "How urgently the child needs to be seen, from the four levels the paediatric triage sheet offers."

// ── Umbilical stump appearance ──────────────────────────────────────────
* #umbilicus-appearance "Umbilical stump appearance" "Whether a newborn's cord stump is clean, discharging pus, or has surrounding redness of the skin."

// ── Ventilator setting ──────────────────────────────────────────────────
* #ventilator-setting-assist-control-in-use "Assist control in use" "A ventilator setting from the ICU observation chart that LOINC does not name — an I:E ratio, a tube size, or one of the on/off states the chart prints beside them. Recorded on the ICU observation chart."
* #ventilator-setting-breathing-spontaneously "Breathing spontaneously" "A ventilator setting from the ICU observation chart that LOINC does not name — an I:E ratio, a tube size, or one of the on/off states the chart prints beside them. Recorded on the ICU observation chart."
* #ventilator-setting-cuff-deflated "Cuff deflated" "A ventilator setting from the ICU observation chart that LOINC does not name — an I:E ratio, a tube size, or one of the on/off states the chart prints beside them. Recorded on the ICU observation chart."
* #ventilator-setting-endotracheal-tube-size "Endotracheal tube size" "A ventilator setting from the ICU observation chart that LOINC does not name — an I:E ratio, a tube size, or one of the on/off states the chart prints beside them. Recorded on the ICU observation chart."
* #ventilator-setting-inspiratory-time "Inspiratory time" "A ventilator setting from the ICU observation chart that LOINC does not name — an I:E ratio, a tube size, or one of the on/off states the chart prints beside them. Recorded on the NICU monitoring chart."
* #ventilator-setting-inspiratory-to-expiratory-ratio "Inspiratory to expiratory ratio" "A ventilator setting from the ICU observation chart that LOINC does not name — an I:E ratio, a tube size, or one of the on/off states the chart prints beside them. Recorded on the ICU observation chart."
* #ventilator-setting-tidal-volume-actual "Tidal volume actual" "A ventilator setting from the ICU observation chart that LOINC does not name — an I:E ratio, a tube size, or one of the on/off states the chart prints beside them. Recorded on the ICU observation chart."
* #ventilator-setting-tracheostomy-tube-size "Tracheostomy tube size" "A ventilator setting from the ICU observation chart that LOINC does not name — an I:E ratio, a tube size, or one of the on/off states the chart prints beside them. Recorded on the ICU observation chart."
* #ventilator-setting-weaning-from-the-ventilator "Weaning from the ventilator" "A ventilator setting from the ICU observation chart that LOINC does not name — an I:E ratio, a tube size, or one of the on/off states the chart prints beside them. Recorded on the ICU observation chart."

// ── Surgical safety checklist ───────────────────────────────────────────
* #who-check-all-team-members-introduced-by-name-and-role "All team members introduced by name and role" "One confirmation on the surgical safety checklist. The answer says whether it was confirmed, was not applicable, or was not done — three distinct answers, because a correctly skipped item is not a missed one. Recorded on the surgical safety checklist."
* #who-check-anaesthesia-machine-and-medication-check-complete "Anaesthesia machine and medication check complete" "One confirmation on the surgical safety checklist. The answer says whether it was confirmed, was not applicable, or was not done — three distinct answers, because a correctly skipped item is not a missed one. Recorded on the surgical safety checklist."
* #who-check-anaesthetist-s-patient-specific-concerns-reviewed "Anaesthetist's patient-specific concerns reviewed" "One confirmation on the surgical safety checklist. The answer says whether it was confirmed, was not applicable, or was not done — three distinct answers, because a correctly skipped item is not a missed one. Recorded on the surgical safety checklist."
* #who-check-antibiotic-prophylaxis-given-within-the-last-60 "Antibiotic prophylaxis given within the last 60 minutes" "One confirmation on the surgical safety checklist. The answer says whether it was confirmed, was not applicable, or was not done — three distinct answers, because a correctly skipped item is not a missed one. Recorded on the surgical safety checklist."
* #who-check-anticipated-blood-loss-reviewed "Anticipated blood loss reviewed" "One confirmation on the surgical safety checklist. The answer says whether it was confirmed, was not applicable, or was not done — three distinct answers, because a correctly skipped item is not a missed one. Recorded on the surgical safety checklist."
* #who-check-case-duration-reviewed "Case duration reviewed" "One confirmation on the surgical safety checklist. The answer says whether it was confirmed, was not applicable, or was not done — three distinct answers, because a correctly skipped item is not a missed one. Recorded on the surgical safety checklist."
* #who-check-critical-or-non-routine-steps-reviewed "Critical or non-routine steps reviewed" "One confirmation on the surgical safety checklist. The answer says whether it was confirmed, was not applicable, or was not done — three distinct answers, because a correctly skipped item is not a missed one. Recorded on the surgical safety checklist."
* #who-check-difficult-airway-or-aspiration-risk-assessed "Difficult airway or aspiration risk assessed" "One confirmation on the surgical safety checklist. The answer says whether it was confirmed, was not applicable, or was not done — three distinct answers, because a correctly skipped item is not a missed one. Recorded on the surgical safety checklist."
* #who-check-equipment-issues-or-concerns-reviewed "Equipment issues or concerns reviewed" "One confirmation on the surgical safety checklist. The answer says whether it was confirmed, was not applicable, or was not done — three distinct answers, because a correctly skipped item is not a missed one. Recorded on the surgical safety checklist."
* #who-check-equipment-problems-to-be-addressed-identified "Equipment problems to be addressed identified" "One confirmation on the surgical safety checklist. The answer says whether it was confirmed, was not applicable, or was not done — three distinct answers, because a correctly skipped item is not a missed one. Recorded on the surgical safety checklist."
* #who-check-essential-imaging-displayed "Essential imaging displayed" "One confirmation on the surgical safety checklist. The answer says whether it was confirmed, was not applicable, or was not done — three distinct answers, because a correctly skipped item is not a missed one. Recorded on the surgical safety checklist."
* #who-check-instrument-sponge-and-needle-counts-complete "Instrument, sponge and needle counts complete" "One confirmation on the surgical safety checklist. The answer says whether it was confirmed, was not applicable, or was not done — three distinct answers, because a correctly skipped item is not a missed one. Recorded on the surgical safety checklist."
* #who-check-key-concerns-for-recovery-and-management-reviewed "Key concerns for recovery and management reviewed" "One confirmation on the surgical safety checklist. The answer says whether it was confirmed, was not applicable, or was not done — three distinct answers, because a correctly skipped item is not a missed one. Recorded on the surgical safety checklist."
* #who-check-known-allergy-reviewed "Known allergy reviewed" "One confirmation on the surgical safety checklist. The answer says whether it was confirmed, was not applicable, or was not done — three distinct answers, because a correctly skipped item is not a missed one. Recorded on the surgical safety checklist."
* #who-check-name-of-the-procedure-verbally-confirmed "Name of the procedure verbally confirmed" "One confirmation on the surgical safety checklist. The answer says whether it was confirmed, was not applicable, or was not done — three distinct answers, because a correctly skipped item is not a missed one. Recorded on the surgical safety checklist."
* #who-check-no-known-allergies "No known allergies" "One confirmation on the surgical safety checklist. The answer says whether it was confirmed, was not applicable, or was not done — three distinct answers, because a correctly skipped item is not a missed one. Recorded on the surgical safety checklist."
* #who-check-patient-confirmed-identity-site-procedure-and "Patient confirmed identity, site, procedure and consent" "One confirmation on the surgical safety checklist. The answer says whether it was confirmed, was not applicable, or was not done — three distinct answers, because a correctly skipped item is not a missed one. Recorded on the surgical safety checklist."
* #who-check-patient-procedure-and-incision-site-confirmed "Patient, procedure and incision site confirmed" "One confirmation on the surgical safety checklist. The answer says whether it was confirmed, was not applicable, or was not done — three distinct answers, because a correctly skipped item is not a missed one. Recorded on the surgical safety checklist."
* #who-check-pulse-oximeter-on-the-patient-and-functioning "Pulse oximeter on the patient and functioning" "One confirmation on the surgical safety checklist. The answer says whether it was confirmed, was not applicable, or was not done — three distinct answers, because a correctly skipped item is not a missed one. Recorded on the surgical safety checklist."
* #who-check-risk-of-over-500-ml-blood-loss-assessed-access-and "Risk of over 500 ml blood loss assessed, access and fluids planned" "One confirmation on the surgical safety checklist. The answer says whether it was confirmed, was not applicable, or was not done — three distinct answers, because a correctly skipped item is not a missed one. Recorded on the surgical safety checklist."
* #who-check-site-marked "Site marked" "One confirmation on the surgical safety checklist. The answer says whether it was confirmed, was not applicable, or was not done — three distinct answers, because a correctly skipped item is not a missed one. Recorded on the surgical safety checklist."
* #who-check-specimen-labelling-read-aloud-including-the-patient "Specimen labelling read aloud, including the patient name" "One confirmation on the surgical safety checklist. The answer says whether it was confirmed, was not applicable, or was not done — three distinct answers, because a correctly skipped item is not a missed one. Recorded on the surgical safety checklist."
* #who-check-sterility-including-indicator-results-confirmed "Sterility, including indicator results, confirmed" "One confirmation on the surgical safety checklist. The answer says whether it was confirmed, was not applicable, or was not done — three distinct answers, because a correctly skipped item is not a missed one. Recorded on the surgical safety checklist."

// ── Wound care ──────────────────────────────────────────────────────────
* #wound-care-surgical-dressing-grade "Surgical dressing grade" "The grading a nurse ticked on the surgical dressing sheet. The sheet prints three bare letters and never expands them, so the answer records the letter rather than an invented meaning. Recorded on the surgical dressing chart."


CodeSystem: SGHIAnswerCodeSystem
Id: answer-codesystem
Title: "SGHI Answer Code System"
Description: "The answers the pick lists offer, where the list is local to these forms and carries no ordinal weight. Displays are the wording printed on the paper form and should not be reworded without reprinting the form, because the form is the contract with the ward. Answers that belong to a scored instrument live in SGHIScoreCodeSystem instead, since those also carry a weight."
* ^status = #active
* ^experimental = false
* ^content = #complete
* ^caseSensitive = true

// Paediatric triage level. The four levels printed on the sheet, in the order
// they are printed. They map onto no published triage scale exactly — this is
// the Kenyan ETAT+ shorthand, not the five-level ESI — so they are local.
* #triage-emergency "Emergency" "Needs a clinician immediately. An emergency sign is present."
* #triage-priority "Priority" "Needs a clinician within fifteen minutes. A priority sign is present."
* #triage-less-urgent "Less urgent" "Can safely wait in the queue."
* #triage-well-baby "Well baby" "Attending for a routine check, not for illness."

// Graded findings the paediatric and newborn sheets print as 0 / + / +++.
// Three points, not a continuum, and the sheet gives no wording for a middle
// grade, so the codes carry the sheet's own symbols as displays.
* #grade-absent "0 — absent" "The finding is not present."
* #grade-mild "+ — mild" "The finding is present and mild."
* #grade-severe "+++ — severe" "The finding is present and severe."

// AVPU. Kept local rather than coded to the Glasgow Coma Scale: AVPU is a
// four-point screen, GCS is a fifteen-point score, and mapping one onto the
// other would assert a conscious level nobody assessed.
* #avpu-alert "A — alert" "Awake and alert."
* #avpu-verbal "V — responds to voice" "Responds to voice but is not fully alert."
* #avpu-pain "P — responds to pain" "Responds only to a painful stimulus."
* #avpu-unresponsive "U — unresponsive" "Does not respond to a painful stimulus."

// Oedema distribution, which is what grades it in a malnourished child.
* #oedema-none "None" "No oedema."
* #oedema-feet "Feet" "Oedema of the feet only."
* #oedema-knee "To the knee" "Oedema extending to the knees."
* #oedema-face "Face" "Oedema involving the face, which is the most severe grade."

* #umbilicus-normal "Normal" "The cord stump is clean and dry."
* #umbilicus-pus "Pus" "The cord stump is discharging pus."
* #umbilicus-pus-and-redness "Pus and red skin" "The cord stump is discharging pus and the surrounding skin is red, which is periumbilical cellulitis."

* #cord-fresh "Fresh" "The cord is still fresh."
* #cord-dry "Dry" "The cord has dried."
* #cord-infected "Infected" "The cord is infected."

* #pmtct-positive "Positive" "The mother is known to be HIV positive and in the PMTCT programme."
* #pmtct-negative "Negative" "The mother tested HIV negative."
* #pmtct-unknown "Unknown" "The mother's status could not be established."

// Mode of delivery, as the maternity and newborn sheets print it.
* #delivery-svd "SVD" "Spontaneous vaginal delivery."
* #delivery-breech "Breech" "Breech vaginal delivery."
* #delivery-caesarean "C/S" "Caesarean section."
* #delivery-assisted-vacuum "Vacuum" "Assisted vaginal delivery by vacuum extraction."
* #delivery-assisted-forceps "Forceps" "Assisted vaginal delivery by forceps."

* #place-of-birth-home "Home" "Born at home."
* #place-of-birth-hospital "Hospital" "Born in a health facility."
* #place-of-birth-other "Other" "Born somewhere other than home or a facility, such as in transit."

// Fetal lie and membrane status, from the maternity examination.
* #lie-longitudinal "Longitudinal" "The fetus lies along the axis of the uterus."
* #lie-transverse "Transverse" "The fetus lies across the uterus."
* #lie-oblique "Oblique" "The fetus lies obliquely."
* #membranes-intact "Intact" "The membranes are intact."
* #membranes-ruptured "Ruptured" "The membranes have ruptured."

// Third-stage findings from the labour report.
* #placenta-complete "Complete" "Placenta and membranes delivered complete."
* #placenta-incomplete "Incomplete" "Placenta or membranes incomplete, so the uterus must be explored."
* #perineum-intact "Intact" "The perineum is intact."
* #perineum-tear "Tear" "The perineum tore."
* #perineum-episiotomy "Episiotomy repaired" "An episiotomy was performed and repaired."

// Anaesthesia technique.
* #anaesthesia-general "General" "General anaesthesia."
* #anaesthesia-spinal "Spinal" "Spinal anaesthesia."
* #anaesthesia-regional-block "Regional block" "A peripheral or plexus block."
* #anaesthesia-sedation "Sedation" "Conscious sedation."
* #anaesthesia-local "Local infiltration" "Local infiltration by the operator."

// The three answers every WHO checklist item can take. "Not applicable" is a
// distinct answer and not a synonym for "not done": the checklist prints it for
// items such as site marking, where not applicable is the correct completion.
* #check-confirmed "Confirmed" "The item was checked and confirmed."
* #check-not-applicable "Not applicable" "The item does not apply to this case."
* #check-not-done "Not done" "The item was not checked."

// WHO checklist phases.
* #phase-sign-in "Sign in — before induction of anaesthesia" "The first phase, with at least the nurse and the anaesthetist present."
* #phase-time-out "Time out — before skin incision" "The second phase, with the nurse, the anaesthetist and the surgeon present."
* #phase-sign-out "Sign out — before the patient leaves the operating room" "The third phase, with the nurse, the anaesthetist and the surgeon present."

// Dialysis access.
* #access-av-fistula "Arteriovenous fistula" "A surgically created arteriovenous fistula."
* #access-av-graft "Arteriovenous graft" "A prosthetic arteriovenous graft."
* #access-tunnelled-catheter "Tunnelled catheter" "A cuffed, tunnelled central venous catheter."
* #access-temporary-catheter "Temporary catheter" "A non-tunnelled temporary central venous catheter."

// Blood donation.
* #donor-replacement "Replacement" "Donating to replace blood used for a named patient."
* #donor-voluntary "Voluntary" "Donating voluntarily, for no named recipient."
* #donor-autologous "Autologous" "Donating for their own later use."
* #donation-normal "Normal" "A whole-blood collection."
* #donation-apheresis "Apheresis" "A component collection by apheresis."

// Line of systemic anti-cancer therapy.
* #line-first "First line" "First-line therapy."
* #line-second "Second line" "Second-line therapy, after progression or intolerance on first line."
* #line-third "Third line" "Third-line therapy."
* #line-subsequent "Fourth line or later" "Fourth-line therapy or beyond."

// Yes / no / not known. Written once here and shared by every yes/no question
// on all fifteen forms rather than repeated per form: the paper forms print a
// bare Y and N box, and "not known" is what a clinician writes in the margin
// when the carer cannot say, which happens often enough on the paediatric
// sheet to be worth a code.
* #yes "Yes" "Yes."
* #no "No" "No."
* #not-known "Not known" "The answer could not be established."

// ── Answers added for the imaging request and the endoscopy consent ─────────
// These are answers, not concepts, which is why they live here and not in
// SGHIConceptCodeSystem: the *question* "which scan" is
// #scan-type-requested over there, and each of these is one reply to it. The
// ultrasound form prints its own twenty-item list and the endoscopy consent its
// own four, and neither maps onto a published order catalogue we hold.
* #abdominal-ultrasound "Abdominal ultrasound" "Ultrasound of the abdomen."
* #pelvic-ultrasound "Pelvic ultrasound" "Ultrasound of the pelvis."
* #kub-ultrasound "KUB ultrasound" "Ultrasound of the kidneys, ureters and bladder."
* #early-obstetric-ultrasound "Early obstetric ultrasound" "First-trimester dating and viability scan."
* #routine-obstetric-ultrasound "Routine obstetric ultrasound" "Routine growth and anatomy scan."
* #obstetric-ultrasound-biophysical-profile "Obstetric ultrasound with biophysical profile" "Obstetric scan including the biophysical profile."
* #thyroid-ultrasound "Thyroid ultrasound" "Ultrasound of the thyroid."
* #scrotal-ultrasound "Scrotal ultrasound" "Ultrasound of the scrotum."
* #breast-ultrasound "Breast ultrasound" "Ultrasound of the breast."
* #musculoskeletal-ultrasound "Musculoskeletal or regional ultrasound" "Ultrasound of a joint, muscle or soft-tissue region."
* #cranial-ultrasound "Cranial ultrasound" "Ultrasound of the head, through the fontanelle in an infant."
* #renal-doppler "Renal Doppler ultrasound" "Doppler study of the renal vessels."
* #carotid-doppler "Carotid Doppler ultrasound" "Doppler study of the carotid arteries."
* #upper-limb-venous-doppler "Upper limb venous Doppler ultrasound" "Doppler study of the upper limb veins."
* #upper-limb-arterial-doppler "Upper limb arterial Doppler ultrasound" "Doppler study of the upper limb arteries."
* #lower-limb-venous-doppler "Lower limb venous Doppler ultrasound" "Doppler study of the lower limb veins, usually for deep vein thrombosis."
* #lower-limb-arterial-doppler "Lower limb arterial Doppler ultrasound" "Doppler study of the lower limb arteries."
* #upper-gi-endoscopy "Upper gastrointestinal endoscopy" "Endoscopy of the oesophagus, stomach and duodenum."
* #colonoscopy "Colonoscopy" "Endoscopy of the whole colon."
* #flexible-sigmoidoscopy "Flexible sigmoidoscopy" "Endoscopy of the rectum and sigmoid colon."
* #ercp "Endoscopic retrograde cholangiopancreatography" "Endoscopic cannulation of the biliary and pancreatic ducts, with contrast."


// ── Small local pick lists that are not yes/no ──────────────────────────────
// Every one of these was briefly modelled by reusing #yes and #no as bare first
// and second options, which validates but lies: an extracted Observation would
// then say a patient's modality was "Yes". Two or three answers is still a list,
// and a list needs its own codes.
* #pulse-normal "Normal" "Peripheral pulse of normal volume."
* #pulse-weak "Weak" "Peripheral pulse weak or thready."
* #warm-to-hand "Hand" "Skin warm as far as the hand — normal peripheral perfusion."
* #warm-to-elbow "Elbow" "Skin warm only as far as the elbow — the extremities are cold."
* #warm-to-shoulder "Shoulder" "Skin warm only as far as the shoulder — the worst grade the sheet records."
* #malaria-blood-slide "Blood slide" "Malaria microscopy on a blood slide."
* #malaria-rapid-test "Rapid test" "Malaria rapid diagnostic test."
* #review-medical-6-hours "Medical review within 6 hours" "The child is to be seen by a clinician within six hours."
* #review-priority-nursing "Priority nursing observations" "The child is to be kept on priority nursing observations."
* #capillary-refill-under-2s "Under 2 seconds" "Capillary refill returns in under two seconds."
* #capillary-refill-2-to-3s "2 to 3 seconds" "Capillary refill takes two to three seconds."
* #capillary-refill-over-3s "Over 3 seconds" "Capillary refill takes more than three seconds, which is shock."
* #colour-pink "Pink" "The baby is pink."
* #colour-blue "Blue" "The baby is blue."
* #round-morning "Morning" "The morning round — the chart's M column."
* #round-evening "Evening" "The evening round — the chart's E column."
* #round-night "Night" "The night round — the chart's N column."
* #pain-mild "Mild" "Mild pain, as the triage sheet bands it."
* #pain-moderate "Moderate" "Moderate pain."
* #pain-severe "Severe" "Severe pain. A priority sign by ETAT+."
* #referral-clinic "Clinic" "Referred from a clinic."
* #referral-ward "Ward" "Referred from a ward."
* #referral-self-or-private "Private, staff or self" "Came without an internal referral — privately, as a member of staff, or self-referred. The three the palliative care sheet prints separately, which all mean the same thing for the service's own workflow."
* #consciousness-alert "Alert" "Awake and alert."
* #consciousness-sedated "Sedated" "Sedated."
* #consciousness-agitated "Agitated" "Agitated."
* #modality-x-ray "X-ray" "A plain radiograph."
* #modality-ultrasound "Ultrasound" "An ultrasound study."
* #consent-general-operation "General operation or treatment" "The hospital's general consent form for an operation or treatment."
* #consent-endoscopy "Endoscopy" "The endoscopy-specific consent form."
* #consent-anti-cancer-therapy "Systemic anti-cancer therapy" "The cancer centre's consent form for chemotherapy, hormonal or targeted therapy."
* #consenter-patient "The patient themselves" "The patient is giving their own consent."
* #consenter-next-of-kin "Next of kin or guardian" "Consent is being given by the next of kin or a guardian, because the patient cannot."


// ── Answers added for the eight further forms from the 54-page scan ─────────

// Limb power, from the ICU neurological observation chart. Arms run 5 to 0 and
// legs 4 to 0 — the chart really does use two different scales, because a leg
// has no "spastic flexion" grade — so they are separate lists with the weight
// in the code, the same convention SGHIScoreCodeSystem uses.
* #arm-power-5 "Normal power" "Arm power: normal."
* #arm-power-4 "Mild weakness" "Arm power: mild weakness."
* #arm-power-3 "Severe weakness" "Arm power: severe weakness."
* #arm-power-2 "Spastic flexion" "Arm power: spastic flexion."
* #arm-power-1 "Extension" "Arm power: extension only."
* #arm-power-0 "No response" "Arm power: no response."
* #leg-power-4 "Normal power" "Leg power: normal."
* #leg-power-3 "Mild weakness" "Leg power: mild weakness."
* #leg-power-2 "Severe weakness" "Leg power: severe weakness."
* #leg-power-1 "Extension" "Leg power: extension only."
* #leg-power-0 "No response" "Leg power: no response."

// Pupil reaction. The chart prints a size scale of 1 to 8 mm as filled circles
// beside the reaction column, so size is a quantity and only the reaction is a
// pick list.
* #pupil-brisk "Brisk" "Pupil reacts briskly to light."
* #pupil-sluggish "Sluggish" "Pupil reacts sluggishly to light."
* #pupil-fixed "Fixed" "Pupil does not react to light."
* #pupil-closed "Closed" "Eye closed — the pupil could not be assessed. Distinct from fixed, which is a finding."

// The five studies the endoscopy investigation form lists. Kept apart from the
// four on the endoscopy *consent* form: the consent authorises a procedure and
// this records which one was actually done, and the two lists differ — the
// investigation form has oesophagogastroscopy and rectosigmoidoscopy, the
// consent form has ERCP and flexible sigmoidoscopy.
* #oesophagogastroduodenoscopy "Oesophagogastroduodenoscopy" "Endoscopy of the oesophagus, stomach and duodenum. The form spells it OESOPHAGAGASTRODUODENOSCOPY."
* #oesophagogastroscopy "Oesophagogastroscopy" "Endoscopy of the oesophagus and stomach."
* #oesophagoscopy "Oesophagoscopy" "Endoscopy of the oesophagus alone."
* #rectosigmoidoscopy "Rectosigmoidoscopy" "Endoscopy of the rectum and sigmoid colon."
* #colonoscopy-investigation "Colonoscopy" "Endoscopy of the whole colon, as recorded on the investigation form."

// Blood products, from the requisition form.
* #packed-red-blood-cells "Packed red blood cells" "Red cells with most of the plasma removed."
* #fresh-frozen-plasma "Fresh frozen plasma" "Plasma frozen within hours of collection."
* #platelet-concentrate "Platelet concentrate" "Platelets concentrated from whole blood or collected by apheresis."
* #whole-blood "Whole blood" "Unseparated blood as collected."

// Degree of urgency, as the blood and laboratory requisitions print it. Three
// points, and the first is the hospital's own word: "desperate" sits above
// urgent and means the patient is exsanguinating.
* #urgency-desperate "Desperate" "Needed immediately — the patient is bleeding now."
* #urgency-urgent "Urgent" "Needed within hours."
* #urgency-elective "Elective" "Planned, for a scheduled procedure."

// ABO group and rhesus factor.
* #abo-a "A" "Blood group A."
* #abo-b "B" "Blood group B."
* #abo-ab "AB" "Blood group AB."
* #abo-o "O" "Blood group O."
* #rh-positive "Positive" "Rhesus D positive."
* #rh-negative "Negative" "Rhesus D negative."

// Cross-match outcome.
* #xmatch-compatible "Compatible" "Cross-match compatible — the unit may be issued."
* #xmatch-incompatible "Incompatible" "Cross-match incompatible — the unit must not be issued."

// What the decline form is refusing. The sheet prints "care/procedure/assessment"
// as one slashed phrase, which in practice means the patient is refusing one of
// the three or all of them, so each is its own code and the item repeats.
* #decline-care "Care in the ward" "Refusing ward care — the patient is leaving."
* #decline-procedure "A procedure" "Refusing a specific procedure."
* #decline-assessment "An assessment or investigation" "Refusing an assessment or investigation."

// Where the patient is going, on the decline form.
* #decline-destination-home "Home" "Going home."
* #decline-destination-other-hospital "Hospital of choice" "Transferring to a hospital of their own choosing."
* #vent-mode-cmv "CMV" "Controlled mandatory ventilation, as printed on the ICU observation chart."
* #vent-mode-simv "SIMV" "Synchronised intermittent mandatory ventilation."
* #vent-mode-cpap "CPAP" "Continuous positive airway pressure."
* #vent-mode-psv "PSV" "Pressure support ventilation."
* #vent-mode-spontaneous "Spontaneous" "Breathing spontaneously, off mandatory ventilation."
* #position-supine "Supine" "Patient positioned on the back."
* #position-left-lateral "Left lateral" "Patient turned onto the left side."
* #position-right-lateral "Right lateral" "Patient turned onto the right side."
* #position-prone "Prone" "Patient positioned face down."
* #position-semi-fowler "Semi-Fowler" "Head of bed raised between 30 and 45 degrees."
* #conscious-fully "Fully conscious" "Answers questions intelligently, as the head injury chart words it."
* #conscious-confused "Conscious but confused" "Answers simple questions only."
* #conscious-semi "Semi conscious" "Responds to pain only."
* #conscious-coma "Coma" "No response to pain."
* #finding-present "Present" "The finding was observed."
* #finding-absent "Absent" "The finding was looked for and not observed."
* #injury-chest "Chest" "Chest injury, from the other-injuries tick list on the head injury chart."
* #injury-abdomen "Abdomen" "Abdominal injury."
* #injury-arm "Arm" "Arm injury."
* #injury-leg "Leg" "Leg injury."
* #injury-neck "Neck" "Neck injury."
* #injury-spine "Spine" "Spinal injury."
* #feed-breast "Breast feeding" "Fed at the breast."
* #feed-ebm "Expressed breast milk" "Fed the mother’s own expressed milk."
* #feed-term-formula "Term formula" "Fed a term infant formula."
* #feed-preterm-formula "Pre-term formula" "Fed a preterm infant formula."
* #route-cup "Cup" "Fed by cup."
* #route-ngt "Nasogastric tube" "Fed through a nasogastric tube."
* #route-ogt "Orogastric tube" "Fed through an orogastric tube."
* #newborn-category-a "Category A" "Acutely ill on ventilator, CPAP or oxygen, as graded at the foot of the newborn comprehensive chart."
* #newborn-category-b "Category B" "Stabilising on intensive phototherapy, IV fluids and assisted feeds."
* #newborn-category-c "Category C" "A stable baby."
* #oxygen-prongs "Nasal prongs" "Oxygen given through nasal prongs."
* #oxygen-non-rebreather "Non-rebreather mask" "Oxygen given through a non-rebreather mask."
* #oxygen-bub "Bubble CPAP" "Oxygen given through bubble CPAP."
* #art-azt "AZT" "Zidovudine prophylaxis, as printed on the newborn handover form."
* #art-nvp "NVP" "Nevirapine prophylaxis."
* #lab-urgency-desperate "Desperate" "The most urgent of the three degrees the lab requisition prints."
* #lab-urgency-urgent "Urgent" "The middle degree of urgency."
* #lab-urgency-routine "Routine" "The routine degree of urgency, as the lab forms word it — the blood requisition says \"elective\" instead."
* #rating-poor "Poor" "The lowest of the four ratings on the satisfaction questionnaire."
* #rating-fair "Fair" "The second of four."
* #rating-good "Good" "The third of four."
* #rating-excellent "Excellent" "The highest of the four."
* #resus-dnr "Do not resuscitate" "A recorded decision not to attempt resuscitation."
* #resus-full "Full resuscitation" "A recorded decision that resuscitation is to be attempted."
* #body-part-home "Taken home" "The removed body part is released to the family."
* #body-part-hospital "Disposed by the hospital" "The removed body part is disposed of by the hospital."
* #mortuary-from-ward "From a ward of this hospital" "The body came from a ward here, so the deceased was a patient."
* #mortuary-from-casualty "From casualty" "The body came from casualty."
* #mortuary-from-home "From home" "The body was brought from home; the deceased may never have been a patient here."
* #mortuary-from-other-facility "From another facility" "The body was transferred from another facility, with a permit."
* #mortuary-police-case "Police case" "The body was brought by the police, under an OB number."
* #dressing-grade-b "B" "The first of the three grading letters printed on the surgical dressing sheet. The sheet does not expand the letters anywhere on it."
* #dressing-grade-m "M" "The second of the three grading letters printed on the surgical dressing sheet."
* #dressing-grade-s "S" "The third of the three grading letters printed on the surgical dressing sheet."
* #admitted-from-opd "Out-patient department" "Admitted from the out-patient department."
* #admitted-from-casualty "Casualty" "Admitted from casualty."
* #arrival-walked "Walked" "Arrived on foot."
* #arrival-ambulance "Ambulance" "Arrived by ambulance."
* #arrival-wheelchair "Wheelchair" "Arrived by wheelchair."
* #arrival-cart "Cart" "Arrived on a cart or trolley, as the admission form words it."
* #chronic-tb "Tuberculosis" "From the chronic illness tick list on the admission form."
* #chronic-hiv "HIV" "The admission form prints this column as CD4."
* #chronic-arthritis "Arthritis" "From the chronic illness tick list."
* #chronic-hypertension "Hypertension" "The admission form prints this as HPN."
* #chronic-pneumonia "Pneumonia" "From the chronic illness tick list."
* #chronic-malaria "Malaria" "From the chronic illness tick list."
* #chronic-diabetes "Diabetes" "From the chronic illness tick list."
* #chronic-skin "Skin disease" "From the chronic illness tick list."
* #chronic-cardiac "Cardiac disease" "From the chronic illness tick list."
* #chronic-renal "Renal disease" "From the chronic illness tick list."
* #chronic-psychiatric "Psychiatric illness" "The admission form prints this as Psych."
* #chronic-carcinoma "Carcinoma" "From the chronic illness tick list."
* #presentation-cephalic "Cephalic" "Head presenting."
* #presentation-breech "Breech" "Buttocks or feet presenting."
* #presentation-shoulder "Shoulder" "Shoulder presenting, with the fetus lying transversely."
* #presentation-face "Face" "Face presenting."
* #presentation-brow "Brow" "Brow presenting."
* #bowels-opened "Opened" "Bowels opened."
* #bowels-not-opened "Not opened" "Bowels not opened."
* #milk-breast "Breast milk" "Expressed or direct breast milk, as the milk feeding chart prints it."
* #milk-nan "NAN formula" "The formula the milk feeding chart names by its brand column."
* #urine-clear "Clear" "Clear irrigation return."
* #urine-straw "Straw" "Straw-coloured return."
* #urine-rose "Rose" "Rose or lightly blood-tinged return."
* #urine-blood-stained "Blood stained" "Frankly blood-stained return."
* #urine-clots "With clots" "Return carrying clots -- the finding that stops an irrigation and calls a surgeon."


CodeSystem: SGHIScoreCodeSystem
Id: score-codesystem
Title: "SGHI Score Code System"
Description: "The answers to the scored instruments on the forms: the Bishop score for cervical ripeness and the five Apgar components. Codes are namespaced instrument-item-weight, the same convention SGHIClinicalScoreCodeSystem uses and for the same reason — within an item the weight is what tells one answer from another, two items in an instrument can share a label, and the extraction maps read the weight off the tail of the code when a client submits no calculated total. LOINC publishes answer lists for the Apgar components (LL384-9 through LL388-0) but not their member LA codes as a usable set, so the Apgar answers are local while the Apgar *questions* stay on LOINC."
* ^status = #active
* ^experimental = false
* ^content = #complete
* ^caseSensitive = true

// ── Bishop score (Bishop 1964). Higher total is a more favourable cervix. ────
// The bands are exactly those printed on the sheet. Dilation and
// effacement run 0 to 3, consistency and position 0 to 2, station 0 to 3, so the
// maximum is 13 and six or more is favourable — which is the "Favourable 6 - 13"
// line at the foot of the paper table.
* #bishop-dilation-0 "Closed" "Bishop dilation: the cervix is closed."
* #bishop-dilation-1 "1 to 2 cm" "Bishop dilation: 1 to 2 cm."
* #bishop-dilation-2 "3 to 4 cm" "Bishop dilation: 3 to 4 cm."
* #bishop-dilation-3 "5 cm or more" "Bishop dilation: 5 cm or more."
* #bishop-effacement-0 "0 to 25%, or cervix over 4 cm" "Bishop effacement: 0 to 25% effaced, or a cervical length greater than 4 cm."
* #bishop-effacement-1 "25 to 50%, or 2 to 4 cm" "Bishop effacement: 25 to 50% effaced, or a cervical length of 2 to 4 cm."
* #bishop-effacement-2 "50 to 75%, or 1 to 2 cm" "Bishop effacement: 50 to 75% effaced, or a cervical length of 1 to 2 cm."
* #bishop-effacement-3 "85% or more" "Bishop effacement: 85% or more effaced."
* #bishop-consistency-0 "Firm" "Bishop consistency: firm."
* #bishop-consistency-1 "Medium" "Bishop consistency: medium."
* #bishop-consistency-2 "Soft" "Bishop consistency: soft."
* #bishop-position-0 "Posterior" "Bishop cervical position: posterior."
* #bishop-position-1 "Midline" "Bishop cervical position: midline."
* #bishop-position-2 "Anterior" "Bishop cervical position: anterior."
* #bishop-station-0 "-3" "Bishop head station: 3 cm above the ischial spines."
* #bishop-station-1 "-2" "Bishop head station: 2 cm above the ischial spines."
* #bishop-station-2 "-1 or 0" "Bishop head station: 1 cm above the spines, or at them."
* #bishop-station-3 "+1 or +2" "Bishop head station: 1 to 2 cm below the ischial spines."

// ── Apgar. Five components, each 0 to 2, total 0 to 10. ─────────────────────
// One set of answers, reused at one, five and ten minutes: the sign being looked
// for is the same at each time and only the LOINC question code changes, so
// duplicating the answers per time point would triple the list to say nothing
// new. The wording is the chart's own, which differs slightly from the
// classic table ("Blue extremities but torso pink" rather than "acrocyanosis").
* #apgar-colour-0 "Pale or blue" "Apgar appearance: pale, or blue all over."
* #apgar-colour-1 "Blue extremities, torso pink" "Apgar appearance: body pink with blue extremities."
* #apgar-colour-2 "Pink all over" "Apgar appearance: completely pink."
* #apgar-pulse-0 "Absent" "Apgar pulse: no heart rate."
* #apgar-pulse-1 "Under 100" "Apgar pulse: below 100 beats per minute."
* #apgar-pulse-2 "100 or over" "Apgar pulse: 100 beats per minute or above."
* #apgar-grimace-0 "No response" "Apgar reflex irritability: no response to stimulation."
* #apgar-grimace-1 "Grimace" "Apgar reflex irritability: a grimace or weak cry when stimulated."
* #apgar-grimace-2 "Cries or pulls away" "Apgar reflex irritability: cries, coughs, sneezes or pulls away when stimulated."
* #apgar-activity-0 "Floppy" "Apgar muscle tone: floppy and limp."
* #apgar-activity-1 "Some flexion" "Apgar muscle tone: some flexion of the extremities."
* #apgar-activity-2 "Active motion" "Apgar muscle tone: arms flexed and legs resisting extension."
* #apgar-respiration-0 "Absent" "Apgar respiratory effort: not breathing."
* #apgar-respiration-1 "Weak, irregular or gasping" "Apgar respiratory effort: slow, weak, irregular or gasping."
* #apgar-respiration-2 "Strong cry" "Apgar respiratory effort: a good, strong cry."
