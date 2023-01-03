SELECT We."Week_Number", E."Employee_ID", E."First_Name", E."Last_Name", E."Entry_Date"
FROM "Week" as We, "Employee" as E
WHERE (CAST(LEFT(CAST(We."Week_Number" as TEXT),2) as INTEGER))*100 
+ (SELECT DATE_PART('week', E."Entry_Date") as week)= We."Week_Number"
GROUP BY We."Week_Number", E."Employee_ID"
ORDER BY We."Week_Number", E."Employee_ID"

