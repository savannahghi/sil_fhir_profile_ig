// ─────────────────────────────────────────────────────────────────────────────
// Value sets from the external questionnaires.
//
// One per pick list on the paper forms. They are bound at Questionnaire.item
// .answerValueSet with answerConstraint #optionsOnly, so the client offers
// exactly what the paper offers and nothing else, and the extraction maps can
// rely on the answer being one of a known set.
//
// The shared yes/no list is deliberately one value set used by every yes/no
// question on all fifteen forms rather than one per form: the paper prints the
// same two boxes each time, and a per-form copy would drift.
// ─────────────────────────────────────────────────────────────────────────────

// A plain yes/no tick box does not bind a local value set. It binds HL7's own,
// http://terminology.hl7.org/ValueSet/v2-0136, across all 218 such items in the
// set. Worth knowing about that value set: its codes come from CodeSystem
// v2-0532, not v2-0136 -- table 0136 was folded into 0532, "expanded yes/no
// indicator" -- so the answers are `Y` and `N`, and every extraction-map guard
// tests those. The local #yes and #no answer codes survive only for the
// three-answer set below.
//
// The three-answer variant stays local rather than moving to v2-0532, which is
// the HL7 equivalent. v2-0532 adds "asked but unknown", "temporarily
// unavailable", "not applicable" and "not asked"; offering a nurse five ways to
// not answer an immunisation-history question is worse than offering one.
//
// It is a separate value set rather than a superset, so a form has to choose. On
// the paediatric sheet the carer often cannot say, and "not known" is a real
// answer there; on the WHO theatre checklist it is not, and offering it would
// let a team leave a safety check unresolved and still submit the form.
ValueSet: SGHIYesNoUnknown
Id: yes-no-unknown
Title: "SGHI Yes / No / Not known"
Description: "Yes, no, or not established. Bound only to the history questions where the answer comes from a carer who may not know — immunisation history, maternal serology, prior treatment — and never to an examination finding or a safety check, where an unanswered question must stay unanswered rather than becoming a recorded 'not known'."
* ^status = #active
* ^experimental = false
* include SGHIAnswerCodeSystem#yes "Yes"
* include SGHIAnswerCodeSystem#no "No"
* include SGHIAnswerCodeSystem#not-known "Not known"

ValueSet: SGHITriageLevel
Id: triage-level
Title: "SGHI Triage Level"
Description: "How urgently a child needs to be seen, from the four levels printed on the paediatric triage record. Local rather than the Canadian CTAS (LOINC 75910-0) or a five-level ESI: this is the Kenyan ETAT+ shorthand of emergency, priority, less urgent and well baby, and the timings printed beside it — immediate, and fifteen minutes — belong to ETAT+, not to either published scale."
* ^status = #active
* ^experimental = false
* include SGHIAnswerCodeSystem#triage-emergency "Emergency"
* include SGHIAnswerCodeSystem#triage-priority "Priority"
* include SGHIAnswerCodeSystem#triage-less-urgent "Less urgent"
* include SGHIAnswerCodeSystem#triage-well-baby "Well baby"

ValueSet: SGHIFindingGrade
Id: finding-grade
Title: "SGHI Finding Grade"
Description: "The three-point grading the paediatric and newborn sheets print as 0 / + / +++, used for jaundice and for pallor. Three points, not a continuum: the paper offers no middle grade and grading one in would put a reading on the chart that nobody made."
* ^status = #active
* ^experimental = false
* include SGHIAnswerCodeSystem#grade-absent "0 — absent"
* include SGHIAnswerCodeSystem#grade-mild "+ — mild"
* include SGHIAnswerCodeSystem#grade-severe "+++ — severe"

ValueSet: SGHIAVPU
Id: avpu
Title: "SGHI AVPU"
Description: "The four-point AVPU conscious level screen. Kept apart from the Glasgow Coma Scale rather than mapped onto it: AVPU has four points and GCS fifteen, and translating one into the other would assert a conscious level nobody assessed. A child scored P or U on the triage sheet is an emergency by ETAT+, which is why the triage record asks for AVPU and not GCS."
* ^status = #active
* ^experimental = false
* include SGHIAnswerCodeSystem#avpu-alert "A — alert"
* include SGHIAnswerCodeSystem#avpu-verbal "V — responds to voice"
* include SGHIAnswerCodeSystem#avpu-pain "P — responds to pain"
* include SGHIAnswerCodeSystem#avpu-unresponsive "U — unresponsive"

ValueSet: SGHIOedemaDistribution
Id: oedema-distribution
Title: "SGHI Oedema Distribution"
Description: "How far up the body oedema extends. Ordered by severity, because in a malnourished child the distribution is the grade: feet alone is +, to the knees is ++, and involvement of the face is +++."
* ^status = #active
* ^experimental = false
* include SGHIAnswerCodeSystem#oedema-none "None"
* include SGHIAnswerCodeSystem#oedema-feet "Feet"
* include SGHIAnswerCodeSystem#oedema-knee "To the knee"
* include SGHIAnswerCodeSystem#oedema-face "Face"

ValueSet: SGHIUmbilicusAppearance
Id: umbilicus-appearance
Title: "SGHI Umbilical Stump Appearance"
Description: "The three states the newborn sheet offers for a cord stump. The third — pus with redness of the surrounding skin — is periumbilical cellulitis and is a separate answer from pus alone because it changes the management from cord care to systemic antibiotics."
* ^status = #active
* ^experimental = false
* include SGHIAnswerCodeSystem#umbilicus-normal "Normal"
* include SGHIAnswerCodeSystem#umbilicus-pus "Pus"
* include SGHIAnswerCodeSystem#umbilicus-pus-and-redness "Pus and red skin"

ValueSet: SGHICordCondition
Id: cord-condition
Title: "SGHI Cord Condition"
Description: "Whether a newborn's cord is fresh, dry or infected, as the newborn unit handover form asks it. Distinct from SGHIUmbilicusAppearance, which grades the stump on examination: this one tracks normal drying over the first days and that one looks for infection."
* ^status = #active
* ^experimental = false
* include SGHIAnswerCodeSystem#cord-fresh "Fresh"
* include SGHIAnswerCodeSystem#cord-dry "Dry"
* include SGHIAnswerCodeSystem#cord-infected "Infected"

