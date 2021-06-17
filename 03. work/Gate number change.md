## Gate number change 

Meeting with DA 16-Sep
* There will be two control rooms
* One in EOC where business will sit along with Yusuf
* One in DA offices in T1
* Time windows 10:45 - 11:30
* Share the final list of systems to DA - Done


Meeting with DA 10-Sep
* In worst case scenario, what if we have to revert back to old gate numbers
* Teleconferencing facility - confirm
* When will MACS and associated systems will have new gate numbers?
* Share which systems are actually going through change
* Impact of change on staff allocation - how will this be done
* Internal mock run to test change scripts

* EKAS does not want the gate numbers to be printed - 

11:00 - Start working
11:30 - Systems updates
11:45 - Confirmation 
12:00 - Complete


=> Should have informed change management team in advance (Paul stump)
=> Should inform TOC (Help desk) in advance so that they are aware
=> Inform all BITMS and ASMs about the change to avoid any surprises

* Change in data archival in EKAS system, selected dnata systems. BELT?

10:45 - RTC (EKAS and dnata users) start changing the gate numbers in RTC base data editor
10:50 - DMIS to publish expected flight number where gate numbers will be changed - to ALL involved
11:00 - DMIS stop publishing the gate number
11:00 - DMIS promotes the scripts for RTC
11:05 - DN RTC changes promote for SPHL DB
11:05 - EK RTC changes promote
11:05 - AACS updates the master
11:05 - Opera updates masters
11:10 - DMIS updates the mater table for gate/bay number
11:15 - DMIS starts publishing the new gate number
11:15 - Marhaba promotes the static page with new gate numbers
11:20 - AACS, Opera, Marhaba confirm change successful and new gate numbers
11:20 - EK RTC business completes changes in base data editor
11:20 - DN RTC business completes changes in base data editor
11:20 - DN RTC restart SPHL (manual) and confirms OK
11:30 - DN RTC auto restart flight based
11:35 - DN RTC, EK RTC confirm new gate numbers reflecting in the system
11:30 - EK RTC auto restart of processes
11:35 - EK RTC confirms desk number are updated from GUI
11:30 - 11:45 - ALL remaining systems confirm new gate number are reflecting in their systems - email
11:30 - 11:45 - Inform DOCC, EKAS, Piyal, Manoj, Graham, LLoyd, Rabih
11:45 - Change confirmed and completed


[Observations on Mock run in live environment - 3-Sep]
* When DA creates a flight in their system, it does not flow to DMIS. The flights have to be created in DMIS and MACS respectively.
* A change in the gate / bay number flows to DMIS (via ARINC) but it is not displayed automatically due to operational reasons. However, DOCC of dnata can see the information received from DA and they can mark this info to be displayed in DMIS.
* dnata creates the flight in DMIS both OAL and EK (EK1999 and JU777T). dnata created FZ9998 flight in DMIS as well without any bay numbers. The bay number changed by
* EKAS created Emirates flight EK1999 in MACS

** Gate/bay number changes of the test flights did not flow from DA to DMIS - This needs to be looked into. Therefore the tests only proved that data flows from DMIS to other EGIT systems. 
** New gates and bays were not loaded into DMIS. This is planned for 18-Sep. This was not the understanding of dnata and EKAS and when they tried to change the gates/bay, they faced problems. However, if the gate/bay numbers are added in DMIS, users should be able to change these.  

* RTC system was not tested in production. The information was copied in acceptance/staging area and was tested successfully. The reason for not testing in production is that RTC needs a promote to link DMIS to RTC which is planned for 18-Sep. This has been tested in IT and should not have any issues on 18-Sep.
* There were no negative impact on any of the applications due to this test. No incident were reported.

[Systems - Data from DMIS and MACS to other systems] 
MACS, DMACS GUI, DMIS, FIDS, DA, AACS, RTC, BELT, MARHABA, NOMAD, DACS+, SKYCHAIN, OPERA, EGDS - OK
SKYWARDS, m-Catering, ACARS - Not impacted, can be taken off the list, 
CORE/Appolo - Not tested as we cannot create test flights. However, this has been tested in non-production environment
ABI - Offline reporting system, not tested. But it will get the data from DMIS post 18-Sep

 [Observations from Mock run 1] 
* Flight number, destination, gate and stand number to be sent to the the PMs
* TIBCO, SITA, MQ topic details to be sent along with the information so that they PMs could subscribe to it
* Appolo and Core could not pick up dummy flights, they need real flights
* DACS+ uses MQ/SITA interface so the flight should be published on MQ/SITA as well
* MACS has no dependency on DMIS, it has dependency on RES
* OLCI, SSK, DMACS GUI has dependency on MACS. If flight is in MACS, then no issues.
* It took more than 2 hours instead of 30 minutes to complete the exercise
* BELT receives the data from a TOPIC in TIBCO (DNATA.AACS.FLIGHT_INFORMATION)
* 