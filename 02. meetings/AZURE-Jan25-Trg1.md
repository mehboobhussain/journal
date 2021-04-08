---------------------------------------
    Azure Fundamentals - training day 1
---------------------------------------
    * 56 regions around the world - solution should be placed closer to the business
    * ddos - distributed denial of service - attack to flood with so many
      requests that the genuine requests cannot be serviced
    * Economies of scale - 
    * Shared responsibility
    * Elasticity is dynamics of services
    
    AZURE CORE SERVICES

    * Geographies contain regions
    * Regions are collection of data centers - on an average 16 data centers
    * Customer chooses the regions
    * Every regions has a pair - 300 miles apart
    * Fail over capacity to the pair before we go to the other region
    * Regions are not updated at the same time
    * Zones and sets are designed within a region where the virtual machines
    * Availability zones are powered independently, physically protected
    * Zones are independent, customer 
    * Zones live inside a data centers
    * 5 fault domains inside an availability zone
    

    * Creating a virtual machine - 
    * Scale sets - 
    * Content delivery network - moving the contents from one region to
      another network
    * Express route is the direct connection to Azure and can be expensive
    * High speed dedicated network and can cost about 50k $ per month
    * BLOB - unstructured data  - Cosmos database can handle 
    * Storage account - IaaS, PaaS. IaaS has disk storage.
    * SMB relates to files
    * Something that does not change for more than 30 days, should be moved to
      cool storage
    * 3 copies are created are placed in 3 different regions
    * 3 copies are moved to peer region - when choosing redundant storage
      (GRS) Geo zone redundant storage
    
    NETWORKS
    * Rule 6555 deny - if you are not sure deny
    * Net-watcher is the tool to analyze the security
    * Rule should deny before allow
    * Rule numbers matter, lower the number, higher the priority
    
    RECOVERY
    * You can keep your passwords and other important keys can be kept
      secret in the key vault
    * Azure information protection (AIP) - 
    * Azure advanced thread protection (ATP) evaluates your usage
      patterns and will force a two factor authentications if required
      e.g. Trying to access a secure server, login from a new place,
      etc.

    GOVERNANCE
    BLUEPRINTS
    * Control billing and subscriptions
    * Each subscriptions can manage access control - sub for
      development and production etc. 
    * Tags are used for billing each department or projects
    * Azure monitor collects and analyze the data, you can set up
      alerts with actions groups
    * Azure advisor - analyses and advised the actual usage of the
      server. 
    * Trust center - you can download the compliance document that
      shows where a specific compliance is application (on which
      services)
    PRICING and BILLING
    * Billing is different for individuals and enterprises and
      partners
    * Cost of virtual machines varies based on the OS they host and
      location
    * Prepayment can reduce costs
    KNOWLEDGE CENTER
    * 