ValueSet: SGHIPMTCTStatus
Id: pmtct-status
Title: "SGHI Maternal PMTCT Status"
Description: "The mother's status in the programme for prevention of mother-to-child transmission of HIV, as known when her child is admitted. Includes 'unknown' because on an unbooked admission it frequently is, and a child of unknown maternal status is managed as exposed until tested — so the unknown has to be recordable."
* ^status = #active
* ^experimental = false
* include SGHIAnswerCodeSystem#pmtct-positive "Positive"
* include SGHIAnswerCodeSystem#pmtct-negative "Negative"
* include SGHIAnswerCodeSystem#pmtct-unknown "Unknown"

ValueSet: SGHIModeOfDeliveryDetailed
Id: mode-of-delivery-detailed
Title: "SGHI Mode of Delivery (detailed)"
Description: "How the baby was born, as the maternity and newborn records print it. Breech is listed separately from spontaneous vaginal delivery because the forms print it as its own box, and the two carry different neonatal risk."
* ^status = #active
* ^experimental = false
* include SGHIAnswerCodeSystem#delivery-svd "SVD"
* include SGHIAnswerCodeSystem#delivery-breech "Breech"
* include SGHIAnswerCodeSystem#delivery-caesarean "C/S"
* include SGHIAnswerCodeSystem#delivery-assisted-vacuum "Vacuum"
* include SGHIAnswerCodeSystem#delivery-assisted-forceps "Forceps"

ValueSet: SGHIPlaceOfBirth
Id: place-of-birth
Title: "SGHI Place of Birth"
Description: "Where the baby was born, as the newborn admission record asks it: home, a facility, or somewhere else. Coarse on purpose — the form is establishing whether the birth was attended, not identifying the facility, which it asks for separately as free text."
* ^status = #active
* ^experimental = false
* include SGHIAnswerCodeSystem#place-of-birth-home "Home"
* include SGHIAnswerCodeSystem#place-of-birth-hospital "Hospital"
* include SGHIAnswerCodeSystem#place-of-birth-other "Other"

ValueSet: SGHIFetalLie
Id: fetal-lie
Title: "SGHI Fetal Lie"
Description: "The relation of the fetal long axis to the uterine long axis. Separate from presentation, which LOINC 11876-0 covers and the maternity record asks for on the next line: lie says which way the fetus lies, presentation says which part is coming first."
* ^status = #active
* ^experimental = false
* include SGHIAnswerCodeSystem#lie-longitudinal "Longitudinal"
* include SGHIAnswerCodeSystem#lie-transverse "Transverse"
* include SGHIAnswerCodeSystem#lie-oblique "Oblique"

ValueSet: SGHIMembraneStatus
Id: membrane-status
Title: "SGHI Membrane Status"
Description: "Whether the membranes are intact or ruptured at the time of examination. Recorded on both the maternity examination and every Bishop assessment, because rupture changes what a vaginal examination is allowed to do next."
* ^status = #active
* ^experimental = false
* include SGHIAnswerCodeSystem#membranes-intact "Intact"
* include SGHIAnswerCodeSystem#membranes-ruptured "Ruptured"

ValueSet: SGHIPlacentaCompleteness
Id: placenta-completeness
Title: "SGHI Placenta Completeness"
Description: "Whether the placenta and membranes came away complete. Two answers only, and the second is an instruction as much as a finding: incomplete means the uterus must be explored before the woman leaves the room."
* ^status = #active
* ^experimental = false
* include SGHIAnswerCodeSystem#placenta-complete "Complete"
* include SGHIAnswerCodeSystem#placenta-incomplete "Incomplete"

ValueSet: SGHIPerinealOutcome
Id: perineal-outcome
Title: "SGHI Perineal Outcome"
Description: "What happened to the perineum at delivery: intact, torn, or deliberately incised and repaired. A tear and an episiotomy are kept apart because one is a complication and the other a decision, and an audit that folds them together cannot measure either."
* ^status = #active
* ^experimental = false
* include SGHIAnswerCodeSystem#perineum-intact "Intact"
* include SGHIAnswerCodeSystem#perineum-tear "Tear"
* include SGHIAnswerCodeSystem#perineum-episiotomy "Episiotomy repaired"

ValueSet: SGHIAnaesthesiaTechnique
Id: anaesthesia-technique
Title: "SGHI Anaesthesia Technique"
Description: "The technique used, from the five the anaesthetic record offers. Sedation is listed as its own technique rather than as a depth of general anaesthesia, which is how the chart treats it and how the theatre bills it."
* ^status = #active
* ^experimental = false
* include SGHIAnswerCodeSystem#anaesthesia-general "General"
* include SGHIAnswerCodeSystem#anaesthesia-spinal "Spinal"
* include SGHIAnswerCodeSystem#anaesthesia-regional-block "Regional block"
* include SGHIAnswerCodeSystem#anaesthesia-sedation "Sedation"
* include SGHIAnswerCodeSystem#anaesthesia-local "Local infiltration"

ValueSet: SGHIChecklistAnswer
Id: checklist-answer
Title: "SGHI Checklist Answer"
Description: "The three answers a surgical safety checklist item takes. 'Not applicable' is a distinct answer and not a polite form of 'not done': the WHO checklist prints it for items such as site marking, where not applicable is correct completion, and an audit of checklist compliance has to be able to tell a correctly skipped item from a missed one."
* ^status = #active
* ^experimental = false
* include SGHIAnswerCodeSystem#check-confirmed "Confirmed"
* include SGHIAnswerCodeSystem#check-not-applicable "Not applicable"
* include SGHIAnswerCodeSystem#check-not-done "Not done"

ValueSet: SGHISurgicalSafetyPhase
Id: surgical-safety-phase
Title: "SGHI Surgical Safety Phase"
Description: "Which of the WHO checklist's three phases a set of answers belongs to. Carried on the extracted Observation so a sign-out that never happened is visibly missing rather than indistinguishable from a sign-out with nothing ticked."
* ^status = #active
* ^experimental = false
* include SGHIAnswerCodeSystem#phase-sign-in "Sign in — before induction of anaesthesia"
* include SGHIAnswerCodeSystem#phase-time-out "Time out — before skin incision"
* include SGHIAnswerCodeSystem#phase-sign-out "Sign out — before the patient leaves the operating room"

ValueSet: SGHIDialysisAccess
Id: dialysis-access
Title: "SGHI Dialysis Access"
Description: "The vascular access used for a haemodialysis session. The four the unit uses, ordered as the guidelines prefer them: a fistula first, then a graft, then a tunnelled line, and a temporary catheter last."
* ^status = #active
* ^experimental = false
* include SGHIAnswerCodeSystem#access-av-fistula "Arteriovenous fistula"
* include SGHIAnswerCodeSystem#access-av-graft "Arteriovenous graft"
* include SGHIAnswerCodeSystem#access-tunnelled-catheter "Tunnelled catheter"
* include SGHIAnswerCodeSystem#access-temporary-catheter "Temporary catheter"

