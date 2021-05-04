#### Meeting Title: Interface from iTravel to OF 
Held on: 02-May-21 @ 04:37 PM

##### Key Points:
1. Credit related issues faced by customer (Gold Medal)
2. How can the credit be shown to the customer near real time

##### Meeting notes
* The following systems are involved
    - iTravel
    - ProTAS
    - Kelya
    - Oracle Financials

* Oracle Financials (OF) has an account receivable module AR
* AR module gives a credit line to the customers
* The credit line or limit is manually maintained
* When the customer buys a service, an invoice is passed through
    - ProTAS -> Kelya -> OF (AR)
* This invoice decreases the credit limit of the customer
* This is called outstanding amount 
* If the invoice is passed but it has not reached OF yet, it is called pipeline amount
* Credit limit - outstanding amount - pipeline amount is the current credit limit
* When the amount is received from the bank, it is reconciled and the credit limit is increased by that amount
* Therefore at a given time, the customer might have credit limit that does not reflect true limit due to the transactions in the pipeline
? The manual process posts the updated credit limit on ??? frequency
* The interface between ProTAS to Kelya is online 
? The interface between Kelya and OF has a one hour frequency??
* The reverse interface from OF to proTAS is direct 
? It has a frequency of 3 hours / one day  
* Therefore, the information to PorTAS and then to iTravel can be delayed
* There is a set of API's at the Kelya level that maintains the credit
? Can the API set from Kelya can be used to provide information to ProTAS
? Can the interface frequency from OF to ProTAS increased?

##### Actions
>>Mehboob> Find out a technical person in ProTAS team to get information about the interface details specially frequency
>>Mehboob> Find out from Mahtab if the API's from Keyla can be used instead?
>>Mehboob> Find out from Savit if the manual process of AR can be automated
>>Mehboob> Find out if the OF-> Protas interface can be made near real time
