-- If assuming that payroll is number of people who get paid by a company
WITH c_payrolls(`company name`, `payroll size`)
AS (
    SELECT `company name`, COUNT(`employee name`)
    FROM works
    WHERE salary > 0
    -- if salary is zero, we assume employee is NOT on payroll of a company.
    GROUP BY `company name`
)
SELECT *
FROM c_payrolls
WHERE `payroll size` = (
    SELECT MIN(`payroll size`)
    FROM c_payrolls
);