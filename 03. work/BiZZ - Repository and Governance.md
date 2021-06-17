BiZZ - Repository and Governance

1. Use of Sandbox
This should be minimal and temporary. 
The admin should be able to delete all contents of sandbox without giving any notice
No objects from sandbox should be referred to any other model or view
all objects in the sandbox should be prefixed by @ to identify that these should not be used anywhere

2. Use of TEST repository
TEST repository should be built from Production every month
Nothing in TEST should be of permanent nature so that monthly refresh could be applied - exception to be dealt with
Any new concept that is yet not finalized e.g. WAF or Kibana or new dashboards, new metrics, dashboards, etc. should first be tried in TEST repository
TEST access to be give to all architects to try their ideas and learning etc.
All folders in TEST should be read-write, no restriction should be applied - it is like a large sandbox
Only one TEST repository should be active at any given time, if a refresh is pending due something that cannot be deleted in TEST,
that exception should be handled 
TEST will have data and time of creation and should be done by the admin - Maha for now

3. Use of Projects.
There is an overhead of using project as architects have to apply update and contributions
A communication to be sent out that all projects will be merged into the main repository but the project structure will be maintain
also the user access should be maintained. Architects should be granted privileges on the folders that have now in their projects
On the cut off date, contributions from the projects should be applied to the main repository and project should be closed
There should be a date by when the project are deleted and removed from the list of available projects
Effectively there will be two repositories left - production and test
Any sites that were created directly on projects should be re-created 

4. Use of Directory structure
The usage should be reviewed and decisions made to keep objects in level 1 and level 2 folders etc should be re-considered
We should take a back of the production repository in case something unpleasant happens and we have to rever to the original repository fully or partially
If required, the objects should be moved to the right folders and cleaned up
Every directory should have the right and relevant objects in it and all objects that were creatd as test or are abondonded now should be remove
