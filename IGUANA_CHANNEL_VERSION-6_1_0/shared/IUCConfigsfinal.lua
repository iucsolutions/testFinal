local groupName = 'final'
local envVariable = 'serverType'..groupName
local serverType = os.getenv(envVariable)

local iucConf = {}

iucConf.dev = {
   -- Configurations for patient csv File
   ['patientCsvPath'] = '/home/centos/iuc/final/',
   ['patientCsvFile'] = 'PatientData.txt',
	
   -- Configurations for patient DB file
   ['patientDbPath'] = '/home/centos/iuc/final/',
   ['patientDbFile'] = 'PatientData.sqlite'
}


iucConf.prod = {
   -- Configurations for patient csv File
   ['patientCsvPath'] = '/home/centos/iuc/prod/final/',
   ['patientCsvFile'] = 'PatientData.txt',
	
   -- Configurations for patient DB file
   ['patientDbPath'] = '/home/centos/iuc/prod/final/',
   ['patientDbFile'] = 'PatientData.sqlite'
}


return iucConf[serverType]
