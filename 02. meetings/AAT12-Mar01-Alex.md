# Meeting Title: Performance tuning - Alex 
Meeting on   : 01-Mar-21  

## Key points & Prep:
1. Business users accessing ERP database 
2. Use of passive site for reporting
3. DB Links used to update transactions
4. ETL jobs impacting the performance

## Meeting Notes

### Business directly accessing ERP Prod DB for running queries. Review this and work towards reinstating the right DB Access Control policies urgently.
    -i- Only DBA has access to the APPS (owner) schema. Password is changed quarterly. 
    -i- APPS_SELECT schema is used by IT staff with permission from security team.
    -d- Carried out an exercise from Feb-9 to log access. 13 IT people in IT and 3 in buisness (EKAS, dnata and GS)
    -i- During investigation found there is another schema xxeg_debug_user which is used by BSG
    -i- This schema only has selected privilege for basic investigation and has a time out to stop long queries.
    -i- The users cannot do any data manipulation or execute andy procedures
    -p- DBA team can check all such schemas, the permissions granted and usage and change passwords in case of abuse 

### Business Intelligence Reporting on PROD DB instead of a separate MIS data store. The situation should be reviewed and remediated urgently.
    -i- Orbit architecture does not directly support using the passive site
    -i- Passive sites are read-only but Orbit requires a schema to write reports parameters, etc. 
    -i- Vendor was unsure if this will work, we were close to the promised date of delivery so it was agreed with business that we will take up work after the go-live and reports migration is streamlined
    -d- DBA team made an attempt to use passive site but POC was not succssful. 
    -p- The discovery exercise needs more time as this is not a straight forward change. 
    -p- DBA team will work on it again along with the vendor to implement passive site by June-21
    -i- MIS DB for ERP is a major undertaking and a discovery will be launched to identify what all is created 

### DB Links for synchronous real-time transactions should be discontinued. We must follow the architectural guidelines here.
    Architectural Recommendations:
    -i- Do not create new DB links and plan to exchange data using other technologies that encourage loose coupling
    -i- Do not use DB links to update data on the target database
    -i- Do not use DB links to exchange large data volumes e.g. more than 100 records

    What about existing DB Links
    -d- During the Virtualization exercise, DB links used in ERP were identified
    -d- Analysis of the DB links carried out. ???? How many links and how applications ??? 
    -p- Source application owners to validate if the architecture recommendations are not violated
    -p- In case of violation, a corrective action plan should be executed as part of the PI

### ETL jobs being executed on prod DB. This should not be the case and we should use standby Database for data extraction and reporting.
    -a- Number of ETL jobs being executed are being identified
    -p- In the first phase, ETL jobs should be run during off office hours. There might be exceptions of low volume. 
    -p- Also the read only ETL jobs should point to the passive site
    -p- In 2nd phase, read-write ETL jobs will be fine-tuned to run optimally on primary site 

### Actions!

