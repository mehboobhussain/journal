## Meeting Title: Preparation meeting for Orbit 
Meeting on   : 03-Mar-21 
Related to: [[Orbit deployment]]

### Key points & Prep:
1. Identify the risk and ownership 
2. Are we ready to meet the business and explain  
3. Anything we need to do from now to tomorrow  

### Meeting Notes
* DBA was deeply concerned about the APPS schema. They asked:
    1 Ensure vendor does not have access to the set up 
    2 Only Support team can login to the admin set up 
    3 Security team carries out a vulnerability assessment
    4 If the product is certified by Oracle
    5 Users will not able to connect to APPS schema
    6 All new reports will be created using custom schema
    7 Business owners will take up the risk 
    8   

* We still need to provide some support to the BSG and other teams
* We will have some reserved capacity in PI-10
* BSG will train the other teams - TRIPS etc.

### Update on the EFT related problem
    * Network team tried the following:
        * Check the scripts and logs
        * Checking firewall rules
        * Tracing the traffic from Dubai to DB
        * Checking if there are any packet drops
        * Checking with DB on their set up logs 
    * Network team observed that dynamic IP addresses of outgoing traffic might cause the issue. They will be using du routing instead of Etisalat for fixed IP addresses

    Recommendations from network team:
    * SFTP conduct the handshake differently and is recommended
    * 

### I need information on these items
    * What is the approach on creating new reports with custom schema 
    * How are we going to generate reports for Kaleya and other systems like TRIPS
    * 
31 are giving outputs and remaining 4 are not giving output probably no data
Some changes were required in SQL, sync with database, parameter set up changes
    * Sync database
    * Parameter set up 
    * SQL open in PL/SQL - while reporting is migrating there are missing SQL lines. 
    * Dev team can provide guidelines to run the reports and mark the reports as successful without any interference.
    * Most will be query related, sync database or missing SQL
    * All reports should be fixed and moved to production. Fixing in production is not recommended
    * For new reports, use the Orbit tool

    * DBA should restrict the queries to time out on debug schema 
    * Orbit has a time limit, what is the parameter in production. Across system level
    * Limit on row level can be set 
    -> Working with Orbit to fix the issue of getting, set up has to be fixed
    -> APPS schema can be limited to a domaino
    -> data source tagged to domain. you can run any reports from the data source, 2 domains - one for data source 1 and other other is data source 2. 
    -> For Kaleya, he has to go out of EBS and login to Orbit

    Data source name discoverer has been hard coded. There is a work around. Inside the xml file there is a name of the data source. In production it is not possible. 

    First, they will use Kaleya as the data source. Data source name is discoverer, rename it before using

    -- The problem is during the migration only --

? What can users ask us to do 
    * Run 30 more reports
    * Hand over the control to us to execute the reports
    * When you will get the security clearance
    * What is the process to 'own' the risk
    * Create new reports - using custom schema 
    * What about other systems like Kaleya?
    * What happened to the JRE issues?
    * Go through the minutes of the last meeting 

### Actions!
>>Eugenia> Engage security team to conduct vulnerability assessment

