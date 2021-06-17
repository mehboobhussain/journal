Ultramain workshops - Integration Manager

- any data grid containing start and end dates can be shown in the gantt chart format
    
- Action graphics = the existing application to show the hangers
    
- Can save queries with name for later use, can be run as a report for a defined period
    
- Can have multiple dynamic grids open that are refreshed with the context
    
- Credit and debit memos can be used like a regular invoice
    
- \[park\] user should be able to use an existing field into any form
    
- \[observation\] most of the participants were interested in Issue/Return functionality
    
- USER INTERFACE
    
- Personal Grid
    
- Display activities as Gantt chart
    
- Action graphics - Hangers and Apron in graphical format
    
- Options on the right click including filters
    
- Pivot table and graphs out of database - live
    
- Auto run reports with schedule and frequency
    
- You can create a procedure manually or take a copy of the existing procedure
    
- The screen is split into tabs with most basic info in the main tab
    
- Sign-off by multiple people - at procedure or line item level
    

MISC.

- The ground time is shown in a different color
- If there is a ground time available, we can attach a work package to the ground time
- Can connect two events and create a Gantt chart (package) on the fly
- Can view critical path and various views of the package
- Assign staff on a package e.g. Engineer or mechanic
- On the task, clock on and clock off is possible - what about RTC?
- Can interface with ALTARS

Non-Routine tems (NRI)

- What is required for the NRI, who will fix it, time required etc.
- Digital sign off is possible by the mechanic
- Can be inspected by the engineer - what about DEWS?
- Aircraft can be seen from staff, part, equipment and package point of view
- Chat function / discussion possible
- Milestone tasks possible

UM Training: Data Interface >> 12-Feb-2018
El Engineering Discovery center @8:30am

There are predefined views, that can be configured. If there are no views, user cannot create one
View Navigator shows all the views accessible by the user
User can create a custom view
User can apply filter conditions like last 7 days, 10 days ago, 5 days from now, etc.
Views can be used to read as well as write the data
User can decide if an additional field is required in a view
Can configure the system to issue notifications
Can help to automate the business processes
Regression testing can be automated using the tool

:: View Tool-bar::
Analytical capabilities - reporting automation, charting capabilities, Gantt charts for timeliness, pivot tables with live data
User can define reports, report elements, design elements and then save the reports for later use. it will run with the on-line data
Reports can run automatically and emailed to the users or groups
Reports can have embedded reports - can be run and downloaded etc.
Real time data analysis by making dynamic filters for the charts

::Global Filters::
Define a list of dates, parts or tail numbers etc. and store these as a global filter
Once defined, a user can create reports and graphs using this filter as a criteria

:: Database access ::
From the application, there will be no access to the underlying data tables or processes
All views are read only

Views can be merged but data access could be limited
\*\* Make a global parameters for the number of records to be displayed on a screen say 25

:: Global fields ::
At organizational level. Define global fields as system parameter. data is visible for everyone to use.
Global field can be either updated by the user or can be populated from an external source

:: Global data::
A new data structure with columns that are not existing in UM. e.g. weather data.
You can create views out of this data and then create reports, dashboards, charts, etc.

Mandatory field filters can be applied on a view so this is a default value; can be either modified or mandatory as set up by the admin

\*\*\* Some governance required to ensure the new features are not used out of context **

// DAY 2 //
Data Interchange is a part of the product just like view creator etc.
Centralized business and validation logic to ensure same transformation is applied from the screen inputs as well as interfaces
Export is always from a view. Import can be to an entry or a view

Export using flat files and XML

// DAY 3 //

/apps/jboss/jboss-eap-6.4/umv9bravo_n1/Interface/S134002/Export/ <-------------------

In the source tab, check box "Prompt for export data"
Can create translation table to transform codes

?? This location is required even if the user chooses Prompt for export. This should be fixed

?? When the RUN button is clicked, there is no response from the system. the user is unaware if the export / import is running or not

Make sure the binding is done right and number of records are < 10 when writing the query
All the data exported can be imported back in UM except Excel

For MQ, or IBM Queue, the technical guide will explain where to keep the drivers etc. if all the configurations are right,
an export will be successful otherwise, it will come back with an error.

The queue management is an external process by design
Basics of the interface e.g. using views, columns, bindings, sorting, parent-child etc. will not change. only the SOAP related technical
details are not more than 5% work. therefore, non-technical users can do all the work and then the technical teams
can help them for the handshake.