ValueSet: SGHIDonorType
Id: donor-type
Title: "SGHI Donor Type"
Description: "Whether a blood donor is replacing blood used for a named patient, donating voluntarily, or donating for their own later use. The KTTA form asks it because a replacement donation is tied to a recipient and a voluntary one is not, which changes what the unit may be used for."
* ^status = #active
* ^experimental = false
* include SGHIAnswerCodeSystem#donor-replacement "Replacement"
* include SGHIAnswerCodeSystem#donor-voluntary "Voluntary"
* include SGHIAnswerCodeSystem#donor-autologous "Autologous"

ValueSet: SGHIDonationType
Id: donation-type
Title: "SGHI Donation Type"
Description: "Whether the collection is whole blood or an apheresis procedure. The two the KTTA form offers."
* ^status = #active
* ^experimental = false
* include SGHIAnswerCodeSystem#donation-normal "Normal"
* include SGHIAnswerCodeSystem#donation-apheresis "Apheresis"

ValueSet: SGHITreatmentLine
Id: treatment-line
Title: "SGHI Line of Treatment"
Description: "Which line of systemic anti-cancer therapy is being prescribed. Asked on the chemotherapy prescription because the line is what decides the regimen, and because a patient moving to a later line has progressed, which the record should show."
* ^status = #active
* ^experimental = false
* include SGHIAnswerCodeSystem#line-first "First line"
* include SGHIAnswerCodeSystem#line-second "Second line"
* include SGHIAnswerCodeSystem#line-third "Third line"
* include SGHIAnswerCodeSystem#line-subsequent "Fourth line or later"

// ── Scored instrument answer lists ──────────────────────────────────────────
// One per item, not one per instrument: an item's answers carry weights that
// mean nothing outside that item, and a single instrument-wide list would let a
// client answer "Soft" to the dilation question.

ValueSet: SGHIBishopDilation
Id: bishop-dilation
Title: "SGHI Bishop Dilation"
Description: "The four dilation bands of the Bishop score, weighted 0 to 3."
* ^status = #active
* ^experimental = false
* include SGHIScoreCodeSystem#bishop-dilation-0 "Closed"
* include SGHIScoreCodeSystem#bishop-dilation-1 "1 to 2 cm"
* include SGHIScoreCodeSystem#bishop-dilation-2 "3 to 4 cm"
* include SGHIScoreCodeSystem#bishop-dilation-3 "5 cm or more"

ValueSet: SGHIBishopEffacement
Id: bishop-effacement
Title: "SGHI Bishop Effacement"
Description: "The four effacement bands of the Bishop score, weighted 0 to 3. Each band gives both readings the examiner may have taken — a percentage effaced or a cervical length — because the sheet prints both and the examiner uses whichever they measured."
* ^status = #active
* ^experimental = false
* include SGHIScoreCodeSystem#bishop-effacement-0 "0 to 25%, or cervix over 4 cm"
* include SGHIScoreCodeSystem#bishop-effacement-1 "25 to 50%, or 2 to 4 cm"
* include SGHIScoreCodeSystem#bishop-effacement-2 "50 to 75%, or 1 to 2 cm"
* include SGHIScoreCodeSystem#bishop-effacement-3 "85% or more"

ValueSet: SGHIBishopConsistency
Id: bishop-consistency
Title: "SGHI Bishop Consistency"
Description: "The three consistency bands of the Bishop score, weighted 0 to 2."
* ^status = #active
* ^experimental = false
* include SGHIScoreCodeSystem#bishop-consistency-0 "Firm"
* include SGHIScoreCodeSystem#bishop-consistency-1 "Medium"
* include SGHIScoreCodeSystem#bishop-consistency-2 "Soft"

ValueSet: SGHIBishopPosition
Id: bishop-position
Title: "SGHI Bishop Cervical Position"
Description: "The three cervical position bands of the Bishop score, weighted 0 to 2."
* ^status = #active
* ^experimental = false
* include SGHIScoreCodeSystem#bishop-position-0 "Posterior"
* include SGHIScoreCodeSystem#bishop-position-1 "Midline"
* include SGHIScoreCodeSystem#bishop-position-2 "Anterior"

ValueSet: SGHIBishopStation
Id: bishop-station
Title: "SGHI Bishop Head Station"
Description: "The four station bands of the Bishop score, weighted 0 to 3. Bishop's own table collapses -1 and 0 into one band and +1 and +2 into another, which is what the sheet prints, so the value set does the same rather than offering the five stations separately."
* ^status = #active
* ^experimental = false
* include SGHIScoreCodeSystem#bishop-station-0 "-3"
* include SGHIScoreCodeSystem#bishop-station-1 "-2"
* include SGHIScoreCodeSystem#bishop-station-2 "-1 or 0"
* include SGHIScoreCodeSystem#bishop-station-3 "+1 or +2"

ValueSet: SGHIApgarColour
Id: apgar-colour
Title: "SGHI Apgar Appearance"
Description: "The three appearance bands of the Apgar score, weighted 0 to 2. Reused at one, five and ten minutes: the sign is the same at each time and only the LOINC question code changes."
* ^status = #active
* ^experimental = false
* include SGHIScoreCodeSystem#apgar-colour-0 "Pale or blue"
* include SGHIScoreCodeSystem#apgar-colour-1 "Blue extremities, torso pink"
* include SGHIScoreCodeSystem#apgar-colour-2 "Pink all over"

ValueSet: SGHIApgarPulse
Id: apgar-pulse
Title: "SGHI Apgar Pulse"
Description: "The three pulse bands of the Apgar score, weighted 0 to 2. Bands, not a heart rate: the measured rate is a separate Observation coded to LOINC 8867-4, and the extraction map records both when the chart carries both."
* ^status = #active
* ^experimental = false
* include SGHIScoreCodeSystem#apgar-pulse-0 "Absent"
* include SGHIScoreCodeSystem#apgar-pulse-1 "Under 100"
* include SGHIScoreCodeSystem#apgar-pulse-2 "100 or over"

ValueSet: SGHIApgarGrimace
Id: apgar-grimace
Title: "SGHI Apgar Reflex Irritability"
Description: "The three reflex irritability bands of the Apgar score, weighted 0 to 2."
* ^status = #active
* ^experimental = false
* include SGHIScoreCodeSystem#apgar-grimace-0 "No response"
* include SGHIScoreCodeSystem#apgar-grimace-1 "Grimace"
* include SGHIScoreCodeSystem#apgar-grimace-2 "Cries or pulls away"

