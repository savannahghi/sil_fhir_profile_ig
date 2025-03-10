Profile: SGHILocation
Parent: Location
Id: sghi-fhir-location
Title: "SGHI Location"
Description: "SGHI profile for location"

* identifier 1..*
  * insert CommonIdentifierRules
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
* managingOrganization only SGHIReference
* managingOrganization only Reference(SGHIOrganization)

* hoursOfOperation 1..1 MS

* partOf only SGHIReference
* partOf only Reference(SGHILocation)

* contact.organization only SGHIReference
* contact.organization only Reference(SGHIOrganization)

* contact.telecom only SGHIContactPoint