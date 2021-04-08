Related to: [[Orbit deployment]]
_______________________________________
    Meeting Prep
_______________________________________
    1. VAPT assessment for Orbit was carried out in 2019 and 2020 and results published
    2. Cyber security team has some observations that they need to clarify with Orbit
    3. There are 6 points to be discussed _ 2 critical and 3 high vulnerabilities found

_______________________________________
    Meeting notes
_______________________________________
    . Python can be invoked from the application server _ can this be disabled?
    . Can read any file _ can also read the user passwords _ ORBIT _> This issue was reported and was fixed. Why it is appearing now?
    . Multiple instances of XSS _ can inject Java script in the reporting names
    . User and passwords can be read in clear text between the server and the browsers
    . Credential must not be returned in a clear text from an end point
    . The admin can be tricked into using a URL
    . Orbit said they can restrict the token so that cookies are not submitted automatically

_______________________________________
    Actions
_______________________________________
>>Orbit> Assess the entire application for the vulnerabilities so that we could close the loop quickly
>>Orbit> Go through all 10 points for assessment
>>Orbit> Identify the time required to fix the issues
>>Orbit> Orbit to come back with an approach on Monday 1_Feb
