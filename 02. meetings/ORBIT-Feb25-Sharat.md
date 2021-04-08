Related to: [[Orbit deployment]]

1. We do not want users to be able to login and access tables that they are not entitled to
2. Admin should not be able to carry out DML transactions

APPS schema is required 
How it can be controlled by Orbit 
Menu items can be given only the privileges are needed 
Admin menu can be configured from the application

End user:
1. End users can run the reports only without doing any other actions
2. Seeded contents will work as the Apps schema access is provided
3. Users cannot find out which schema they are connected to


Super user:
* No one can extract login info from the menus or screens
* Data source needs to be shared for new reports
* Users can only access based on their EBS responsibility
* During the migration process, they will need APPS access  
* For conversion, you don't need APPS access
* In order to run the report, user needs to have access to APPS
* If you login to Orbit without EBS, can we run a DML statement  
* Only select statements are allowed, no insert or DML
* Orbit to change the application so that it does not accept DML
* NO one should be allowed to directly access Orbit application
* 

IT Admin:
* Should  not be able to find any information from the configuration to login as APPS owner
* Should not be able to execute any DML statements from the admin console
