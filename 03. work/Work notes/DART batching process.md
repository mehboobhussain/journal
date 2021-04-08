## DART batching process

INPUTS
------
 We will have the transfer bags and check in bags (BHS) info in the form of BPMs 
BELT will record this info
* Confirm that BELT receives all the data from BHS
Model will work on forecasting of check in bags

? Geographical locations  T1, T3 and T3
? Scope = Is it for EK or all the airlines? 
? What will be the source of the data for passenger info - MACS? vMUSE?
* We need to build a flight profile e.g. passenger check-in profile
? How to profile a flight?
     * Passenger by class 
     * Origin and destination

USE CASE 1 - Baggage arrival profile
* Transfer bags - depend on arrival flights - passenger info available D-6 or D-8 hours
* Check in bags - 
* We need to build a flight profile 

THREE STATES - FORECAST, DETERMINE and REGISTER

? Do we know what type of ULDs will be there in the flights
? Is ONE batch = 35 / 40 bags

? Should we batch and release existing bags in the BHS
* Batching and release be two different activities
? When will be the ULD available? this will determine the release time of the batch
*** Build a base diagram to run the use cases - Components are incoming flights, check-in, BHS, carousal
* 
? How can we use the simulation system - 
* System should be configurable to run for a specific flight for a set of flights or all flights
* Two use cases for the belt stuck up or bags rerouted to a different belt
* 

PHASES of the BATCHES - DEFINE, BUILD, RELEASE


?? If EBS is full, can the system create batches of the bags? i.e. where the batches will be actually created? are the batches a logical entity and by providing the tag# of a batch, BHS can group these bags and send to the carousal?

?? How will DART know if a carousal is overloaded or running on its full capacity? Do we have data in BELT? we need to know both incoming and outgoing bag information for each belt.

** Batch should be created on real data instead of forecast data. i.e. when the bags tags# are determined.

** Batch creation should be for a flight with ETD in view

?? If the bags are missed form a flight, how should these be batched? or not batched? what is the use case for these bags?
?? Can we get a map of BHS with EBS capacity, time of travel for the bags, etc.

CASE - Load balance of carousals

CASE - Incoming flight delayed - close to departure, far from departure

CASE - Fault in BHS - if the fault is in paths, DART does not need to do anything. If the problem is with the carousal, it should be re-allocated

CASE - Path from one EBS to another is broke : What should DART do?

?? When will ULD become available. DART should create batches only after the ULD becomes available

?? How the forecasting will be done. Will this be some number provided in the system to be used as a parameter? or DART is expected to calculate forecast on a frequency.

? Should DART provide ULD requirements, on which data? Forecast, determined, actual. 
? How much time is required to make the ULDs available to the right carousal. After providing the ULD, someone need to confirm it to DART

? If EBS capacity is not full, send batches to EBS, else send these to BELT. or better yet, take no action until EBS is free.

? Statistics required for no of bags by class, by carousal, by hour

? Need to visit baggage area

* A batch is a logical grouping of the bags
* The bags may be stored in different storage areas withing BHS
* There is no guarantee that the bags can be sent to on EBS
* There is no guarantee that the bags can be sent to a carousal at the same time. out 35 bags, may be 20 are sent within 15 min, 10 are sent after 25 minutes and 5 are sent an 40 minutes later.

what if the batch 

