Profile: SGHIDocumentReference
Parent: DocumentReference
Id: sghi-documentreference
Title: "SGHI DocumentReference Profile."
Description: "A reference to a document of any kind for any purpose."

* identifier 1..*
  * insert CommonIdentifierRules

* basedOn only SGHIReference
* basedOn only Reference(SGHIAppointment or SGHIMedicationRequest or SGHIServiceRequest)
* basedOn 1..

* docStatus 1..1
* modality only SGHICodeableConcept

* type only SGHICodeableConcept
* type 1..1
* type from http://loinc.org/vs (required)

* category only SGHICodeableConcept

* subject 1..1
* subject only SGHIReference
* subject only Reference(SGHIPatient)

* context 1..*
* context only SGHIReference
* context only Reference(SGHIAppointment or SGHIEncounter or SGHIEpisodeOfCare)

* event only SGHICodeableReference

* bodySite only SGHICodeableReference
* bodySite from http://loinc.org/vs (required)


* facilityType only SGHICodeableConcept
* practiceSetting only SGHICodeableConcept

* date 1..1

* author 1..1
* author only SGHIReference
* author only Reference(SGHIOrganization or SGHIPractitionerRole or SGHIPractitioner or SGHIPatient)

* attester 0..
  * mode only SGHICodeableConcept
  * party only SGHIReference
  * party only Reference(SGHIPatient or SGHIOrganization or SGHIPractitioner or SGHIPractitionerRole)

* custodian 1..1
* custodian only SGHIReference
* custodian only Reference(SGHIOrganization)

* relatesTo
  * code only SGHICodeableConcept
  * target only SGHIReference
  * target only Reference(SGHIDocumentReference)

* securityLabel only SGHICodeableConcept