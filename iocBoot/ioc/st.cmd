#!../../bin/linux-x86_64/ioc

## You may have to change ioc to something else
## everywhere it appears in this file

epicsEnvSet ("STREAM_PROTOCOL_PATH", "/home/basil/Projects/HVPS/protocol")


## Register all support components
dbLoadDatabase ("dbd/ioc.dbd",0,0)
ioc_registerRecordDeviceDriver pdbbase

dbLoadRecords("db/HVPS.db")
drvAsynIPPortConfigure ("HVPS3K", "10.2.0.59:5000",0,0,0)

iocInit()

## Start any sequence programs
#seq sncxxx,"user=basilHost"