ValueSet: SGHIApgarActivity
Id: apgar-activity
Title: "SGHI Apgar Muscle Tone"
Description: "The three muscle tone bands of the Apgar score, weighted 0 to 2."
* ^status = #active
* ^experimental = false
* include SGHIScoreCodeSystem#apgar-activity-0 "Floppy"
* include SGHIScoreCodeSystem#apgar-activity-1 "Some flexion"
* include SGHIScoreCodeSystem#apgar-activity-2 "Active motion"

ValueSet: SGHIApgarRespiration
Id: apgar-respiration
Title: "SGHI Apgar Respiratory Effort"
Description: "The three respiratory effort bands of the Apgar score, weighted 0 to 2."
* ^status = #active
* ^experimental = false
* include SGHIScoreCodeSystem#apgar-respiration-0 "Absent"
* include SGHIScoreCodeSystem#apgar-respiration-1 "Weak, irregular or gasping"
* include SGHIScoreCodeSystem#apgar-respiration-2 "Strong cry"

// ── The small non-yes/no pick lists ─────────────────────────────────────────
// One value set each rather than inline answerOptions, so a client and an
// extraction map agree on the list without reading the questionnaire.

ValueSet: SGHIPeripheralPulse
Id: peripheral-pulse
Title: "SGHI Peripheral Pulse"
Description: "Normal or weak, the only two the paediatric sheet offers. A weak pulse with a capillary refill over three seconds is shock, which is why the sheet asks for both on the same line."
* ^status = #active
* ^experimental = false
* include SGHIAnswerCodeSystem#pulse-normal "Normal"
* include SGHIAnswerCodeSystem#pulse-weak "Weak"

ValueSet: SGHISkinWarmTo
Id: skin-warm-to
Title: "SGHI Skin Warm As Far As"
Description: "How far up the limb the skin is still warm. Ordered by severity: the higher the level, the worse the peripheral perfusion."
* ^status = #active
* ^experimental = false
* include SGHIAnswerCodeSystem#warm-to-hand "Hand"
* include SGHIAnswerCodeSystem#warm-to-elbow "Elbow"
* include SGHIAnswerCodeSystem#warm-to-shoulder "Shoulder"

ValueSet: SGHIMalariaTest
Id: malaria-test
Title: "SGHI Malaria Test"
Description: "Which malaria test is being ordered. Repeatable, because the sheet lets a clinician order both."
* ^status = #active
* ^experimental = false
* include SGHIAnswerCodeSystem#malaria-blood-slide "Blood slide"
* include SGHIAnswerCodeSystem#malaria-rapid-test "Rapid test"

ValueSet: SGHIReviewStatus
Id: review-status
Title: "SGHI Review Status"
Description: "What watching the child needs after admission. Repeatable: the sheet prints both boxes and a sick child gets both."
* ^status = #active
* ^experimental = false
* include SGHIAnswerCodeSystem#review-medical-6-hours "Medical review within 6 hours"
* include SGHIAnswerCodeSystem#review-priority-nursing "Priority nursing observations"

ValueSet: SGHICapillaryRefillBand
Id: capillary-refill-band
Title: "SGHI Capillary Refill Band"
Description: "The three bands the newborn sheet offers instead of a time in seconds. The sheet also prints an X for 'not possible'; that is an unanswered question, not a fourth band, and is deliberately absent."
* ^status = #active
* ^experimental = false
* include SGHIAnswerCodeSystem#capillary-refill-under-2s "Under 2 seconds"
* include SGHIAnswerCodeSystem#capillary-refill-2-to-3s "2 to 3 seconds"
* include SGHIAnswerCodeSystem#capillary-refill-over-3s "Over 3 seconds"

ValueSet: SGHINewbornColour
Id: newborn-colour
Title: "SGHI Newborn Colour"
Description: "Pink or blue, as the skin-to-skin observation row asks it. Coarser than the three-band Apgar appearance on purpose: this is a two-hourly nursing check, not a scored assessment."
* ^status = #active
* ^experimental = false
* include SGHIAnswerCodeSystem#colour-pink "Pink"
* include SGHIAnswerCodeSystem#colour-blue "Blue"

ValueSet: SGHIFollowUpRound
Id: follow-up-round
Title: "SGHI Follow-up Round"
Description: "Which of the three daily rounds a newborn follow-up row belongs to — the chart's M, E and N columns."
* ^status = #active
* ^experimental = false
* include SGHIAnswerCodeSystem#round-morning "Morning"
* include SGHIAnswerCodeSystem#round-evening "Evening"
* include SGHIAnswerCodeSystem#round-night "Night"

ValueSet: SGHIPainBand
Id: pain-band
Title: "SGHI Pain Band"
Description: "Mild, moderate or severe, which is how the paediatric triage sheet grades pain. Not interchangeable with the 0 to 10 numeric rating the ward pain chart uses, and the extraction map codes it differently for that reason."
* ^status = #active
* ^experimental = false
* include SGHIAnswerCodeSystem#pain-mild "Mild"
* include SGHIAnswerCodeSystem#pain-moderate "Moderate"
* include SGHIAnswerCodeSystem#pain-severe "Severe"

ValueSet: SGHIPalliativeReferralSource
Id: palliative-referral-source
Title: "SGHI Palliative Referral Source"
Description: "How the patient reached the palliative care service. The sheet prints five boxes — clinic, ward, private, staff and self — and the last three all mean the patient came without an internal referral, so they share one answer with the detail captured as text beside it."
* ^status = #active
* ^experimental = false
* include SGHIAnswerCodeSystem#referral-clinic "Clinic"
* include SGHIAnswerCodeSystem#referral-ward "Ward"
* include SGHIAnswerCodeSystem#referral-self-or-private "Private, staff or self"

ValueSet: SGHILevelOfConsciousness
Id: level-of-consciousness
Title: "SGHI Level of Consciousness"
Description: "The post-operative check's three levels. The sheet prints a fourth box, 'unconscious'; that is deliberately not here, because an unconscious post-operative patient needs a Glasgow Coma Scale charted rather than a tick, and the checklist item should be left unanswered."
* ^status = #active
* ^experimental = false
* include SGHIAnswerCodeSystem#consciousness-alert "Alert"
* include SGHIAnswerCodeSystem#consciousness-sedated "Sedated"
* include SGHIAnswerCodeSystem#consciousness-agitated "Agitated"

