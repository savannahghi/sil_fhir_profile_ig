Instance: ExampleSGHILocation
InstanceOf: SGHILocation
Description: "An example of an Location resource conforming to the SGHI Location profile."

* identifier[0]
  * use = #official
  * type.coding[0] = $identifier-type-cs#JHN "Jurisdictional health number"
  * value = "JHN123456789"
  * system = $identifier-type-cs
  * assigner = Reference(ExampleSGHIOrganization)
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