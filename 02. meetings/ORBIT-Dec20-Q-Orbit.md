Opening - First 10 minutes for architecture discussions
Related to: [[Orbit deployment]]

Meeting Prep - Questions from War room
2.  [ ] Can we create schema's outside the ERP database?
1.  [ ] Can we point the queries to the passive database?
7.  [ ] 12.2 impact on mid-tier component
3.  [*] Schema's has to be created with the standard tool which needs outage (applicable if schema to be created in ERP DB)
4.  [*] Orbit team will work with Apurba and Obreten to answer the questions raised today
5.  [*] We will update the war room again after the questions have answers before proceeding
6.  [*] Involve vendor to see if any concerns on their end for the overall plan

Meeting notes - my questions

Q - How exactly the application connects to the DB - connect string, access to other tables etc.    
    Ans - Orbit needs meta DB custom schema, DML operations is performed (XXORB), JDBC connectivity is established through, can be stand alone outside of EBS. That is done before the application is deployed. 

    One more schema called STAGing schema is for the internal functionality - flat file loading.

    XXFO - installation the EBS site. Pre-built reports and other contents are
    deployed on this schema. Creates a new schema for custom orbit related views / pre-built.

    Application - data source - connection is established, data source, apps data source is created generally. A read only schema was created to handle the business use case. Allows to run pre-built contents. Requirements for noting using APPS as. 

    Data source provide the privileges are provided. Privilege to read the data. 

Q - How we do we deploy Orbit schemas outside ERP - separate DB, other DB
    Ans - Yes even in an SQL Server database
    
Q - Can we point queries to the passive database - while the schemas are in the active database
    Ans - Yes, the system only requires only a data source name
    Sharat - No DML operations are carried out when running the reports, but app initialization are done. 

    Apurba - If you don't have DML access, can we run the report? you can only execute SQL select statements. There is a custom package, from where calling Oracle API, Oracle creates temp tables. AMPGLOBAL package is called ??  If this an EBS reports, Orbit contents populates the custom data in their schema. 
    Temporary tables are supported on passive but the data will be held only for the session.

Q. What exactly will be executed in a sequence for an EBS based report. 
    EK DBA team will create a new read-only DB and will try to access it from Orbit
    Oberten - Is Orbit calling EBS procedures or firing SQL queries? 
    Ans - Yes

Q. Apurba - Do you depend on the EBS session information
    Ans - Yes, however Orbit team will look into the current problem where termination of EBS session seem to have no impact on the Orbit session

Observations
    ISSUE -> There seems to be an issue with the user access on the data.
    Orbit works on the user level access. If there is no responsibility associated, the user has access, he can still run the reports.

Actions 
DONE!> EK Team - To create a passive database and try 
DONE!> Orbit - will provide the sequence of execution
DONE!> Orbit - should sync with EBS session 
DONE!> Orbit - check with their clients if they used passive side