ValueSet: SGHIImagingModality
Id: imaging-modality
Title: "SGHI Imaging Modality"
Description: "Which of the two request forms this is. The answer decides whether the ultrasound pick list is shown and which ServiceRequest category the extraction map assigns."
* ^status = #active
* ^experimental = false
* include SGHIAnswerCodeSystem#modality-x-ray "X-ray"
* include SGHIAnswerCodeSystem#modality-ultrasound "Ultrasound"

ValueSet: SGHIConsentFormVariant
Id: consent-form-variant
Title: "SGHI Consent Form Variant"
Description: "Which of the hospital's three consent forms is being completed. Chooses the procedure-specific block and, on the extracted Consent, the provision the signature covers."
* ^status = #active
* ^experimental = false
* include SGHIAnswerCodeSystem#consent-general-operation "General operation or treatment"
* include SGHIAnswerCodeSystem#consent-endoscopy "Endoscopy"
* include SGHIAnswerCodeSystem#consent-anti-cancer-therapy "Systemic anti-cancer therapy"

ValueSet: SGHIConsenter
Id: consenter
Title: "SGHI Who Is Consenting"
Description: "Whether the patient is consenting for themselves or someone is consenting on their behalf. Decides whether a relationship has to be recorded, and whether Consent.grantor is the patient or another party."
* ^status = #active
* ^experimental = false
* include SGHIAnswerCodeSystem#consenter-patient "The patient themselves"
* include SGHIAnswerCodeSystem#consenter-next-of-kin "Next of kin or guardian"

ValueSet: SGHIScanType
Id: scan-type
Title: "SGHI Scan Type"
Description: "The ultrasound request form's own seventeen-item pick list, in the order and grouping the paper prints — general, small parts, then the Doppler studies. Repeatable, because one request can ask for more than one."
* ^status = #active
* ^experimental = false
* include SGHIAnswerCodeSystem#abdominal-ultrasound "Abdominal ultrasound"
* include SGHIAnswerCodeSystem#pelvic-ultrasound "Pelvic ultrasound"
* include SGHIAnswerCodeSystem#kub-ultrasound "KUB ultrasound"
* include SGHIAnswerCodeSystem#early-obstetric-ultrasound "Early obstetric ultrasound"
* include SGHIAnswerCodeSystem#routine-obstetric-ultrasound "Routine obstetric ultrasound"
* include SGHIAnswerCodeSystem#obstetric-ultrasound-biophysical-profile "Obstetric ultrasound with biophysical profile"
* include SGHIAnswerCodeSystem#thyroid-ultrasound "Thyroid ultrasound"
* include SGHIAnswerCodeSystem#scrotal-ultrasound "Scrotal ultrasound"
* include SGHIAnswerCodeSystem#breast-ultrasound "Breast ultrasound"
* include SGHIAnswerCodeSystem#musculoskeletal-ultrasound "Musculoskeletal or regional ultrasound"
* include SGHIAnswerCodeSystem#cranial-ultrasound "Cranial ultrasound"
* include SGHIAnswerCodeSystem#renal-doppler "Renal Doppler ultrasound"
* include SGHIAnswerCodeSystem#carotid-doppler "Carotid Doppler ultrasound"
* include SGHIAnswerCodeSystem#upper-limb-venous-doppler "Upper limb venous Doppler ultrasound"
* include SGHIAnswerCodeSystem#upper-limb-arterial-doppler "Upper limb arterial Doppler ultrasound"
* include SGHIAnswerCodeSystem#lower-limb-venous-doppler "Lower limb venous Doppler ultrasound"
* include SGHIAnswerCodeSystem#lower-limb-arterial-doppler "Lower limb arterial Doppler ultrasound"

ValueSet: SGHIEndoscopyProcedure
Id: endoscopy-procedure
Title: "SGHI Endoscopy Procedure"
Description: "The four procedures the endoscopy consent form lists. The paper asks the clinician to strike through those that do not apply; this asks them to tick those that do, which is the same information the other way up and far harder to misread."
* ^status = #active
* ^experimental = false
* include SGHIAnswerCodeSystem#upper-gi-endoscopy "Upper gastrointestinal endoscopy"
* include SGHIAnswerCodeSystem#colonoscopy "Colonoscopy"
* include SGHIAnswerCodeSystem#flexible-sigmoidoscopy "Flexible sigmoidoscopy"
* include SGHIAnswerCodeSystem#ercp "Endoscopic retrograde cholangiopancreatography"

// ── The eight further forms from the 54-page scan ───────────────────────────

// The Glasgow Coma Scale, three value sets over the IG's *existing*
// clinical-score-codesystem rather than new codes. Those codes already carry
// the right weights, and the chart differs only in wording — it prints
// "Inappropriate word 3" where the IG says "Words", and "Incompatible 2" (a
// long-standing typo for incomprehensible) where the IG says "Sounds". The
// questionnaire's item text keeps the chart's wording; the answers are the IG's.
//
// Three sets and not one, so a client cannot answer "Obeys commands" to the eye
// question. SGHIGlasgowComaScaleAnswer already exists and holds all fifteen
// together, which is the wrong shape for binding a single item.
ValueSet: SGHIGCSEyeOpening
Id: gcs-eye-opening
Title: "SGHI GCS Eye Opening"
Description: "The four eye-opening grades of the Glasgow Coma Scale, weighted 1 to 4. Reuses the IG's own clinical-score-codesystem."
* ^status = #active
* ^experimental = false
* include SGHIClinicalScoreCodeSystem#gcs-eye-1 "No eye opening"
* include SGHIClinicalScoreCodeSystem#gcs-eye-2 "Eye opening to pressure"
* include SGHIClinicalScoreCodeSystem#gcs-eye-3 "Eye opening to sound"
* include SGHIClinicalScoreCodeSystem#gcs-eye-4 "Spontaneous eye opening"

ValueSet: SGHIGCSVerbalResponse
Id: gcs-verbal-response
Title: "SGHI GCS Verbal Response"
Description: "The five verbal-response grades of the Glasgow Coma Scale, weighted 1 to 5. Reuses the IG's own clinical-score-codesystem."
* ^status = #active
* ^experimental = false
* include SGHIClinicalScoreCodeSystem#gcs-verbal-1 "No verbal response"
* include SGHIClinicalScoreCodeSystem#gcs-verbal-2 "Sounds"
* include SGHIClinicalScoreCodeSystem#gcs-verbal-3 "Words"
* include SGHIClinicalScoreCodeSystem#gcs-verbal-4 "Confused"
* include SGHIClinicalScoreCodeSystem#gcs-verbal-5 "Oriented"

