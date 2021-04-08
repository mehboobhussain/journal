ORBIT related activities comitted for PI 8.5 on ERP PROD server
Related to: [[Orbit deployment]]

1. Create schemas in ERP production DB and manually register:
XXORB - Orbit application configuration
XXSTG - Orbit Report queries and metadata 
XX_ORBIT_USER - Read only schema for EBS integration of Orbit (similar to Discoverer schema). Planned to be completed by end of Sunday 20-Dec. 
To avoid downtime, adsplice will not be used. 

2. A set of scripts will be executed on ERP database to populate the Orbit metadata and grant privileges to the Orbit users using the above mentioned schemas. 

Orbit related Activity comitted for PI 8.7 on ERP PROD server

3. JSP file to be executed on the ERP application server to establish Orbit integration with Oracle EBS. Planned for 16-Jan-21.
4. Schema register with adsplice and check integrity
(Outage will be required)

