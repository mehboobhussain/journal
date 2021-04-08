Related to: [[Orbit deployment]]
---------------------------------------
    Meeting prep
---------------------------------------
    * There are products available for reporting but Orbit was chosen as it can convert exiting discoverer reports.  This was decided more than a year back and older team members would know better
    * Orbit was supposed to be a like-to-like implementation of Discoverer.
    * Project had financial constraints so a separate DB server was not purchased (x2) to save money.
    * This resulted into hosting Orbit in ERP-FIN DB just like Discoverer
    * The product does not work with passive site out of the box.
    * Post upgrade while monitoring ERP system, it was suggested that Orbit to be run on passive site to reduce overhead on main FIN DB.
    * As the product has not been design to run on a passive DB out of the Non production set up was done using a single instance and UAT + performance testing was carried out in the same environment.
    * A POC was required to avoid surprises in production.
    * 13 of Feb technical go live 

---------------------------------------
    Meeting notes
---------------------------------------
    * What are the two issues - select any table and Schema access 
    * This conversation should have happened earlier - if we can go passive,
    * We should plan instead of discovering things
    * What is the actual go live? When 90% of the reports in UAT are okay
    * How will you feel comfortable to go live?

---------------------------------------
    Actions
---------------------------------------
DONE!> Get the technical issues resolved - select any table, privilege for schemas, access to passive site, load on the system
DONE!> Get the reporting issues resolved
DONE!> Future proofing of Orbit-Oracle system 
