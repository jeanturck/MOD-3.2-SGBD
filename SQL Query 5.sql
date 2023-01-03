Select E."First_Name", E."Last_Name", age('2021-12-31', E."Entry_Date")
FROM "Employee" as E
WHERE age('2021-12-31',E."Entry_Date") > make_interval(1)
AND (SELECT DATE_PART('month', E."Entry_Date") as week) = 12
ORDER BY age('2021-12-31', E."Entry_Date")

