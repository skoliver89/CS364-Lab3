SELECT COUNT(orderNumber) AS 'NumberOfOrders',
offices.city AS 'Office City', offices.phone AS 'Office Phone',
employees.firstName, employees.lastName, 
customers.customerName, customers.city AS 'Customer City' 

FROM orders JOIN customers
	ON orders.customerNumber = customers.customerNumber 
	AND customers.country = 'USA'
JOIN employees
	ON customers.salesRepEmployeeNumber = employees.employeeNumber
JOIN offices
	ON employees.officeCode = offices.officeCode
	AND offices.country = 'USA'

GROUP BY orders.customerNumber
ORDER BY COUNT(orderNumber) DESC
;
