## Meeting with Alex
Related to: [[AAT12 - Fin and P&L]]

[Business directly accessing ERP Prod DB for running queries. Review this and work towards reinstating the right DB Access Control policies urgently.]
    * There are schemas which were created for applications to read ERP data (e.g. APPS_SELECT). Over a period of time, business users specially BSG teams got access on these. They create queries using these, fine tune the queries and then create reports based on these queries.
    * During Orbit implementation, principle of least privilege is being implemented to provide minimal access
    * After implementation of Orbit and conversion of existing reports, Oracle Discoverer will be shutdown and relevant access privileges associated with Discoverer will taken away. 
    * That will cover finance and P&L. However, if other users also have similar privileges (HR, TRIPs, etc.) these should be identified and removed
    * DBA team will start/have started logging the queries on ERP database
    * DBA will analyze the source of the queries. All queries not initiated from the applications will be filtered and analyzed
    * With the help of TPO team, a communication will be sent to business that such access will be removed
    * With the help of SRE team access that is not required will be identified 
    * DBA team will remove the access - SRE will handle exceptions if a privilege had been taken away but is really required

[Business Intelligence Reporting on PROD DB instead of a separate MIS data store. The situation should be reviewed and remediated urgently.]
    * Currently Oracle Discoverer is being used for reporting - works on primary instance of production environment
    * Creating an MIS store to duplicate ERP data is a significant undertaking. Instead, the reporting should point to secondary DB
    * Orbit will replace Discoverer. The vendor does not have out-of-box solution for using secondary DB
    * DBA team made an attempt to use secondary. This discovery exercise needs more time as this is not a straight forward change. 
    * DBA team will work on it again along with the vendor to implement passive site by June-21

    * MIS DB for ERP is a major undertaking and a discovery will be launched to identify what all is created 

[ERP Database being used by many other HR systems that put additional load and indirectly impact performance. ]
    * Identify HR applications using ERP database
    * Rationalize the usage 
    * Identify any duplicate functions or obsolete functions - remove
    * If any application is exchanging large amount of data (thousands or records) online, assess if this can be done off office/peak hours
    * When the bolt-on get converted into product features, some of these applications will disappear


[DB Links for synchronous real-time transactions should be discontinued. We must follow the architectural guidelines here.]
    1. DB Links are not recommended for updating remote database
    2. DB Links result into strong coupling of databases, a change in source DB will invalidate calling function
    3. An issue from sour DB or network clog can bring calling DB down

    However, alternate to DB links are either ETL jobs or TIBCO pub-sub, etc. Which need changes in one or both databases. This effort cleans up the landscape but does not add any immediate business value.

    Recommendations:
    * Do not create new DB links and plan to exchange data using other technologies that encourage loose coupling
    * Do not use DB links to update data on the target database
    * Do not use DB links to exchange large data volumes e.g. more than 100 records

    What about existing DB Links
    * DBA should identify DB links and analyze the source applications (done for ERP?)
    * Source application owners to validate if the architecture recommendations are not violated
    * In case of violation, a corrective action plan should be executed as part of the PI

>>DONE> Coordinate with Ashwani on identifying DB links that are used for heavy transactions

[ETL jobs being executed on prod DB. This should not be the case and we should use standby Database for data extraction and reporting.]
    * If an ETL job is running during working hours, it should be changed to run off working hours
    * ETL jobs should be planned to work with secondary DB...SRE team should plan it as their PI work and close it

>>DONE> Coordinate with SRE team to run these ETL jobs in off work hours

