WITH managerdetails(`manager name`, `street`, `city`)
AS (
    SELECT *
    FROM employee
    WHERE `employee name` IN (
        SELECT `manager name`
        FROM manages
    )
)
SELECT `employee name`
FROM (employee NATURAL JOIN manages), managerdetails AS M
WHERE manages.`manager name` = M.`manager name`
AND employee.city = M.city
AND employee.street = M.street;
