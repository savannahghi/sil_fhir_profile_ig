Profile: SGHIConsent
Parent:  Consent
Title: "SGHI Consent"
Description: "An interaction between a patient and the healthcare provider."
* identifier 1..*
  * type from $identifier-type (required)
  * use from $identifier-use (required)
  * value 1..1
* status 1..1
* category 1..*
* subject 1..1
* subject only Reference(SGHIPatient)
* date 1..1
* grantee 1..1
* grantee only Reference(SGHIOrganization)
* grantor 1..1
* grantor only Reference(SGHIOrganization)
* provision 0..*
  * actor 0..*
    * reference only Reference(SGHIPatient or SGHIOrganization)