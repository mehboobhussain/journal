## Meeting Title: PMS Decommionsing 
Meeting on   : 28-Feb-21 @10:00 AM

### Key points & Prep:
1. Any risks associated with the decommissioning 
2. Data access after the exercise
3. 

### Meeting Notes
* Procurement Management Approval form for P&L buyers and approvers. 
* Procurement & Logistics users will not be able to create or approve Purchase Management documents 
* Affected Users: Procurement & Logistics dept.  Location: Dubai - EGHQ
* PMA is a bolt on application of ERP. The database will stay in ERP 
* The application can be decommissioned without compromising data and documents
* Documents are stored inside the database as blobs
* The functionality is available in Zycus already
* All new approval is being done in Zycus 
* To refer to old documents and data, business will still need DB objects
? How will they get these objects if there is no application? SRE will provide?
* Fiona has to mention a date when they are comfortable for decommissioning 
* If they can migrate the documents to Zycus, it will become easier to access
* PMS related tables, access etc. Could then be removed
* The application has already been decommissioned?
* This is open for last 3 weeks, when can we speak to business and what the recommended option
* Feroz says can we move the tables into archival database
* It has some J-Foundation tables which need to moved to archival
* Lets do the remediation which means that application should removed
* Tables from APPS schema related to PMS should be moved to an isolated schema
* Application team can do that 
* If / when business needs some data / documents, support team will provide that
* Actual decommissioning will take place on a later date
* Hari will work with team and size the exercise to come up with a plan
* We need to do trial upgrades before the actual upgrade of ERP
* We have already done 2 trial upgrades
* Albin - Can we aim to close it today? Hari - by Wed, Albin - Nope

### Actions!