ValueSet: SGHIGCSMotorResponse
Id: gcs-motor-response
Title: "SGHI GCS Motor Response"
Description: "The six motor-response grades of the Glasgow Coma Scale, weighted 1 to 6. Reuses the IG's own clinical-score-codesystem."
* ^status = #active
* ^experimental = false
* include SGHIClinicalScoreCodeSystem#gcs-motor-1 "No motor response"
* include SGHIClinicalScoreCodeSystem#gcs-motor-2 "Extension"
* include SGHIClinicalScoreCodeSystem#gcs-motor-3 "Abnormal flexion"
* include SGHIClinicalScoreCodeSystem#gcs-motor-4 "Normal flexion"
* include SGHIClinicalScoreCodeSystem#gcs-motor-5 "Localising"
* include SGHIClinicalScoreCodeSystem#gcs-motor-6 "Obeys commands"

ValueSet: SGHIArmPower
Id: arm-power
Title: "SGHI Arm Power"
Description: "The six arm-power grades on the ICU neurological observation chart, weighted 0 to 5."
* ^status = #active
* ^experimental = false
* include SGHIAnswerCodeSystem#arm-power-5 "Normal power"
* include SGHIAnswerCodeSystem#arm-power-4 "Mild weakness"
* include SGHIAnswerCodeSystem#arm-power-3 "Severe weakness"
* include SGHIAnswerCodeSystem#arm-power-2 "Spastic flexion"
* include SGHIAnswerCodeSystem#arm-power-1 "Extension"
* include SGHIAnswerCodeSystem#arm-power-0 "No response"

ValueSet: SGHILegPower
Id: leg-power
Title: "SGHI Leg Power"
Description: "The five leg-power grades on the ICU neurological observation chart, weighted 0 to 4. One grade fewer than the arms: the chart offers no spastic flexion for a leg."
* ^status = #active
* ^experimental = false
* include SGHIAnswerCodeSystem#leg-power-4 "Normal power"
* include SGHIAnswerCodeSystem#leg-power-3 "Mild weakness"
* include SGHIAnswerCodeSystem#leg-power-2 "Severe weakness"
* include SGHIAnswerCodeSystem#leg-power-1 "Extension"
* include SGHIAnswerCodeSystem#leg-power-0 "No response"

ValueSet: SGHIPupilReaction
Id: pupil-reaction
Title: "SGHI Pupil Reaction"
Description: "How a pupil responds to light. 'Closed' is included and is not a synonym for 'fixed': a closed eye was not assessed, and a fixed pupil was assessed and did not react — which is the difference between missing data and a neurosurgical emergency."
* ^status = #active
* ^experimental = false
* include SGHIAnswerCodeSystem#pupil-brisk "Brisk"
* include SGHIAnswerCodeSystem#pupil-sluggish "Sluggish"
* include SGHIAnswerCodeSystem#pupil-fixed "Fixed"
* include SGHIAnswerCodeSystem#pupil-closed "Closed"

ValueSet: SGHIEndoscopyInvestigation
Id: endoscopy-investigation
Title: "SGHI Endoscopy Investigation"
Description: "The five studies the endoscopy investigation form lists. A different list from SGHIEndoscopyProcedure on the consent form, and deliberately so: the consent authorises a procedure and this records which one was done, and the hospital's two forms do not offer the same five."
* ^status = #active
* ^experimental = false
* include SGHIAnswerCodeSystem#oesophagogastroduodenoscopy "Oesophagogastroduodenoscopy"
* include SGHIAnswerCodeSystem#oesophagogastroscopy "Oesophagogastroscopy"
* include SGHIAnswerCodeSystem#oesophagoscopy "Oesophagoscopy"
* include SGHIAnswerCodeSystem#rectosigmoidoscopy "Rectosigmoidoscopy"
* include SGHIAnswerCodeSystem#colonoscopy-investigation "Colonoscopy"

ValueSet: SGHIBloodProduct
Id: blood-product
Title: "SGHI Blood Product"
Description: "The four products the blood requisition form offers."
* ^status = #active
* ^experimental = false
* include SGHIAnswerCodeSystem#packed-red-blood-cells "Packed red blood cells"
* include SGHIAnswerCodeSystem#fresh-frozen-plasma "Fresh frozen plasma"
* include SGHIAnswerCodeSystem#platelet-concentrate "Platelet concentrate"
* include SGHIAnswerCodeSystem#whole-blood "Whole blood"

ValueSet: SGHIRequestUrgency
Id: request-urgency
Title: "SGHI Request Urgency"
Description: "How urgently a requisition is needed. 'Desperate' is the hospital's own word and sits above urgent — it means the patient is bleeding now. Kept as a local list rather than mapped onto ServiceRequest.priority, which has stat / asap / urgent / routine and no equivalent of the top band; the extraction map maps it down to `stat` and records the original alongside."
* ^status = #active
* ^experimental = false
* include SGHIAnswerCodeSystem#urgency-desperate "Desperate"
* include SGHIAnswerCodeSystem#urgency-urgent "Urgent"
* include SGHIAnswerCodeSystem#urgency-elective "Elective"

ValueSet: SGHIABOGroup
Id: abo-group
Title: "SGHI ABO Group"
Description: "The four ABO groups."
* ^status = #active
* ^experimental = false
* include SGHIAnswerCodeSystem#abo-a "A"
* include SGHIAnswerCodeSystem#abo-b "B"
* include SGHIAnswerCodeSystem#abo-ab "AB"
* include SGHIAnswerCodeSystem#abo-o "O"

ValueSet: SGHIRhesusFactor
Id: rhesus-factor
Title: "SGHI Rhesus Factor"
Description: "Rhesus D positive or negative."
* ^status = #active
* ^experimental = false
* include SGHIAnswerCodeSystem#rh-positive "Positive"
* include SGHIAnswerCodeSystem#rh-negative "Negative"

ValueSet: SGHICrossMatchResult
Id: cross-match-result
Title: "SGHI Cross-match Result"
Description: "Whether a cross-match was compatible. Two answers, and the second is a stop: an incompatible unit must not be issued."
* ^status = #active
* ^experimental = false
* include SGHIAnswerCodeSystem#xmatch-compatible "Compatible"
* include SGHIAnswerCodeSystem#xmatch-incompatible "Incompatible"

ValueSet: SGHIDeclineScope
Id: decline-scope
Title: "SGHI Decline Scope"
Description: "What the patient is refusing. The sheet prints 'care/procedure/assessment' as one slashed phrase; in practice a patient refuses one of the three or all of them, so the item repeats over this list rather than offering the phrase as a single answer."
* ^status = #active
* ^experimental = false
* include SGHIAnswerCodeSystem#decline-care "Care in the ward"
* include SGHIAnswerCodeSystem#decline-procedure "A procedure"
* include SGHIAnswerCodeSystem#decline-assessment "An assessment or investigation"

