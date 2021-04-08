Related to: [[Orbit deployment]]
Meeting prep
    Background:
        We want to make this a success story
        we have a timeline to meet - business will get busy after 1st week of
        March
        too many fronts open - we want to close and move forward
        We need your support - specially when working days are not matching

    Topics to discuss:
    1. Resolution of UAT reports issues
    2. Resolution of security concerns
        select any table - what are the min privileges required?
        Privileges of schemas - same as above
    3. Risks with passive
        Can it work? 
        Will it work better if we have a separate DB?
        Will it compromise resiliency?
    4. Risks with active 
        How does performance of Orbit compare to Discoverer
        How we can reduce the load on the server

Meeting notes
    1. Revisit grants given to XXFO and XX_ORBIT_USER - patch under
    development, Sharat to come back. Orbit is cleaning up. 
        Package are available (XXFO) will resolve the issue. Will be done
        today.
        All grants required for the XX_ORBIT_USER will be provided in a
        package. Work in progress. 
        ? What about future objects - 12.2 is covered and future updates will
        be analyzed for impact

        ? Discoverer folders 
        We could not separate out discoverer objects from Oracle objects
        Grants are missing so the reports are not running. We need to identify
        discoverer related views. EKUL_US and APPS schema for Discoverer. 

        Can we provide select all on the schema and revoke privileges which is
        sensitive

        Grants for packages ? Will that create any security issues?

        Custom schema - script to make EBS security to work - fixed the
        problem
        Query issue - that has been addressed
        > Sharat agreed in principle that we can meet on Friday or Sunday if
        > required
        
Actions
DONE!> Meeting with Abhi to understand the schemas involved in DB 
