# CS364-Lab3
MySQL Lab 3 - Uses classicmodels DB
1. Get the employee number, first name last name of sales people for the customers they serve.  Also the customer name and phone. (customers, employees).Return only the first 20 rows. Write as an implicit join.
2. Write the query in #1 as an explicit inner join. The output should be the same.
3. More on Join Types.
 
    use simpleJoin; <br />
    show tables; <br />

    select * from department; <br />
    select * from employee; <br />

   \#a <br />
    select 'employee NJ department' as ''; <br />
    select * from employee <br />
    NATURAL JOIN department; <br /> <br />

   \#b <br />
   select 'department NJ employee' as ''; <br />
   select * from department <br />
   NATURAL JOIN employee; <br />
   \#c
   select 'employee LOJ department' as '';
   select *
   FROM employee
   LEFT OUTER JOIN department
   ON employee.DepartmentID = department.DepartmentID; <br />
   
3.1) Use the code above to get started.  Notice that \#a and \#b flip the file names around.  How does this affect the output
It swaps the order of the LastName and DepartmentName Columns. <br />

3.2) \#c executes a Left Outer Join. Create a #d that flips the files. How does it affect the output <br />

3.3)  Create an #e and #f for Right Outer Join  How is output affected? <br />

3.4) Create an #g and #h for Full Outer Join How is output affected? <br />

4. Using the classicmodels database write an equijoin returning the customers name, customers city and payment amount for all payments from companies in the ‘USA’ <br />
4.1)  Write it implicity <br />

4.2)  Write it explicity <br />

5.  The result set below shows information on offices, customers, and salespeople. The number in the left hand column represents the number of matching records for a sales person and customer.  Row 1 indicates that Foon Yue Tseng has made 4 sales to  Muscle Machine Inc working out of the NYC office.  A couple of rows down, we see that Foon Yuo has also sold two orders to American Souvenirs Inc.  Also note that there are 30 rows in the final result.  And all of the cities are in the USA.
