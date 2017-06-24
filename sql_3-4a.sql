SELECT c.CustomerName, c.city, p.amount
FROM customers c, payments p
WHERE c.customerNumber = p.customerNumber
AND c.salesRepEmployeeNumber IN (
	SELECT employeeNumber FROM employees WHERE officeCode IN (
		SELECT officeCode FROM offices WHERE country = 'USA'
	)
);
