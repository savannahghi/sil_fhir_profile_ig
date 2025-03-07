Profile: SGHIEpisodeOfCare
Parent:  EpisodeOfCare
Id: sghi-episodeofcare
Title: "SGHI EpisodeOfCare"
Description: "An association between a patient and an organization / healthcare provider(s) during which time encounters may occur. The managing organization assumes a level of responsibility for the patient during this time."

* identifier 1..*
  * insert CommonIdentifierRules

* statusHistory 1..

* period 1..1
* patient 1..1

* patient only SGHIReference
* patient only Reference(SGHIPatient)

* referralRequest only SGHIReference
* referralRequest only Reference(SGHIServiceRequest)

* managingOrganization 1..1
* managingOrganization only SGHIReference
* managingOrganization only Reference(SGHIOrganization)
