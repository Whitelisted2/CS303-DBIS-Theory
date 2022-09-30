UPDATE works
SET salary = 1.1*salary
WHERE `employee name` IN (
    SELECT `manager name`
    FROM manages
)
AND `company name` = "First Bank Corporation";
