## Meeting Title: Performance tuning - Alex 
Meeting on   :
Related to [[AAT12 - Fin and P&L]]

## Key points & Prep:
1. Business users accessing ERP database 
2. DB Links used to update transactions
3. ETL jobs impacting the performance
4. Use of passive site for reporting

## Meeting Notes

### Business directly accessing ERP Prod DB for running queries. Review this and work towards reinstating the right DB Access Control policies urgently.
    -i- There are schemas which were created for applications to read ERP data (e.g. APPS_SELECT). Over a period of time, business users specially BSG teams got access on these. They create queries using these, fine tune the queries and then create reports based on these queries.
    -a- Most of the users exist in Finance due BSG creating reports. For Orbit, no access is eing provided if not needed. 
    -p- Disoverer schema and associated rights will be removed. This will cover Finance. Other users also have similar privileges (HR, TRIPS, etc.) will be identified and removed
    -a- DBA started logging queries to analyze access. These logs will be used to filter out applications and the users
    -a- DBA will analyze the source of the queries. Queries from users will be identified
    -p- With the help of TPO team, a communication will be sent to business that such access will be removed
    -p- With the help of DBA team access that is not required will be revoked  
    -p- The situation will be monitored by support team and support will be provided if there any issues found due to access rights. 

### DB Links for synchronous real-time transactions should be discontinued. We must follow the architectural guidelines here.

    Architectural Recommendations:
    -i- Do not create new DB links and plan to exchange data using other technologies that encourage loose coupling
    -i- Do not use DB links to update data on the target database
    -i- Do not use DB links to exchange large data volumes e.g. more than 100 records

    What about existing DB Links
    -d- During the Virtualization exercise, DB links used in ERP were identified
    -a- Analysis of the DB links in progress to find links used for updates -300+-
    -p- Source application owners to validate if the architecture recommendations are not violated
    -p- In case of violation, a corrective action plan should be executed as part of the PI

### ETL jobs being executed on prod DB. This should not be the case and we should use standby Database for data extraction and reporting.
    -a- Number of ETL jobs being executed are being identified
    -p- In the first phase, it will be seen if there are any ETL jobs that are executed during the normal working hours. These will be scheduled for out of office hours
    -p- In 2nd phase, ETL jobs should be planned to work with secondary DB...SRE team should plan it as their PI work and close it

### Business Intelligence Reporting on PROD DB instead of a separate MIS data store. The situation should be reviewed and remediated urgently.
    -i- Orbit architecture does not directly support using the passive site
    -i- Passive sites are read-only but Orbit requires a schema to write reports parameters, etc. 
    -i- Vendor was unsure if this will work, we were close to the promised date of delivery so it was agreed with business that we will take up work after the go-live and reports migration is streamlined
    -d- DBA team made an attempt to use secondary. This discovery exercise needs more time as this is not a straight forward change. 
    -p-  DBA team will work on it again along with the vendor to implement passive site by June-21
    -i- MIS DB for ERP is a major undertaking and a discovery will be launched to identify what all is created 

### Actions!

