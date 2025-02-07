RuleSet: CommonIdentifierRules
* type from $identifier-type (required)
* use from $identifier-use (required)
* value 1..1
* system 1..1

RuleSet: CommonLOINCTerminologyBindingRules
* ^short = "LOINC codes used for terminology binding for CodeableConcepts in SGHI"
* coding 1..*
  * system = "http://loinc.org"
  * system 1..1
  * code 1..1
  * display 1..1
* text 0..1