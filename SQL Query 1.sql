SELECT We."Week_Number", E."Employee_ID", (Wo."Salary_Rate"*Wo."Goal") as Weekly_salary_goal,
 (Wo."Salary_Rate" * We."Work_Quantity" -  5*(
	SELECT COUNT(D."Delay_ID")
	FROM "Delay" as D
	WHERE D."Delay_Type" = FALSE 
	AND D."Employee_ID" = E."Employee_ID" 
	AND We."Week_Number" = D."Week_Number") 
	+ (CASE 
  WHEN We."Work_Quantity" > Wo."Goal"
  THEN  Wo."Salary_Rate" * (We."Work_Quantity" - Wo."Goal")
  ELSE 0
  END 
    )) as Weekly_salary 
FROM "Employee" as E, "Work" as Wo, "Week" as We
WHERE E."Work_ID"=Wo."Work_ID" AND We."Employee_ID"=E."Employee_ID"
ORDER BY We."Week_Number", E."Employee_ID"