ValueSet: SGHIDeclineDestination
Id: decline-destination
Title: "SGHI Decline Destination"
Description: "Where the patient is going after declining care. Recorded because a patient leaving for another hospital and a patient going home carry different follow-up obligations."
* ^status = #active
* ^experimental = false
* include SGHIAnswerCodeSystem#decline-destination-home "Home"
* include SGHIAnswerCodeSystem#decline-destination-other-hospital "Hospital of choice"

ValueSet: SGHIVentilatorMode
Id: ventilator-mode
Title: "SGHI Ventilator Mode"
Description: "The ventilator modes printed on the ICU observation chart. Local rather than SNOMED: the chart uses the unit’s own shorthand and a guessed SNOMED code for a ventilation mode is worse than a local one."
* ^status = #active
* ^experimental = false
* include SGHIAnswerCodeSystem#vent-mode-cmv
* include SGHIAnswerCodeSystem#vent-mode-simv
* include SGHIAnswerCodeSystem#vent-mode-cpap
* include SGHIAnswerCodeSystem#vent-mode-psv
* include SGHIAnswerCodeSystem#vent-mode-spontaneous

ValueSet: SGHIPatientPosition
Id: patient-position
Title: "SGHI Patient Position"
Description: "How a ventilated patient is positioned, recorded on the ICU observation chart because turning is what prevents pressure injury and the chart is where it is evidenced."
* ^status = #active
* ^experimental = false
* include SGHIAnswerCodeSystem#position-supine
* include SGHIAnswerCodeSystem#position-left-lateral
* include SGHIAnswerCodeSystem#position-right-lateral
* include SGHIAnswerCodeSystem#position-prone
* include SGHIAnswerCodeSystem#position-semi-fowler

ValueSet: SGHIHeadInjuryConsciousness
Id: head-injury-consciousness
Title: "SGHI Head Injury Conscious Level"
Description: "The four-point conscious level printed on the head injury and craniotomy chart. Deliberately not the Glasgow Coma Scale and deliberately not AVPU: this chart prints its own four levels with its own wording, and mapping them onto either scale would invent a precision the chart does not have."
* ^status = #active
* ^experimental = false
* include SGHIAnswerCodeSystem#conscious-fully
* include SGHIAnswerCodeSystem#conscious-confused
* include SGHIAnswerCodeSystem#conscious-semi
* include SGHIAnswerCodeSystem#conscious-coma

ValueSet: SGHIPresenceAbsence
Id: presence-absence
Title: "SGHI Present / Absent"
Description: "Whether a finding was observed. Separate from a plain yes/no because the head injury chart prints \"present\" and \"absent\" beside the fits row, and a finding that was looked for and not seen is a different statement from an unanswered question."
* ^status = #active
* ^experimental = false
* include SGHIAnswerCodeSystem#finding-present
* include SGHIAnswerCodeSystem#finding-absent

ValueSet: SGHIInjurySite
Id: injury-site
Title: "SGHI Other Injury Site"
Description: "The other-injury sites the head injury chart asks the examiner to tick. Repeating, because a patient can have more than one."
* ^status = #active
* ^experimental = false
* include SGHIAnswerCodeSystem#injury-chest
* include SGHIAnswerCodeSystem#injury-abdomen
* include SGHIAnswerCodeSystem#injury-arm
* include SGHIAnswerCodeSystem#injury-leg
* include SGHIAnswerCodeSystem#injury-neck
* include SGHIAnswerCodeSystem#injury-spine

ValueSet: SGHIFeedType
Id: feed-type
Title: "SGHI Feed Type"
Description: "What a newborn is being fed, from the feed prescription on the newborn comprehensive chart."
* ^status = #active
* ^experimental = false
* include SGHIAnswerCodeSystem#feed-breast
* include SGHIAnswerCodeSystem#feed-ebm
* include SGHIAnswerCodeSystem#feed-term-formula
* include SGHIAnswerCodeSystem#feed-preterm-formula

ValueSet: SGHIFeedRoute
Id: feed-route
Title: "SGHI Feed Route"
Description: "How a newborn feed is given. Cup, nasogastric or orogastric — the three the chart prints."
* ^status = #active
* ^experimental = false
* include SGHIAnswerCodeSystem#route-cup
* include SGHIAnswerCodeSystem#route-ngt
* include SGHIAnswerCodeSystem#route-ogt

ValueSet: SGHINewbornCategory
Id: newborn-category
Title: "SGHI Newborn Acuity Category"
Description: "The three acuity categories printed at the foot of the newborn comprehensive chart. They drive how often the baby is observed, which is why they are recorded per shift rather than once."
* ^status = #active
* ^experimental = false
* include SGHIAnswerCodeSystem#newborn-category-a
* include SGHIAnswerCodeSystem#newborn-category-b
* include SGHIAnswerCodeSystem#newborn-category-c

ValueSet: SGHIOxygenRoute
Id: oxygen-route
Title: "SGHI Oxygen Route"
Description: "How oxygen was given during newborn resuscitation, from the three the handover form prints."
* ^status = #active
* ^experimental = false
* include SGHIAnswerCodeSystem#oxygen-prongs
* include SGHIAnswerCodeSystem#oxygen-non-rebreather
* include SGHIAnswerCodeSystem#oxygen-bub

ValueSet: SGHIARTProphylaxis
Id: art-prophylaxis
Title: "SGHI Infant ARV Prophylaxis"
Description: "The infant ARV prophylaxis given for PMTCT, as the newborn handover form prints it."
* ^status = #active
* ^experimental = false
* include SGHIAnswerCodeSystem#art-azt
* include SGHIAnswerCodeSystem#art-nvp

ValueSet: SGHILabUrgency
Id: lab-urgency
Title: "SGHI Laboratory Request Urgency"
Description: "The three degrees of urgency the medical lab requisition and the coagulation profile form print. Separate from the blood requisition’s set, whose third option is worded \"elective\" rather than \"routine\" — the same idea, but these are the words on these forms."
* ^status = #active
* ^experimental = false
* include SGHIAnswerCodeSystem#lab-urgency-desperate
* include SGHIAnswerCodeSystem#lab-urgency-urgent
* include SGHIAnswerCodeSystem#lab-urgency-routine

