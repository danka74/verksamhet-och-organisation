Instance: Organization1
InstanceOf: SENDIOrganization
Usage: #example
Title: "Region Östergötland"
Description: "Region Östergötland, example 1"
* name = "Region Östergötland"
* identifier[organizationIdentifier].value = "232100-0040"
* extension[organizationActive].valueBoolean = true
* extension[period].valuePeriod.start = 1970-01-01
* extension[legalForm].valueCoding = #84
* extension[ownershipType].valueCoding = #30
* alias[+] = "RÖ"

Instance: Business1
InstanceOf: SENDIBusiness
Usage: #inline
* providedBy = Reference(OrganizationalUnit1)
* category[+].coding[SENDIBusinessType].system = $SCTSE
* category[=].coding[SENDIBusinessType].code = #394579002
* category[+].coding[HSABusinessType].system = $HSAB
* category[=].coding[HSABusinessType].code = #1116

Instance: Business2
InstanceOf: SENDIBusiness
Usage: #inline
* providedBy = Reference(OrganizationalUnit2)
* category[+].coding[SENDIBusinessType].system = $SCTSE
* category[=].coding[SENDIBusinessType].code = #394579002
* category[+].coding[HSABusinessType].system = $HSAB
* category[=].coding[HSABusinessType].code = #1116
* location = Reference(Location2)

Instance: OrganizationalUnit1
InstanceOf: SENDIOrganizationalUnit
Usage: #example
Title: "Kardiologiska kliniken US, Linköping"
Description: "Kardiologiska kliniken US, Linköping, example 1"
* contained[+] = Business1
* name = "Kardiologiska kliniken US, Linköping"
* identifier[+].system = "urn:oid:1.2.752.29.4.19"
* identifier[=].value = "SE2321000040-xxxxxx"
* extension[organizationActive].valueBoolean = true
* extension[period].valuePeriod.start = 1970-01-01
* telecom[+].system = #phone
* telecom[=].value = "010-1030000"
* address[+].type = #physical
* address[=].text = "Universitetssjukhuset, Linköping"
* address[+].type = #postal
* address[=].line[+] = "Kardiologiska kliniken"
* address[=].line[+] = "Universitetssjukhuset"
* address[=].postalCode = "58185"
* address[=].city = "Linköping"
* partOf = Reference(Organization1)

Instance: OrganizationalUnit2
InstanceOf: SENDIOrganizationalUnit
Usage: #example
Title: "Avdelning C117 Hjärtmedicin, Kardiologiska kliniken US, Linköping"
Description: "Avdelning C117 Hjärtmedicin, Kardiologiska kliniken US, Linköping, example 1"
* contained[+] = Business2
* name = "Avdelning C117 Hjärtmedicin, Kardiologiska kliniken US, Linköping"
* identifier[+].system = "urn:oid:1.2.752.29.4.19"
* identifier[=].value = "SE2321000040-yyyyyyy"
* extension[organizationActive].valueBoolean = true
* extension[period].valuePeriod.start = 1970-01-01
* telecom[+].system = #phone
* telecom[=].value = "010-1031107"
* address[+].type = #physical
* address[=].text = "Universitetssjukhuset, Linköping"
* address[+].type = #postal
* address[=].line[+] = "Kardiologiska kliniken"
* address[=].line[+] = "Universitetssjukhuset"
* address[=].postalCode = "58185"
* address[=].city = "Linköping"
* partOf = Reference(OrganizationalUnit1)

Instance: Location1
InstanceOf: SENDILocation
Usage: #example
Title: "US, Linköping"
Description: "US, Linköping, exempel 1"
* status = #active
* name = "US, Linköping"
* managingOrganization = Reference(Organization1)
* physicalType = #si
* position.longitude = 15.6233
* position.latitude = 58.402

Instance: Location2
InstanceOf: SENDILocation
Usage: #example
Title: "Lokal för Avdelning C117 Hjärtmedicin, Kardiologiska kliniken US, Linköping"
Description: "Lokal för Avdelning C117 Hjärtmedicin, Kardiologiska kliniken US, Linköping, exempel 1"
* status = #active
* name = "Avdelning C117 Hjärtmedicin, Kardiologiska kliniken US, Linköping"
* managingOrganization = Reference(OrganizationalUnit2)
* partOf = Reference(Location1)
* physicalType = #wa


