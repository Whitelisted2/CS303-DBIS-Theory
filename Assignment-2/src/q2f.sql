SELECT `employee name`
FROM works AS W1
WHERE salary > (
    SELECT AVG(salary)
    FROM works AS W2
    WHERE W1.`company name` = W2.`company name`
);
