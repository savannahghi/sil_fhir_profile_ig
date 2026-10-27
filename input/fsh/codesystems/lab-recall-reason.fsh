// ─────────────────────────────────────────────────────────────────────────────
// Why a laboratory result that had already been released was recalled.
//
// A released result has reached the patient's record and, where the facility
// sends them, the patient. Taking it back is therefore an event that has to
// say why, and the reason has to mean the same thing to every service that
// reads it -- which is what a code list buys over a free-text box or an enum
// copied into one backend.
// ─────────────────────────────────────────────────────────────────────────────

CodeSystem: SGHILabRecallReasonCodeSystem
Id: lab-recall-reason-codesystem
Title: "SGHI Lab Recall Reason Code System"
Description: "Why a released laboratory result was recalled for correction."
* ^status = #active
* ^experimental = false
* ^content = #complete
* ^caseSensitive = true
* #wrong-value "Wrong value" "A reported value is wrong."
* #wrong-specimen "Wrong specimen" "The result belongs to another specimen."
* #transcription-error "Transcription error" "The value was transcribed wrongly."
* #other "Other" "A reason this list does not cover; the recall carries a note saying what."

ValueSet: SGHILabRecallReasons
Id: lab-recall-reasons
Title: "SGHI Lab Recall Reasons"
Description: "The reasons a released laboratory result may be recalled."
* ^status = #active
* include codes from system SGHILabRecallReasonCodeSystem
