WITH c_empl(`company name`, `num of empl`)
AS (
    SELECT `company name`, COUNT(`employee name`)
    FROM works
    -- if salary is zero, we assume employee is NOT on payroll of a company.
    -- *BUT they are still an employee of the company.*
    GROUP BY `company name`
)
SELECT *
FROM c_empl
WHERE `num of empl` = (
    SELECT MAX(`num of empl`)
    FROM c_empl
);