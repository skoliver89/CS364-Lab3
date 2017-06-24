SELECT e.employeeNumber, e.firstName, e.lastName, 
	c.customerName, c.phone 
FROM  employees e, customers c 
WHERE e.employeeNumber = c.salesRepEmployeeNumber
LIMIT 20
;
