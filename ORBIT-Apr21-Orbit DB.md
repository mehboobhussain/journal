#### Meeting Title: ERP and Orbit DB 
Held on: 21-Apr-21 @ 09:30 AM

##### Key Points:
1. Assessment of Pros and Cons of a separate Orbit DB
2. Architectural recommendations and design gate 
3. Use of APPS schema by the business users

##### Meeting notes

[Orbit DB benefits]
- Orbit becomes an external application (however, a schema will be needed in ERP DB)
- reduced dependency on future upgrades 
- Use of passive site for reporting 

[Work required for implementation]
- Cost of 2 additional servers for the database
- Set up of servers in fault tolerant mode in data center
- Schema changes required from ERP to new databases
- Set up the new environment in non production 
- Get acceptance from DBA / security (database hardening, etc.)
- Orbit admin related changes to point to the new schema (light work)
- Some testing will be required to ensure the new environment is ready for use
- For short term, a passive database server to test the set up 
- Data migration from existing UAT to new the database
- Configuration changes in Orbit application for data sources, user roles
- A mini UAT to be run to ensure business can perform the functions in the new environment
- Acceptance into production process
- Oracle license costs
- Involvement of vendor to ensure we are aligned to their recommendations
- Backup of data set-up on regular basis
- Any additional work required that support team is aware ?

##### Actions
- Assessment of effort, cost and time for conversion
- Assessment of benefits - short term and long terms views
- Recommendations and decisions through design gate
>>Mehboob> Create the architectural diagram to reflect new set up
>>Mehboob> Send vendor hardware recommendations to Abhi

