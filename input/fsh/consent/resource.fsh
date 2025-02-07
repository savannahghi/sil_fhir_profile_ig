Profile: SGHIConsent
Parent:  Consent
Id: sghi-consent
Title: "SGHI Consent"
Description: "A record of a healthcare consumer’s choices or choices made on their behalf by a third party, which permits or denies identified recipient(s) or recipient role(s) to perform one or more actions within a given policy context, for specific purposes and periods of time."

* meta.profile = "https://fhir.slade360.co.ke/StructureDefinition/sghi-consent" (exactly)

* identifier 1..*
  * insert CommonIdentifierRules
* status 1..1
* category 1..*
* subject 1..1
* subject only Reference(SGHIPatient)
* date 1..1
* grantee 1..1
* grantor 1..1
* controller 1..1
* controller only Reference(SGHIOrganization or SGHIPatient)
* manager 1..*
* verification 1..*
  * verifiedWith 1..1
  * verifiedWith only Reference(SGHIPatient)
  * verifiedBy 1..1
  * verifiedBy only Reference(SGHIOrganization)
  * verificationDate 1..1
* decision 1..1
* provision 0..*
  * actor 0..*
    * reference only Reference(SGHIPatient or SGHIOrganization)