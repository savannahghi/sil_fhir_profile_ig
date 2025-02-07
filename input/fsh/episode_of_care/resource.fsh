Profile: SGHIEpisodeOfCare
Parent:  EpisodeOfCare
Id: sghi-episode-of-care
Title: "SGHI EpisodeOfCare"
Description: "An EpisodeOfCare profile for care coordination in SGHI's system."

* meta.profile = "https://fhir.slade360.co.ke/StructureDefinition/sghi-episode-of-care" (exactly)

* identifier 1..*
  * insert CommonIdentifierRules
* reason 1..*
  * value only CodeableReference(SGHICondition) // This could be also an Observation to be added in the future
* diagnosis 1..*
  * condition 1..1
  * condition only CodeableReference(SGHICondition)
* statusHistory 1..
* period 1..1
* patient 1..1
* patient only Reference(SGHIPatient)
* referralRequest only Reference(SGHIServiceRequest)
* managingOrganization 1..1
* managingOrganization only Reference(SGHIOrganization)
