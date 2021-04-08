## Using APPS schema
Related to: [[Orbit deployment]]

### Reports

1. Configure Orbit Application to point to APPS schema in UAT and run the reports
2. Identify how many reports get executed out of 34 and how many have errors. Log the errros
3. Analyze the logs and get help from DBA to resolve the errors
4. Discuss with Orbit vendor to get help for resolution


### Vulnerabilities
1. Check if application admin can see the password or login as APPS user either from the application or from a tool
2. Check if the super user of Orbit application can login to the database using the APPS schema
3. Check if the super user can execute any DML commands other than select 
4. Check the users of Orbit can get the privileges of update/drop/etc.

### Access to Application
1.  If a user knows the URL of Orbit application, she can directly invoke the application. 
    This bypasses the responsibilities assigned when she access via EBS applications
2.  There should be some way to hide the URL from the users and still configure it in EBS 
3.  May be create a different landing page for the application or create an alternate URL


### POC with Sharat
* We can execute reports via connecting to APPS schema those were not running under discoverer schema
* However, during the translations, some where clause or a section of the SQL can go missing


### POC Scenarios
1. User#1 takes the role of application super user and User#2 takes up the role of a standard user. Both should try to issue a DML statement using the Orbit application. This access to Orbit application should be from EBS. 
2. User#2 should not be able to access any reports that he/she does not have access to
3. User#1, as an admin of the Orbit tool, tries to issues a DML statement or tries to login into APPS schema using the configuration information available in the Orbit application. This access to Orbit application should be from EBS. 
4. User#1 as a admin of the Orbit application server tries find the connect string of APPS schema and logs into APPS schema (DBA should have changed the password of the APPS schema already so that User#1 does not know the password)
5. User#1 or User#2 directly invokes Orbit application using its URL (not via EBS) and then tries scenarios #1 and #2

