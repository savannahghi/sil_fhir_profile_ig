Instance: ExampleSGHILocation
InstanceOf: SGHILocation
Description: "An example of an Location resource conforming to the SGHI Location profile."
* identifier[0].use = #official
* identifier[0].type = #JHN "Jurisdictional health number"
* identifier[0].value = "JHN123456789"
* identifier[0].system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[0].assigner = Reference(ExampleSGHIOrganization)
* status = #active
* operationalStatus = #ISOLATED "Isolated"
* name = "SGHI Location"
* description = "SGHI Location description"
* mode = #kind "Kind"
* contact[0].telecom.system = #phone
* contact[0].telecom.value = "+254790360360"
* contact[0].telecom.use = #work
* form = #wi "Wing"
* managingOrganization = Reference(ExampleSGHIOrganization)
* hoursOfOperation[0].availableTime.allDay = true