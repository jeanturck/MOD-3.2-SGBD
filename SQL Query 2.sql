Select E."First_Name", E."Last_Name", E."Entry_Date", W."Work_Type"
from "Employee" as E, "Work" as W
Where E."Work_ID"= W."Work_ID" 
AND age(E."Entry_Date") > make_interval(3)
AND W."Work_Type" = 'day'

