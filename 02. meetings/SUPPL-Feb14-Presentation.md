# Supplier Master - Roadmap

### Pain Areas
* Fragmented Supplier data 
    1. Difficult to manage data requires effort and costs more to maintain
    2. Fragmented and incomplete view can lead to less effective decisions

### Gain Areas
* Supplier insights for contracting and negotiations
    1. Supplier rating based their strength and market trends
    2. Quality of relationships (rating)
    3. Predictions and forecasts of future business

## PHASE 0 - Current State
* 20+ systems host supplier master data
* Some systems send the supplier data to ERP in batches
* Audit of suppliers data is a challenge
* Implementing governance is a challenge
* Supplier self-service registration not available
* Supplier information maintained by P&L and what Finance should maintain

### Satellite systems
Oracle ERP, IMPACT, iDOC (airpas), KOFAX, AGILE, 
DMS, EFT Bolton, Ultramaine, Education Benefit System, Medical Benefit System, 
NMOS, Kelyah, RAPID, TELTRACK, dnata travel, 
EK holidays/AA systems, AIMS, CASA, CCM, DANZAS, 
EMPACS, ENGMRO, IMP, LEMAX, 
MPS, PIH, TATSH, Yalago

**Three phase approach recommended**
1. Consolidate and Streamline
    - Capture data
    - Tag data
    - Data governance
2. Cleanse and Share
    - Validate data
    - Enrich data
    - Synchronize with satellite systems
    - Forecast behaviors
3. Manage and Govern
    - Lifecyle management
    - Performance mgt
    - Prospective suppliers
    - Risk mitigation


## PHASE 1 - Consolidate and Streamline
* Capture Data 
    - Option 1. There is a single portal to capture supplier data. All suppliers must be registered via this supplier portal for the subsequent engagement e.g. Payments, contracts, etc.

    - Option 2. Data must be stored in a central repository. Any system can capture the supplier data. However, it should be sent to central repository at the earliest.
    
    - A supplier that does not exist in ERP is not considered a valid supplier to deal with. This includes suppliers without financial transactions e.g. only contracts, only inquiries, etc. 

* Tag Data 
    - Suppliers should be tagged with the relevant system (ERP, Ultramain, iDoc, etc). 
    - The tags will help to synchronize the right data with the right application

### Phase 1 steps
* Implement iSupplier
* Implement basic governance
* Tag user groups and applications
* Cleanup supplier data 


## PHASE 2 - Validate, Enrich and Share
* Validate and Enrich supplier master
    - Data verification and validation - Finance (?) owns the supplier master data and will ensure the agreed upon essential supplier data is accurate.
    - Data update - Data is periodically reviewed, validated and updated. Any updates are sent to the relevant applications
    - Supplier master data is de-duplicated (if needed) and cleansed
    - Supplier hierarchy is defined and managed for parent companies
* Synchronize with satellite systems
    - With the help of tags, the data is synchronized with the satellite systems
    - If satellite systems are allowed to capture master data, is synced with supplier hub
    - Share supplier master
* Forecast Behaviors 
    - Planned and spot reviews of suppliers master data
    - Generate graphs, analyse trends, forecast behaviors
    - Assess alignment of suppliers profile with organizational aspirations
    
### Phase 2 steps
    * Implement Supplier Hub 
    * Implement process for data validation and cleaning
    * Send master data to satellite systems using ERP services
    * Remove old mechanism of data exchange


## PHASE 3 - Manage and Govern
* Lifecyle Management
* Supplier Performance evaluation
* Governance and KPIs
* Risk Management

### Phase 3 steps
    * Supplier Lifecycle Management module implementation
    * Supplier performance management
    * Registration of prospective suppliers
    * Measure effectiveness of governance
    * Risk mitigation

