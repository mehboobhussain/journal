Related to: [[Orbit deployment]]
Meeting Prep
    1. Notes in the brown diary 
    2. 2 out of 3 schemas can be moved out of ERP database 
    3. However, the main schema containing major activities will remain in ERP (Data source)
    4. Using passive database may not be as simple as just reading the data. Orbit uses EBS packages that creates temp tables / data

Meeting notes
    * DBA will not allow introduction of a new product in ERP environment, specially active database 
    * DBA will take 6-7 days to create a passive environment + 2 days for storage procurement
    * Once the current issues are resolved, we might be able introduce reports one by one

Course of action - [A] not accepted
    1. Stringent testing in non production to simulate the load
    2. Gradual migration to new reports with monitoring
    3. Send action items to Orbit team

Actions-done
DONE!>   Can we give these requirements to Orbit and ask them to make it work?
