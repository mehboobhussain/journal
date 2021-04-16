#### Meeting Title: MS Architecture training day 1 
Held on: 04-Apr-21 @ 09:13 PM

##### Key Points:
1. Note key learning from the course
2. Structure the notes to pass the exam
3. Apply learning back to MS Azure fundamentals

##### Meeting notes
Keys for the course
    License code:  PEHK-ALZF-CNFT-BYTZ
    Promo code:    QD1I93FVN1NYGFUTHC 

Breaks
    10.30 - 10.45
    12.30 - 13.30
    15.15 - 15.30


* On the left hand side is a bar called Hub. On the right hand side, the blades

##### 1. Implement Azure Active Directory 
    * Identity is an object that can be authenticated
    * Account is an identikits with data 
    * Azrue AS account ID created through Azure AD
    * Tenant - Dedicated and trusted Azure AD
    * Azure directory - dedicated and trusted directory
    * Subscription - Used to pay for Azure cloud services

_Subscriptions and groups_

    Azure AD Join service for SSO, axxess to MS store for business and access to on-premises resources

    To connect you need to register and join
    You can have many subscriptions in a management group and can apply muliple rules on these. We can have multiple levels of management gropus and apply various policies on these. Management groups can have their heirarchy. 

    Each subscription can have limits or quotas e.g. max 30 CPUs in a specific region

    Bills can be consolidated at the subscription level
    You need to create a resouce group to get any service. This will be under a subscription.

    Each resource has to be in a resource group
    Templates can be created for subscription max size 4 MB size

_Users and Groups_

    Identities can be accounts or from a synchronized from an on premise. Identity can be a guest users as well. 

    We create a service principal which is an account for providing services to individual identitities. Multiple directories can be shared. 

    These are 2 type of directories 
    Azure AD B2B - we do not need to manage their accounts to sync
    Azure AD B2C - Invite from 

    Using CLI, we can create groups and add users into it

_Azure Active directory protection_ 

    Atypical travel, Antonymous IP, 
    Implementaion of conditional access, signals can be received from various sources, we take a decision and enforce these policies.
    We might grant access, block access, or give limited acccess. 
    Signal > Decision > Enforcement

    We can implement MFA for individual ids, can create a policy

_Azure ID Connect Tool_

    Password hash sync
    Pass through authentication 
    Federation (AD FS)
    Active directory 
    
    Express insallation and Custom installation
    If you are working on single forrest toplogy, you can use express set up.
    Helps to implement SSO, synch and sign in

    Pass through - the credential will be send to on premise AD via Azure AD. The password has to be checked on prem not on cloud.

#### MS Azure Architecture
    https://docs.microsoft.com/en-us/azure/architecture/

_Networking Layer_
    Learnt about creating two subnets, installing two virtual machines in those subnets and created a gateway to connect these two subnets. 

    In the virtual machines, enabled connections to the other vitual machine and then could do a ping to another virtual machine

    This is a difficult topic and should be rehersed by deleting the virtual networks and carrying out the exercises again

    vnet, peering, site to site vpn, transitive connections, routing tables, remote gateways, service chaining, etc. 

##### Compute Layer
    Azure dedicated hosts
    Scale sets
    Disk encryption
    High availability

_Architectural considerations_

    First step to draw and elaborate the design of the machine.
    Consider OS, CPU, Network, RAM, Storage, GPU, data size and type, Ops, Costs, security, SLA needs, extra

    Start with the network and security
    naming of VM is very important as you cannot change this later. dev/prod/qa, location, instance #, role that it will play
    
    decide about the location of the VM, consider compliance and proximity

    Consider the regions. there are 2 regions in UAE north and central.

    If the VM stops, you wont be charged for it but you will be charged for the storage anyway.

    Senior Police Commisioned Officer [SRCO]

    Security, Resources, Costs, Operations, 

    -- Observation on cost -- storage costs are a lot more than the VM. Therefore choose the size carefully

    Go with the manual updates to avoid windows updating the OS during working time.

    Regions > Availability zones > Data centre > Racks > Machines > VM

    Logically grouping - fault domains and upgrade domains. Choose where to place the VM with consideration of fault and update domains.

    Scale up = add resources on a VM
    Sclae out= add more VMs

    Scale set provide high availability 

    Re-provisioning = removing the existing VM and deploy a new VM

    Image, ports, size, disks, tags, extension > Logically grouping that is VM scale set
    How many instances. min=2, max=10 e.g.
    Create a scale out policy e.g. CPU>70% for 5 min, add 1 VM
    Example #2, if CPU < 20% for 20 min, reduce 1 VM

    A scale set is a collection of VMs defined to scale up/down/out/in with some policies

_Implement VM Dedicated Hosts_

    These are physical servers in an availability zones. The you can deploy your VMs inside the dedicated hosts

    We can purchase this using a host group and define name, region. Each host can have multiple machines with the same type. 

    VM scale sets are not supported on the dedicated hosts

    Resource group> Host group> Hosts> VM
    Azure hybrid benefits = reusing the licenses of OS, database, WS, etc.

_Azure encryption technology_

    Storage service encryption SSE
    Cannot be disabled

    When to use encryption - data in transit or at rest

    AES - Advanced encryption system
    Helps to develop defence in depth

_Implementing Load Balancing_

    The incoming requests can be spread over multiple VMs. Reduce the number of IPs required. Having public IP with each VM is not a good architecture. Adds to security at the end point. 

    ALB = Azure Load Balancer
    Uses hash based distribution algorithm. 5 inputs to use in the algorithm. source IP, source port, destination IP, destiantion port and protocol type.

    Allows HTTPS health probes, availability ports, outbound rules, diagnostics using Azure monitor.

    Distribution mode - five-tuple has, source IP affinity, 

    -- Experiment with two VMs and one load balancer in a auto scale mode to try various combinations

_Application gateway_

    path bath routing based on the header of the client 
    Called layer 7 routing 
    WAF = Web applicaton firewall

    Multipsite routing used for multi tenant applications having their own applications. The listener will decide where to route the traffic

_Web application firewall_ WAF

    Its a stateful firewall
    Network policies can work across the networks
    Can filter fully qualified domain names FQDN
    Can alert using threat intelligence
    FW can have multiple public IP address <= 100
    FW > Routing table > Subnet > Private IP address

    Two types of security groups
    NSG (Network) and ASG (apps)
   
    

_Azure traffic manager_

    Geographic routing 
    Weighted routing 


##### Storage 

_Storage accounts_

    What needs to be stored 
    - logs
    - images
    - videos
    - backups
    - messages
    - tables

Azure storage has to be 
    Durable, secure, scaleable, accessible, managed, available

    storage for VMs - disks, files
    unstructured data - blobs, lakes
    structured data - tables, key-value

    Can be achieved by 
    - Azure containers - blobs
    - Azure files
    - Azure queues
    - Azure tables

    Zone redundent storage - 3 copies of the data stored across the availability zones

    Geographically redudent means 3x2 sets of data across the regions

    Shared access signature

_Storage security_

    - Encryption 
    - Authentication 
    - Data in transit
    - Data encryption 
    - Shared access signatures


