// ─────────────────────────────────────────────────────────────────────────────
// What kind of clinical form a Questionnaire is.
//
// Deliberately not namespaced to any one hospital. These are the shapes a
// paper chart takes in a district hospital anywhere -- an admission record, an
// observation chart, a theatre record, a consent -- and the same twenty-four
// codes classify the Kinangop set, the inpatient clinical notes and whatever
// facility is onboarded next. A per-hospital list would have to be invented
// again for each one and would make "show me every observation chart" a
// question you can only ask one hospital at a time.
//
// The codes answer "what kind of sheet is this", not "which service uses it"
// and not "what does it record". The service is already carried by the `focus`
// useContext against practitioner-specialty-codesystem, and what a form records
// is carried by its own `code`. Keeping the three apart is what stops this list
// growing a code per form, which is the failure mode a category list has.
//
// Bound at Questionnaire.useContext where the context type is `workflow`
// ("Workflow Setting" in http://terminology.hl7.org/CodeSystem/usage-context-type).
// A questionnaire carries exactly one of these, alongside a second `workflow`
// context naming the encounter class it belongs to.
// ─────────────────────────────────────────────────────────────────────────────

CodeSystem: SGHIClinicalFormCategoryCodeSystem
Id: clinical-form-category-codesystem
Title: "SGHI Clinical Form Category Code System"
Description: "The kind of clinical form a Questionnaire represents, at the granularity a clinician would use to find one: an admission record, an observation chart, a theatre record, a consent. Facility-independent by design, so the same code means the same thing across every hospital in the deployment and a form can be found by shape rather than by the name one hospital happens to print on it."
* ^status = #active
* ^experimental = false
* ^content = #complete
* ^caseSensitive = true

// ── Arriving and being taken on ──────────────────────────────────────────────
* #admission-record "Admission record" "The structured record made when a patient is taken onto a ward: presenting illness, the examination on admission, and the plan the admission starts from."
* #triage-record "Triage record" "The sheet a patient is sorted on at the front door — how urgently they need to be seen, and the signs that decided it."
* #clinical-assessment "Clinical assessment" "A structured assessment by one service, completed once per episode: palliative, nutrition, psychological, rehabilitation intake and the like."
* #scored-instrument "Scored instrument" "A form whose output is a score rather than a set of findings — Bishop, Apgar, Glasgow, MUAC-based screens. Scored instruments are kept apart from assessments because the score is comparable over time and a free assessment is not."

// ── Charts filled repeatedly through a stay ──────────────────────────────────
* #observation-chart "Observation chart" "Vital signs and physiological observations charted round by round through an admission."
* #monitoring-chart "Monitoring chart" "A chart tracking one device or one therapy over time — ventilator, CPAP, dialysis, neurological observations, a chemotherapy cycle. Distinct from an observation chart because the columns are settings and responses to a treatment rather than the patient's own vitals."
* #fluid-balance-chart "Fluid balance chart" "Intake and output charted over a shift or a day, with the totals that decide the next fluid order."
* #feeding-chart "Feeding chart" "What a patient — usually a baby — was fed, when, how much and by what route."
* #nursing-care-plan "Nursing care plan" "The nursing problem list with the care planned against each problem and the evaluation of it."
* #medication-chart "Medication chart" "A prescription or an administration record: what was ordered or given, at what dose, by what route."
* #wound-care-record "Wound care record" "Dressing changes, irrigation and the state of a wound or a surgical site over time."
* #rehabilitation-record "Rehabilitation record" "Therapy given and progress against it, session by session — physiotherapy, occupational therapy, speech therapy."
* #progress-note "Progress note" "A dated clinical entry continuing the record of a stay: doctors' notes, ward round entries, review notes."

// ── Around a procedure ───────────────────────────────────────────────────────
* #procedure-record "Procedure record" "The record of a procedure actually performed — the operation note, the anaesthetic chart, the endoscopy record."
* #recovery-record "Recovery record" "Observations and care in the recovery period immediately after a procedure, before the patient goes back to a ward."
* #safety-checklist "Safety checklist" "A checklist completed to confirm a step was taken before, during or after a procedure. Its value is the record that somebody checked, which is why an unfilled box is a finding rather than a blank."

// ── Moving between people and places ─────────────────────────────────────────
* #handover-record "Handover record" "What one team tells the next about a patient at a shift change or a transfer between units."
* #referral "Referral" "A patient sent on to another unit or facility, with the history and the reason for sending them."
* #discharge-summary "Discharge summary" "The account of a completed admission that the patient leaves with and the next clinician reads."

// ── Asking for something ─────────────────────────────────────────────────────
* #requisition "Requisition" "A request to another department for a test, an image, a blood product or a supply."
* #consent "Consent" "A record of permission given or refused for a procedure, a treatment, a disclosure or a disposal."

// ── Written about a patient rather than for their care ───────────────────────
* #clinical-report "Clinical report" "A report on a patient written for someone outside the treating team — an insurer, a court, another hospital, a mortality review."
* #mortuary-record "Mortuary record" "Admission to, release from, or a consent connected with the mortuary."
* #survey "Survey" "A questionnaire whose answers are about the service rather than about the patient's health, and which produces no clinical resource."

ValueSet: SGHIClinicalFormCategory
Id: clinical-form-category
Title: "SGHI Clinical Form Category"
Description: "The kind of clinical form a Questionnaire represents. Bound at Questionnaire.useContext where the context code is `workflow`, so a form can be found by shape — every observation chart, every consent — across facilities rather than by the title one hospital prints on its own paper."
* ^status = #active
* ^experimental = false
* include codes from system SGHIClinicalFormCategoryCodeSystem
