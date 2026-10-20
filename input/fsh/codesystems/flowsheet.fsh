CodeSystem: SGHIFlowsheetGroupingCodeSystem
Id: flowsheet-grouping-codesystem
Title: "SGHI Flowsheet Grouping Code System"
Description: "How wide one column of a flowsheet is."
* ^status = #active
* ^experimental = false
* ^content = #complete
* ^caseSensitive = true
* #raw "Every reading" "One column per reading, at the moment it was taken."
* #1min "One minute" "Readings taken in the same minute share a column."
* #5min "Five minutes" "Readings taken in the same five minutes share a column."
* #30min "Thirty minutes" "Readings taken in the same half hour share a column."
* #hourly "One hour" "Readings taken in the same hour share a column."
* #daily "One day" "Readings taken on the same day, in the facility's time zone, share a column."

ValueSet: SGHIFlowsheetGroupings
Id: flowsheet-groupings
Title: "SGHI Flowsheet Groupings"
Description: "The column widths a flowsheet template may choose."
* ^status = #active
* include codes from system SGHIFlowsheetGroupingCodeSystem

CodeSystem: SGHIFlowsheetScopeCodeSystem
Id: flowsheet-scope-codesystem
Title: "SGHI Flowsheet Scope Code System"
Description: "Whose readings a flowsheet shows."
* ^status = #active
* ^experimental = false
* ^content = #complete
* ^caseSensitive = true
* #encounter "One encounter" "The readings of one stay or visit. A request must name the encounter."
* #patient "One patient record" "Everything on one facility's record of the patient."
* #health-id "One person" "The person across every facility, found by Health ID."

ValueSet: SGHIFlowsheetScopes
Id: flowsheet-scopes
Title: "SGHI Flowsheet Scopes"
Description: "The scopes a flowsheet template may choose."
* ^status = #active
* include codes from system SGHIFlowsheetScopeCodeSystem

CodeSystem: SGHIFlowsheetAggregateCodeSystem
Id: flowsheet-aggregate-codesystem
Title: "SGHI Flowsheet Aggregate Code System"
Description: "Which value a cell shows when several readings fall in it."
* ^status = #active
* ^experimental = false
* ^content = #complete
* ^caseSensitive = true
* #latest "Latest" "The newest reading, with the others kept behind it."
* #sum "Sum" "The readings added up, as intake and output volumes need."

ValueSet: SGHIFlowsheetAggregates
Id: flowsheet-aggregates
Title: "SGHI Flowsheet Aggregates"
Description: "The ways a flowsheet cell may combine several readings."
* ^status = #active
* include codes from system SGHIFlowsheetAggregateCodeSystem

CodeSystem: SGHIFlowsheetContextCodeSystem
Id: flowsheet-context-codesystem
Title: "SGHI Flowsheet Context Code System"
Description: "Where a flowsheet is offered. A screen asks for the templates of one context."
* ^status = #active
* ^experimental = false
* ^content = #complete
* ^caseSensitive = true
* #inpatient "Inpatient ward"
* #critical-care "Critical care"
* #emergency "Emergency department"
* #theatre "Operating theatre"
* #antenatal "Antenatal clinic"
* #labour "Labour ward"
* #postnatal "Postnatal ward"
* #newborn "Newborn unit"
* #outpatient "Outpatient clinic"

ValueSet: SGHIFlowsheetContexts
Id: flowsheet-contexts
Title: "SGHI Flowsheet Contexts"
Description: "The contexts a flowsheet template may be offered in."
* ^status = #active
* include codes from system SGHIFlowsheetContextCodeSystem
