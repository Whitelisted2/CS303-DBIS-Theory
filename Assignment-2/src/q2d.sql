SELECT `employee name`
FROM (employee NATURAL JOIN works), company AS C
WHERE works.`company name` = C.`company name`
AND employee.city = C.city;
