-- If Assuming that payroll is total amount paid out by a company
-- first, get total salary amt paid out by each company
WITH c_payrolls(`company name`, `payroll`)
AS (
    SELECT `company name`, SUM(salary)
    FROM works
    GROUP BY `company name`
)
SELECT *
FROM c_payrolls
WHERE `payroll` = (
    SELECT MIN(`payroll`)
    FROM c_payrolls
);
