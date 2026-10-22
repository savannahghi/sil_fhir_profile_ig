Extension: FlowsheetGrouping
Id: flowsheet-grouping
Title: "Flowsheet grouping"
Description: "How wide one column is. A request may override it."
Context: ObservationDefinition
* value[x] only code
* valueCode from SGHIFlowsheetGroupings (required)

Extension: FlowsheetScope
Id: flowsheet-scope
Title: "Flowsheet scope"
Description: "Whose readings the flowsheet shows. Defaults to one encounter."
Context: ObservationDefinition
* value[x] only code
* valueCode from SGHIFlowsheetScopes (required)

Extension: FlowsheetDefaultWindow
Id: flowsheet-default-window
Title: "Flowsheet default window"
Description: "How far back the grid reads when a request names no window."
Context: ObservationDefinition
* value[x] only Quantity

Extension: FlowsheetMaxWindow
Id: flowsheet-max-window
Title: "Flowsheet longest window"
Description: "The longest window one request may read."
Context: ObservationDefinition
* value[x] only Quantity

Extension: FlowsheetEntryQuestionnaire
Id: flowsheet-entry-questionnaire
Title: "Flowsheet entry form"
Description: "The form a screen opens to add a column."
Context: ObservationDefinition
* value[x] only canonical
* valueCanonical only Canonical(Questionnaire)

Extension: FlowsheetCaseQuestionnaire
Id: flowsheet-case-questionnaire
Title: "Flowsheet case form"
Description: "The form filled once per case, whose answers are the facts above the grid rather than a column: the labour details on the Labour Care Guide, the pre-anaesthetic assessment on the anaesthesia chart. Absent on a chart that has no such form."
Context: ObservationDefinition
* value[x] only canonical
* valueCanonical only Canonical(Questionnaire)

Extension: FlowsheetAliases
Id: flowsheet-aliases
Title: "Flowsheet aliases"
Description: "The ConceptMap whose equivalent and narrower codes also fill a row, such as heart rate by pulse oximetry under pulse."
Context: ObservationDefinition
* value[x] only canonical
* valueCanonical only Canonical(ConceptMap)

Extension: FlowsheetStage
Id: flowsheet-stage
Title: "Flowsheet stage"
Description: "One run of columns that counts from an event in the record rather than the clock, as a partograph does. A panel with stages ignores its grouping."
Context: ObservationDefinition
* extension contains
    key 1..1 and
    title 0..1 and
    start-row 1..1 and
    start-at 0..1 and
    slot 1..1 and
    hours 0..1
* extension[key].value[x] only id
* extension[key] ^short = "The stage's key in the grid API"
* extension[title].value[x] only string
* extension[start-row].value[x] only id
* extension[start-row] ^short = "The row whose first reading opens the stage"
* extension[start-at].value[x] only decimal
* extension[start-at] ^short = "The lowest value of the start row that counts"
* extension[slot].value[x] only Quantity
* extension[slot] ^short = "How wide one column is"
* extension[hours].value[x] only integer
* extension[hours] ^short = "How many hours the paper chart prints for the stage"

Extension: FlowsheetHeader
Id: flowsheet-header
Title: "Flowsheet header section"
Description: "A section whose rows are recorded once, such as parity, and shown above the grid rather than in columns."
Context: ObservationDefinition
* value[x] only boolean

Extension: FlowsheetRowKey
Id: flowsheet-row-key
Title: "Flowsheet row key"
Description: "The key a row or section is addressed by in the grid API. Defaults to the definition's name."
Context: ObservationDefinition
* value[x] only id

Extension: FlowsheetDecimals
Id: flowsheet-decimals
Title: "Flowsheet decimals"
Description: "How many decimal places the row shows."
Context: ObservationDefinition
* value[x] only integer

Extension: FlowsheetAggregate
Id: flowsheet-aggregate
Title: "Flowsheet aggregate"
Description: "Which value a cell shows when several readings fall in it. Defaults to the latest."
Context: ObservationDefinition
* value[x] only code
* valueCode from SGHIFlowsheetAggregates (required)

Extension: FlowsheetAlert
Id: flowsheet-alert
Title: "Flowsheet alert"
Description: "The row's alert column as the paper chart prints it, shown beside the row as a label. Which readings alert is decided by the rule engine when a reading is saved, and carried on the Observation's interpretation."
Context: ObservationDefinition
* value[x] only string

Extension: FlowsheetPlot
Id: flowsheet-plot
Title: "Flowsheet plot range"
Description: "The range the paper chart plots the row over, for a screen that draws it as a line."
Context: ObservationDefinition
* value[x] only Range

Extension: FlowsheetCellWidth
Id: flowsheet-cell-width
Title: "Flowsheet cell width"
Description: "How long one cell of the row lasts in a stage, where it is wider than the stage's column."
Context: ObservationDefinition
* extension contains
    stage 1..1 and
    width 1..1
* extension[stage].value[x] only id
* extension[width].value[x] only Quantity

Extension: FlowsheetPrefill
Id: flowsheet-prefill
Title: "Flowsheet prefill"
Description: "What the page a chart is drawn on fills a form's question with from that chart: \"latest:<row>\" for the row's latest reading in the window, \"total:<row>\" for its total. The person filling the form can still correct it, as at handover, where the last vitals and the totals come from the anaesthesia chart."
Context: Questionnaire.item
* value[x] only string
