SELECT * FROM employee e 
LEFT JOIN department d ON e.departmentID = d.departmentID
UNION
SELECT * FROM employee e
RIGHT JOIN department d ON e.departmentID = d.departmentID
;
