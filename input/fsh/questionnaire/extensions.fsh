// A coded item whose answers are searched for, as the user types, on an API that
// is not a FHIR terminology server (the orchestrator's ICD-11 search is the first).
// The form carries where to search and which credentials to send, never their
// values: those belong to the signed-in user's session.
Extension: SGHIAnswerSearch
Id: answer-search
Title: "Answer search"
Description: """Searches an API for a coded item's answers as the user types, where the API is not a FHIR terminology server.

The renderer sends `GET <endpoint>?q=<the text typed>&limit=<page size>&offset=<start>` and expects back a JSON array of `{system, code, display}`. It shows each element's display as an option and stores the chosen element as the answer's valueCoding. With `answerConstraint` = optionsOrString, text the user types without choosing an option is stored as a valueString.

The form never carries credentials. `credentials` says which ones the renderer sends from the user's session; `session` is the signed-in user's bearer token in Authorization, with the x-active-tenant and x-variant headers, as the platform sends them to its own APIs.

The search takes precedence over expanding the item's `answerValueSet`, which names the code system the answers come from and is what a renderer that does not know this extension falls back to (R5's que-14 warns when `answerConstraint` has neither an answerValueSet nor an answerOption)."""
Context: Questionnaire.item
* extension contains
    endpoint 1..1 MS and
    credentials 1..1 MS
* extension[endpoint] ^short = "The search URL, without its query string"
* extension[endpoint].value[x] only url
* extension[credentials] ^short = "Which credentials the renderer sends from the user's session"
* extension[credentials].value[x] only code
* extension[credentials].value[x] from SGHIAnswerSearchCredentials (required)
* value[x] 0..0

CodeSystem: SGHIAnswerSearchCredentialsCodeSystem
Id: answer-search-credentials
Title: "Answer search credentials"
Description: "Which credentials a form renderer sends with an answer search."
* ^status = #active
* ^caseSensitive = true
* #session "Session" "The signed-in user's bearer token in Authorization, with the x-active-tenant and x-variant headers, as the platform sends them to its own APIs."

ValueSet: SGHIAnswerSearchCredentials
Id: answer-search-credentials
Title: "Answer search credentials"
Description: "Which credentials a form renderer sends with an answer search."
* ^status = #active
* include codes from system SGHIAnswerSearchCredentialsCodeSystem
