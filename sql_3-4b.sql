SELECT c.customerName, c.city, p.amount 
FROM customers c JOIN payments p
	ON c.customerNumber = p.customerNumber
WHERE c.salesRepEmployeeNumber IN (
	SELECT employeeNumber FROM employees WHERE officeCode IN (
		SELECT officeCode FROM offices WHERE country = 'USA'
	)
);
