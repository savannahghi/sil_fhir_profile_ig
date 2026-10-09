Profile: SGHIConsent
Parent:  Consent
Id: consent
Title: "SGHI Consent"
Description: "A record of a healthcare consumer’s choices or choices made on their behalf by a third party, which permits or denies identified recipient(s) or recipient role(s) to perform one or more actions within a given policy context, for specific purposes and periods of time."

* identifier 1..*
  * type from SGHIDefaultIdentifierTypes (required)
  * insert CommonIdentifierRules

* status 1..1
* category 1..*
* category only SGHICodeableConcept

* subject 1..1
* subject only SGHIReference
* subject only Reference(SGHIPatient)

* date 1..1

* grantee 1..*
* grantee only SGHIReference
* grantee only Reference(SGHIPatient or SGHIOrganization or SGHIPractitioner or SGHIPractitionerRole)

* grantor 1..1
* grantor only SGHIReference
* grantor only Reference(SGHIOrganization or SGHIPatient)

// Optional: a consent signed on a ward form names no controller or manager.
* controller 0..1
* controller only SGHIReference
* controller only Reference(SGHIOrganization or SGHIPatient)

* manager 0..*
* manager only SGHIReference
* manager only Reference(SGHIOrganization or SGHIPatient)

* verification 0..*
  * verificationType only SGHICodeableConcept
  * verifiedWith 1..1
  * verifiedWith only SGHIReference
  * verifiedWith only Reference(SGHIPatient)
  // 0..1: an interpreter's attestation is recorded without a verifier.
  * verifiedBy 0..1
  * verifiedBy only SGHIReference
  * verifiedBy only Reference(SGHIOrganization or SGHIPractitioner or SGHIPractitionerRole)
  * verificationDate 1..1

* decision 1..1
* provision 0..*
  * actor 0..*
    * reference only SGHIReference
    * reference only Reference(SGHIPatient or SGHIOrganization)
    * role only SGHICodeableConcept
  * action only SGHICodeableConcept
  // Free text allowed, LOINC extensible: some provisions (regimen, risks) have no code.
  * code from http://hl7.org/fhir/ValueSet/consent-content-code (extensible)
  * data 0..
    * reference only SGHIReference

* sourceAttachment MS
* sourceAttachment only SGHIAttachment

* sourceReference only SGHIReference
* sourceReference only Reference(SGHIConsent or SGHIQuestionnaireResponse)

* regulatoryBasis only SGHICodeableConcept

* policyBasis 0..1
  * reference only SGHIReference
  * reference only Reference(Resource)

* policyText only SGHIReference
* policyText only Reference(DocumentReference)


Profile: SGHIAttachment
Parent: Attachment
Id: attachment
Title: "SGHI Attachment"
Description: "A custom document used for capturing the source of consent"
* contentType 1..1
* contentType = #application/json
* url 1..1
* creation 1..1