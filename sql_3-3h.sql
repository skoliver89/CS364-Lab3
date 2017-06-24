SELECT * FROM department d
LEFT JOIN employee e ON d.departmentID = e.departmentID
UNION
SELECT * FROM department d
RIGHT JOIN employee e ON d.departmentID = e.departmentID
;

