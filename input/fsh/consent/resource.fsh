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
* category only SGHICodeableConcept

* subject 1..1
* subject only SGHIReference
* subject only Reference(SGHIPatient)

* date 1..1

* grantee 1..1
* grantee only SGHIReference
* grantee only Reference(SGHIPatient or SGHIOrganization)

* grantor 1..1
* grantor only SGHIReference
* grantor only Reference(SGHIOrganization or SGHIPatient)

* controller 1..1
* controller only SGHIReference
* controller only Reference(SGHIOrganization or SGHIPatient)

* manager 1..*
* manager only SGHIReference
* manager only Reference(SGHIOrganization or SGHIPatient)

* verification 1..*
  * verifiedWith 1..1
  * verifiedWith only SGHIReference
  * verifiedWith only Reference(SGHIPatient)
  * verifiedBy 1..1
  * verifiedBy only SGHIReference
  * verifiedBy only Reference(SGHIOrganization)
  * verificationDate 1..1

* decision 1..1
* provision 0..*
  * actor 0..*
    * reference only SGHIReference
    * reference only Reference(SGHIPatient or SGHIOrganization)

* sourceAttachment MS
* sourceAttachment only SGHIAttachment

* sourceReference only SGHIReference
* sourceReference only Reference(SGHIConsent)


Profile: SGHIAttachment
Parent: Attachment
Id: sghi-Attachment
Title: "SGHI Attachment"
Description: "A custom document used for capturing the source of consent"
* contentType 1..1
* contentType = #application/json
* url 1..1
* creation 1..1