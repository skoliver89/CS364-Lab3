SELECT e.employeeNumber, e.firstName, e.lastName, 
	c.customerName, c.phone 
FROM  employees e
JOIN customers c ON e.employeeNumber = c.salesRepEmployeeNumber
LIMIT 20
;
