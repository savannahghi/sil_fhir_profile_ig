RuleSet: FlowsheetRow(key, label)
* status = #active
* name = "{key}"
* preferredReportName = "{label}"
* extension[FlowsheetRowKey].valueId = "{key}"

RuleSet: FlowsheetSection(key, title)
* status = #active
* name = "{key}"
* title = "{title}"
* extension[FlowsheetRowKey].valueId = "{key}"

RuleSet: AbsoluteRange(low, high, unit)
* qualifiedValue[+].rangeCategory = #absolute
* qualifiedValue[=].range.low = {low} '{unit}'
* qualifiedValue[=].range.high = {high} '{unit}'

RuleSet: CellWidth(stage, minutes)
* extension[FlowsheetCellWidth][+].extension[stage].valueId = "{stage}"
* extension[FlowsheetCellWidth][=].extension[width].valueQuantity = {minutes} 'min'
