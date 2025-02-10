Profile: SGHILocation
Parent: Location
Id: sghi-fhir-location
Title: "SGHI Location"
Description: "SGHI profile for location"

* meta.profile = "https://fhir.slade360.co.ke/StructureDefinition/sghi-fhir-location" (exactly)

* identifier 1..*
  * insert CommonIdentifierRules
  * assigner 1..1
  * assigner only Reference(SGHIOrganization)
* status 1..1 MS
* operationalStatus 1..1 MS
* operationalStatus from SGHIBedStatus
* name 1..1 MS
* description 1..1 MS
* mode 1..1 MS
* contact 1..1 MS
  * telecom 1..* MS
    * system 1..1 MS
    * system from SGHIContactSystem (required)
    * value 1..1 MS
    * use 1..1 MS
    * use from SGHIContactPointUse (required)
* form 1..1 MS
* form from SGHILocationForm (required)
* managingOrganization 1..1 MS
* managingOrganization only Reference(SGHIOrganization)
* hoursOfOperation 1..1 MS