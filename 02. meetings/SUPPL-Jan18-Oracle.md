---------------------------------------
    Meeting Prep @ Mon 18.01.21 
---------------------------------------

Questions form Emirates
    Q. How can the suppliers register themselves with the minimal information required by Emirates
    -- Yes, ANSWERED --
    Q. Does number of suppliers being registered impact licensing of iSupplier in anyway?
    Q. Is there a workflow for the approval of supplier registration? Segregation of approval workflow based on supplier category DOC/Non DOC/Hotel/Engineering etc ?
    -- Yes, ANSWERED --
    Q. Can we mandate master data entry for some fields? Is this configurable by country (something mandated in one country may not be mandatory in another country ? Example Bank related or Tax related
    -- Yes, ANSWERED --
    Q. Will data be validated during data entry by supplier? e.g. IBAN validation, SWIFT Code, Tax registration number (country specific) etc.
    -- Yes, ANSWERED --
    Q. How does iSupplier maintains the phases or stages of relationship management 
    Q. Can the termination of relationship be recorded with the reason and notes ( Workflow ?)
    Q. Can a supplier be blacklisted/Put on hold for payment/invoice processing? Or white listed? How does it impact the transactions and access to iSupplier
    Q. Can the iSupplier be accessed by our international offices and partners?
    Q. What kind of supplier analytics available directly from the system and what kind of reporting is possible?
    Q. What kind of information is supported by and maintained e.g. Production site info, banking info, payment history, response to requests history, shipment details, SLA, etc.
    Q. What about non-PO based suppliers? Can the suppliers be maintained without any financial transactions, invoices or payment history? What about suppliers who have a contract and then invoice based on that (no PO)? What about suppliers who have a contract and are just paid based on agreed timelines (no PO, With or without  Invoice, just contractual pay outs - e.g. Aircraft finance - need to re-confirm this use case)
    Q. Can suppliers upload invoices through iSupplier?
    -- Yes, ANSWERED --
    Q. Can suppliers interface invoices from their AR systems / modules to our iSupplier? This question applies regardless of whether the supplier uses Oracle ERP (iReceivables, AR) or some other receivables management system or module. / Bulk invoice upload automation ?
    Q. Can suppliers check the status of their submitted invoices on iSupplier? PO-GRN-Invoice matched? Paid? Outstanding balance? Aging, history?
    Q. How is the access to supplier information managed?
    Q. What are various user roles supported to manage supplier information - different types of contacts within a supplier
    Q. Is there any API or Service that could be called by authorized application to register a supplier?
    Q. Can authorized applications get the supplier data to synchronize it with the local supplier masters? Can particular fields be synchronized? Some systems may require only partial data from the full supplier data
    Q. Are there any restrictions on supplier data management?
    Classification of supplier - available for tender, supplier registered for payments, status
    Q. What are the other features and functionalities available in iSupplier that we have not covered - full range of functionality in the product
    Q. How does consignment inventory work? Workflow and functions
    Q. Can non-PO invoices be interfaced to other systems (example iDOC) ?
    Q. Can iSupplier support XML format for invoice upload?
    Q. Is invoice approval workflow available for non-PO invoices ?
    Q. Can more than one bank be maintained in suppliers master?
    Q. Can Routing bank details be maintained ?
    Q. Can different contact details ( based on function like procurement , finance ) be maintained ?
    Q. How does Tax applicability (VAT/WHT) is taken care ? 

---------------------------------------
    Meeting notes
---------------------------------------

    * Demo from Oracle, Paul Roy was the presenter. Others from Oracle were Berkay Alper 
    * Fiona - what are you showing? iSupplier or Supplier life cycle management module. Oracle is presenting supplier life cycle module. 
    * First show us the iSupplier as we want to see what is possible with iSupplier alone
    * Suppliers access is browser based. All they need is a user name and a password
    * They can see PO they have with Emirates. The structure of information can be modified, view of PO number, level of revisions, releases against each PO, receipts against releases, notifications
    * Fiona - what kind of data a supplier can manage? Supplier name, attachment they provided, company profile, principal name. Any information can be enabled or disabled for the suppliers
    * Fiona - can a vendor as for a change in the information structure? Yes, workflow approval mechanism can be put in place. All the fields are configurable
    * System allows the vendors to create shipment notices, it can be an advanced shipment notice as well. Vendor can see billing notices. Vendor can attach quality related information or compliance related information
    * Vendor can also add additional services provided along with the standard information about the work order. What was the original order and what was delivered, etc.
    * Tej - Can we capture tax related information? Yes, there is a configuration (UAE localization), then it can be made available
    * Fiona - Using iSupplier, we can set up a form for the supplier that they can enter and maintain. We can switch on / off the workflow.  Oracle confirmed this is correct understanding
    * Umer - If supplier is in another country then based on their country, can the fields be enabled automatically.  Localization is linked to the country. Oracle confirmed it is possible. 
    * Three ways of supplier registration - through a web link, register on supplier's behalf, supplier can access from the outside
    * Duplication / de-duplication rules can be configured
    * Two or more suppliers can be merged - their invoices, purchase orders etc. 
    * Supplier can be put on hold, supplier can login but not able to do any transactions
    * Only payment on hold but do other operations like book the invoice, etc. 
    * Seeded functionality - supplier can enter transactions from their side or we can use the loader program to load the invoice on their behalf
    * Non-PO invoices are not allowed
    * What if the invoice is captured from Payable - it will show in the suppliers
    * Majority of the scenario are non-PO. This should go through but Oracle will confirm. 
    * Can we load PDF format? Yes that is possible
    * Umer - If the supplier is using EBS, is there is a possibility of seamless integration?  Shipment information can be captured directly - that level of integration is not possible (probably due to security)
    * Tej - Bulk invoice upload - yes that is possible. 
    * Tej - Multiple bank accounts data - yes that is possible
    * 
    What additional to Life cycle management
        What we have seen is that supplier is already on-board then iSupplier is useful. You have the ability to registered.
        If you want to ask suppliers to go through a process, risk assessment,
        supplier profiles, products and services catalogs, performance of the supplier, etc are handled in the supplier life cycle management module.
        Data quality of the vendor, documentation from the vendors are part of life cycle are management. Quality of the vendor related data is assessed and managed through the life cycle module. Added google type search in the life cycle module


---------------------------------------
    Actions
---------------------------------------
    DONE!>    send the technical questions to Paul instead.  
