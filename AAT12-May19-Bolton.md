#### Framework for ERP Bolt-ons

##### Background 
ERP upgrade 12.2 will bring in some standard functionality in e-Business suite of Oracle ERP. In the past, when such functions were not available in EBS, few bolt-on applications were developed to fill the gap. The plan is to use the standard functions and sunset the bolt-on application and associated artefacts. As there are multiple bolt-ons, a guideline should be established to carry the migration consistently for all such bolt-ons.

Following aspects will be considered, planned and carried for the bolt-on replacements:

_**1. Data Migration**_

Where a separate database had been created for a bolt-on, the data should be mapped to the ERP database and planned for migration. For the migration, data formats in bolt-on database as well as ERP should be documented, mapping of data to be defined and associated rules to transform data to be clearly defined.

If there are any integration artefacts created, these should be considered for deletion / re-architecture. 

_**2. Functionality**_

All key functions created in bolt-ons should be briefly mapped to the new functions of EBS. These will be validated with the user community and any gaps to be identified and taken care. If all required functions are not available in standard EBS, this exception scenario should be highlighted and assess for further actions.

_**3. User access**_

Although the user base should be common between EBS and the bolt-ons, but there may be roles and responsibilities defined in bolt-ons that are different that those in EBS. Such roles should be mapped in EBS for a smoother cut over of the users to the EBS solution post upgrade (12.2)

_**4. Technical Enablers**_

Are there any technical enablers that can help migrate the bolt-ons to EBS? If so, these should be documented and validated

_**5. Sequencing of activities **_

Migration from existing solution to EBS will be a series of steps. These steps might be common for all bolt-ons but there can be exceptions. The generic sequence should be documented along with the specific exceptions that we might foresee. This will help plan these activities, size the effort required and establish the timeline.

_** 6. Archival of data**_

Even with the all the data migrated to ERP platform, there may be a possibility to refer back to the data maintained by the existing bolt-on applications. All such archival requirements should be defined, retention period agreed with the business users and managed accordingly.


