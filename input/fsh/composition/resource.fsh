Profile: SGHIComposition
Parent: Composition
Id: sghi-composition
Title: "SGHI Composition"
Description: "A set of healthcare-related information that is assembled together into a single logical package that provides a single coherent statement of meaning, establishes its own context and that has clinical attestation with regard to who is making the statement. 
A Composition defines the structure and narrative content necessary for a document. However, a Composition alone does not constitute a document. Rather, the Composition must be the first entry in a Bundle where Bundle.type=document, 
and any other resources referenced from Composition must be included as subsequent entries in the Bundle (for example Patient, Practitioner, Encounter, etc.)."

* identifier 1..*
  * insert CommonIdentifierRules
* type only SGHICodeableConcept
* type from http://hl7.org/fhir/ValueSet/doc-typecodes (required)

* category only SGHICodeableConcept
* category 0..*
* category from http://hl7.org/fhir/ValueSet/referenced-item-category (required)
* subject 0..1

* encounter 1..1
* encounter only SGHIReference
* encounter only Reference(SGHIEncounter)

* author 1..*
* author only SGHIReference
* author only Reference(SGHIPatient or SGHIOrganization)

* name 1..1
* section.code only SGHICodeableConcept
* section.author only SGHIReference
* section.author only Reference(SGHIPatient or SGHIOrganization)

* section.emptyReason only SGHICodeableConcept
* section.orderedBy only SGHICodeableConcept
* attester.mode only SGHICodeableConcept

* attester.party only SGHIReference
* attester.party only Reference(SGHIPatient or SGHIOrganization)
