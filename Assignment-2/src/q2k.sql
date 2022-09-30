UPDATE works
SET salary = (
    CASE
    WHEN salary*1.1 > 100000 THEN salary*1.03
    ELSE salary*1.1
    END
)
WHERE `employee name` IN (
    SELECT `manager name`
    FROM manages
)
AND `company name` = "First Bank Corporation";
