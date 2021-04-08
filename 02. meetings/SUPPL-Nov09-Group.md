---------------------------------------
    Meeting Prep
---------------------------------------
    - Go through the analysis done by Fiona, have an architectural view on it and discuss how to proceed

---------------------------------------
    Meeting notes
---------------------------------------
    1. Not only the purchase order based suppliers but all others too
    2. Can Oracle iSupplier be the master
    3. Should we have only one entry point for updating the supplier masters? 
        People had a view that multiple entry points can mean multiple data copies of the supplier. 
        Actually, we can have multiple entry points but still a single supplier master view that gets updated regardless of the entry point
    4. Not just payments but master data for Finance (accrual and payments)
    5. various views of suppliers and their engagements and payments can be different
    6. 104 billion AED worth can have a good business case for having a proper master

---------------------------------------
    Actions
---------------------------------------
    DONE!> Create a high level view that is self explanatory - specially the arrows going should be labeled
    DONE!> Check if Oracle iSupplier can become a supplier master hub - can it have all the supplier data and it can provide different views to different stakeholders