ValueSet: SGHIServiceRating
Id: service-rating
Title: "SGHI Service Rating"
Description: "The four-point rating on the patient satisfaction questionnaire."
* ^status = #active
* ^experimental = false
* include SGHIAnswerCodeSystem#rating-poor
* include SGHIAnswerCodeSystem#rating-fair
* include SGHIAnswerCodeSystem#rating-good
* include SGHIAnswerCodeSystem#rating-excellent

ValueSet: SGHIResuscitationDecision
Id: resuscitation-decision
Title: "SGHI Resuscitation Decision"
Description: "The decision recorded at a patient, family and doctors’ conference. Recorded explicitly in both directions: a conference that agreed resuscitation should be attempted is a different record from one where nobody asked."
* ^status = #active
* ^experimental = false
* include SGHIAnswerCodeSystem#resus-dnr
* include SGHIAnswerCodeSystem#resus-full

ValueSet: SGHIBodyPartDisposition
Id: body-part-disposition
Title: "SGHI Body Part Disposition"
Description: "What is to happen to a body part removed at surgery, from the two options the disposal consent form prints."
* ^status = #active
* ^experimental = false
* include SGHIAnswerCodeSystem#body-part-home
* include SGHIAnswerCodeSystem#body-part-hospital

ValueSet: SGHIMortuarySource
Id: mortuary-source
Title: "SGHI Mortuary Source"
Description: "Where a body received into the mortuary came from. This is the field that decides whether the deceased was a patient of this hospital at all, which is why it is coded rather than left as free text."
* ^status = #active
* ^experimental = false
* include SGHIAnswerCodeSystem#mortuary-from-ward
* include SGHIAnswerCodeSystem#mortuary-from-casualty
* include SGHIAnswerCodeSystem#mortuary-from-home
* include SGHIAnswerCodeSystem#mortuary-from-other-facility
* include SGHIAnswerCodeSystem#mortuary-police-case

ValueSet: SGHIDressingGrade
Id: dressing-grade
Title: "SGHI Surgical Dressing Grade"
Description: "The three grading letters printed over the columns of the surgical dressing sheet. The sheet never expands them, so the codes carry the letters as printed rather than an invented expansion -- guessing at what B, M and S stand for and being wrong would be worse than recording the letter the nurse ticked."
* ^status = #active
* ^experimental = false
* include SGHIAnswerCodeSystem#dressing-grade-b
* include SGHIAnswerCodeSystem#dressing-grade-m
* include SGHIAnswerCodeSystem#dressing-grade-s

ValueSet: SGHIAdmittedFrom
Id: admitted-from
Title: "SGHI Admitted From"
Description: "Where a patient was admitted from, from the two the admission form prints."
* ^status = #active
* ^experimental = false
* include SGHIAnswerCodeSystem#admitted-from-opd
* include SGHIAnswerCodeSystem#admitted-from-casualty

ValueSet: SGHIArrivalModeWard
Id: arrival-mode-ward
Title: "SGHI Mode of Arrival (ward)"
Description: "How the patient physically arrived on the ward. The admission form prints ambulance, wheelchair and cart; walked is added because a patient who walked in is a different patient and the paper records that by leaving all three boxes empty, which is indistinguishable from nobody asking."
* ^status = #active
* ^experimental = false
* include SGHIAnswerCodeSystem#arrival-walked
* include SGHIAnswerCodeSystem#arrival-ambulance
* include SGHIAnswerCodeSystem#arrival-wheelchair
* include SGHIAnswerCodeSystem#arrival-cart

ValueSet: SGHIChronicIllness
Id: chronic-illness
Title: "SGHI Chronic Illness"
Description: "The twelve chronic illnesses the admission form prints as a tick list with a date beside each. Local rather than SNOMED because the list is the hospital\u2019s own shorthand -- one column is headed CD4 and means HIV -- and because a tick against a printed word is not a diagnosis, it is a reported history."
* ^status = #active
* ^experimental = false
* include SGHIAnswerCodeSystem#chronic-tb
* include SGHIAnswerCodeSystem#chronic-hiv
* include SGHIAnswerCodeSystem#chronic-arthritis
* include SGHIAnswerCodeSystem#chronic-hypertension
* include SGHIAnswerCodeSystem#chronic-pneumonia
* include SGHIAnswerCodeSystem#chronic-malaria
* include SGHIAnswerCodeSystem#chronic-diabetes
* include SGHIAnswerCodeSystem#chronic-skin
* include SGHIAnswerCodeSystem#chronic-cardiac
* include SGHIAnswerCodeSystem#chronic-renal
* include SGHIAnswerCodeSystem#chronic-psychiatric
* include SGHIAnswerCodeSystem#chronic-carcinoma

ValueSet: SGHIFetalPresentation
Id: fetal-presentation
Title: "SGHI Fetal Presentation"
Description: "What is presenting at the pelvic brim. The antenatal vital signs sheet takes this as free text; coding it makes a change from cephalic to breech across a series of rows visible as a change rather than as two different strings."
* ^status = #active
* ^experimental = false
* include SGHIAnswerCodeSystem#presentation-cephalic
* include SGHIAnswerCodeSystem#presentation-breech
* include SGHIAnswerCodeSystem#presentation-shoulder
* include SGHIAnswerCodeSystem#presentation-face
* include SGHIAnswerCodeSystem#presentation-brow

ValueSet: SGHIBowels
Id: bowels
Title: "SGHI Bowels"
Description: "Whether the bowels have opened, from the column the antenatal vital signs sheet prints."
* ^status = #active
* ^experimental = false
* include SGHIAnswerCodeSystem#bowels-opened
* include SGHIAnswerCodeSystem#bowels-not-opened

ValueSet: SGHIMilkType
Id: milk-type
Title: "SGHI Milk Type"
Description: "What a baby was fed on the milk feeding chart. The chart prints two columns, breast milk and a formula named by brand."
* ^status = #active
* ^experimental = false
* include SGHIAnswerCodeSystem#milk-breast
* include SGHIAnswerCodeSystem#milk-nan

ValueSet: SGHIIrrigationReturnColour
Id: irrigation-return-colour
Title: "SGHI Irrigation Return Colour"
Description: "The colour of the return on the surgical continuous irrigation record. Clots are listed separately from blood staining because clots are what obstruct a catheter and call a surgeon, and a colour scale that cannot say \"clots\" loses the one observation the chart exists to catch."
* ^status = #active
* ^experimental = false
* include SGHIAnswerCodeSystem#urine-clear
* include SGHIAnswerCodeSystem#urine-straw
* include SGHIAnswerCodeSystem#urine-rose
* include SGHIAnswerCodeSystem#urine-blood-stained
* include SGHIAnswerCodeSystem#urine-clots
