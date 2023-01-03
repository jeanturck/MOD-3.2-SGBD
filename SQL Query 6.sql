SELECT E."Employee_ID", E."First_Name", E."Last_Name", age('2021-12-31', E."Entry_Date"),
(SELECT TRUNC(CAST(Wo."Goal"*Wo."Salary_Rate"*4*(
EXTRACT(MONTH FROM age('2021-12-31',E."Entry_Date")))/12 
as INTEGER),2)) as grant_value
FROM "Employee" as E, "Work" as Wo
WHERE E."Work_ID" = Wo."Work_ID" AND age('2021-12-31',E."Entry_Date") < make_interval(1)
ORDER BY E."Employee_ID"

