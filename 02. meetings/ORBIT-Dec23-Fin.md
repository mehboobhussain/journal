Related to: [[Orbit deployment]]
### Meting Prep
    1. New observations made post ERP upgrade process
    2. Dont want to introduce new performance issues
    3. Reduce load on the ERP database, tables, SQL, schemas
    4. Suggestion to point reports to the passive database 

### Observations
    1. It does not look like that we can use Passive database, due to the fact that same user is querying and updating database
    2. However, we can try this with DB links 

### Done already
    1. Provide view on slow ramp up 
    2. Check with the vendor
    3. 

### Meeting with Meenal
    1. The way the query are written can cause problem
    2. The problem cannot be produced in non product
    3. Apurba is trying to tweak - allow him to do POC
    4. What is your approach to only active databases - not a problem
    5. 

### Architecture diagram
    1. What is required from the vendor side? for our set-up?
    2. What exactly we are going to do?
    3. Should we install all the schemas to be installed in [Active] database

#### Set up in Emirates:
    - ERPVTST is the environment (schemas have been installed here)
    - ERPSTAGE is new passive environment (new schemas to be installed)
    - Export / Import is not possible
    - Create a new schemas in ERPSTAGE (like a fresh installtion)
    - ERPVTST will be refreshed and everything has to be re-done
    - Packages will be installed in ERPSTAGE environment
    - Create data sources 
	- In parallel what vendor can tweak to their architecture?

### Summary:
	DONE!!> ERPSTAGE database will be created as active and there will be a passive DB instance of ERPSTAGE 
	DONE!!> 4 schemas will be created in active DB and these sync to passive DB with ADG	
	DONE!!> Orbit application will connect to Passive DB to run the reports
	DONE!!> To update configuration tables of Orbit (in Orbit schemas), a DB link will be used from passive DB to active DB.
	DONE!!> After this testing will be carried out to ensure the set up works

