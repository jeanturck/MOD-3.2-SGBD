Select DISTINCT We."Week_Number", E."Employee_ID", 
E."First_Name", E."Last_Name", We."Work_Quantity"
from "Employee" as E, "Work" as Wo, "Week" as We
Where E."First_Name"= 'Amy'
AND E."Last_Name" = 'Cook'
AND E."Employee_ID" = We."Employee_ID"
ORDER BY We."Week_Number", E."Employee_ID"