// DAY 4 //
:: IMPORT ::

Import depends on the understanding of the data entry into UM.
the user must know how views are used to create / modify and delete the records using views
The business logic layer is independent of the data input layer. therefore, the same validations that are applied during the data input
on the screen will be used for inputs interfaces

<< There is no indication that the import is in progress, only when it is done, a pop up message appears
Mapping of the input fields is mandatory
We have can have hard coded fixed values added into import process to fill the gaps if required

// DAY 6 //
:: Export with Two levels ::

while importing the record, you can define the key with which the system will find the records to update. however, you can also mention that
system should fine the key from the import data but adding "True" in the fields find conditions

// DAY 7 //
::

:Some pointers for importing:

First access the screen and views that you can use to enter data manually, including side tabs etc.
this is to make sure you know exactly what has to be imported
Try adding a new record without inputing any data, system will give you errors for mandatory fields, note these fields
Create an XLS based export file containing the data items that you want to import, this way, all the details are
created by the system and can be checked quickly for completeness.

Then, create import -> Tabs and pick up the tabs to be included in import
Important :: Include views at the level where the data is entered (it may be at the side tab level or some other level). choose carefully.
Also on the tabs screen, make sure that parent tabs are mention for the multiple level of data to match parent to child records

Go to column mapping, this is the most critical elements
first provide the sample XML file create from the export. this give a good starting point. only record is required in XML
Then select key fields from the parent view and parent XML template and map these.
Create action to try an update or an insert (with one record) and run to make sure it it working properly.
then add remaining views. if a view is a child view, make sure its key values are mapped to the parent
e.g. parent-id = child-parent-id
If relationship key is composite, then make sure all the fields are mapped properly
All the key fields should be mapped with a "True" value in "Use for Find" column, these fields will be used to identify unique records
Provide default values if the data may be missing from the source data file

Add actions for Insert / Insert and Update / Delete etc. as required.
Save and test with one dummy record in XML file to make sure controlled data updates are carried out

== Global Field = Item

//DAY 8 // 20-Feb-2018

:: XML file exported with Non-DB fields as an option in the column tab

For conditional formatting, first export using XML attributes. then while importing the file, make use Non-DB fields and do not map these
fields. however, on the action tab, create conditions for each actions and mention the condition with the field name that is required for
evaluation.

Conditional updates / delete / update - does not work with elements type in XML, must use attributes

Business functions invocation with Actions and Procedures, Non UI based function, pass the value

Reading PDF and regular expressions

// DAY 9 // 21-Feb-2018
Tagging - Once tagged, the export will work only once and will create a tagged records for the data exported
if the export is run again, there will be no data exported - system looks into the tags and if found, the data is not
qualified for export

?? When finding the view, go look into module, workspace and then the view. Note down the view name.
?? While selecting the view in export, make sure that the view belongs to the same workspace by scrolling to right in the views

?? In Views, if you click on the workspace, the sorting should be on workspace
View name is generally on the upper left corner of the entry view with a drop-down icon

?? In the Action tab, the field names are not showing up if the XML format is ELEMENT. It has to be attribute

&lt;&gt; Follow a naming convention for the exports and imports to find these easily later on e.g. <imp/exp&gt;-&lt;source/destination system&gt;-description
<&gt; e.g. imp\_core\_flt_sched etc.

To find about the export / import status, go to administration module -> Batch Task Log Tab. Then filter on task name and enter partial name

\[Scope\]

- Scope with the module and function names should be part of the SOW
- All on-going work should be done on both v8 and v9
- How to switch over will be a risk and need to be designed
- Any new integration in v8 should use v9 integration manager platform
- System parameters for v9 should be part of the implementation project
- Training - train-the-trainer for each module. will it work for us?
- Scope for 150 users of Engineering
- Testing methodology e.g. 100 synthetic transactions to check the entire system

\[Risk assessment\]
All V8 modules to be available in V9
Speak to Pradeep Nishant
Which modules to be included at a high level
Reporting and Integration layers
Database migration - out of scope for this exercise
Interfaces - incoming and outgoing not to be interrupted

1-Pager to go to the vendor = week after 18th of May

Marjan and Pradeep - business support group

What are the gaps between V8 and V9 - a high level view with some explanation by Mid June