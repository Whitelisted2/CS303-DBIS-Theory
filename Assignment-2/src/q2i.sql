WITH c_averages(`company name`, `avg_salary`)
AS (
    SELECT `company name`, AVG(salary)
    FROM works
    GROUP BY `company name`
)
SELECT `company name`
FROM c_averages
WHERE `avg_salary` > (
    SELECT `avg_salary`
    FROM c_averages
    WHERE `company name` = "First Bank Corporation"
);
